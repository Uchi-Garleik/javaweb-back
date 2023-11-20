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
        ArrayList<Usuario> usuarios = new ArrayList<>();
        if (request.getParameter("FILTER") != null){
            System.out.println("hay filtros");
        }

        /*
        *   TODO: Could maybe stablish these default values on the constructor.
        *       Not doing this yet in case it breaks it.
        *       Reminder to do this too for the products
        * */

        usuario.setId(-1);
        usuario.setUsername("");
        usuario.setPassword("");


//        if (!(request.getParameter("id").equals(""))){
//            usuario.setId(Integer.parseInt(request.getParameter("id")));
//        }

        if (!(request.getParameter("id") == null)){
            usuario.setId(Integer.parseInt(request.getParameter("id")));
        }

        if (!(request.getParameter("username") == null )){
            usuario.setUsername(request.getParameter("username"));
        }

        if (!(request.getParameter("password") == null)){
            usuario.setPassword(request.getParameter("password"));
        }

        //usuarios = new DAOUser().findAll(usuario);

        String method = request.getParameter("FILTER");
        System.out.println(method);
        if (method.equals("HighestSells")){
            usuarios = new DAOUser().highestSells(usuario);
        }

        jsonUsuarios += "{ \"message\": \"Esto es un mensaje de prueba\", " +
                "\"usersList\": [";

        Gson gson = new Gson();

        for (Usuario usuarioAux : usuarios) {
            jsonUsuarios += gson.toJson(usuarioAux)+", ";
        }
        jsonUsuarios = jsonUsuarios.substring(0, jsonUsuarios.length()-2);
        jsonUsuarios += "]}";
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
