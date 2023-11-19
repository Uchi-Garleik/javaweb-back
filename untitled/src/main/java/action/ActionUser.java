package action;

import com.google.gson.Gson;
import dao.DAOUser;
import model.Usuario;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class ActionUser {
    DAOUser daoUser;
    public String execute(HttpServletRequest request, HttpServletResponse response){
        String answer = "";

        String action = request.getParameter("ACTION");
        String[] method = action.split("\\.");

        switch (method[1]){
            case "LOGIN":
                answer = login(request, response);
                break;
            case "FILTER":
                answer = filter(request, response);
            default:
                System.out.println("wtf why am i here");
                break;
        }



        return answer;
    }

    private String filter(HttpServletRequest request, HttpServletResponse response) {
        String jsonUsuarios = "";
        Usuario usuario = new Usuario();

        /*
        *   TODO: Could maybe stablish these default values on the constructor.
        *       Not doing this yet in case it breaks it.
        *       Reminder to do this too for the products
        * */

        usuario.setId(-1);
        usuario.setUsername("");
        usuario.setPassword("");


        if (!(request.getParameter("id").equals(""))){
            usuario.setId(Integer.parseInt(request.getParameter("id")));
        }

        if (!(request.getParameter("username").equals(""))){
            usuario.setUsername(request.getParameter("username"));
        }

        if (!(request.getParameter("password").equals(""))){
            usuario.setPassword(request.getParameter("password"));
        }

        ArrayList<Usuario> usuarios = new DAOUser().findAll(usuario);

        String method = request.getParameter("ACTION").split("\\.")[1];
        if (method.equals("HighestSells")){
            ArrayList<Usuario> usuariosA = new DAOUser().highestSells(usuario);
        }

        return jsonUsuarios;
    }

    private String login(HttpServletRequest request, HttpServletResponse response) {
        Usuario usuario = new Usuario();
        usuario.setUsername(request.getParameter("username"));
        usuario.setPassword(request.getParameter("password"));
        ArrayList<Usuario> listUsuario = new DAOUser().findAll(usuario);
        String jsonUsuario = "";
        Gson gson = new Gson();
        jsonUsuario += "{\"message\": \"Esto es un mensaje de ejemplo\"," +
                "\"usersList\": [";
        if (listUsuario.size()!=0){
            jsonUsuario += gson.toJson(listUsuario.get(0));
        }
        jsonUsuario += "]}";

        return jsonUsuario;
    }
}
