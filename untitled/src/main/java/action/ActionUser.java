package action;

import com.google.gson.Gson;
import dao.DAOUser;
import model.Rating;
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
        System.out.println(method[1]);

        switch (method[1]){
            case "LOGIN":
                answer = login(request, response);
                break;
            case "FILTER":
                answer = filter(request, response);
                break;
            case "RATE":
                answer = rating(request, response);
                break;
            default:
                answer = "nothing found";
                break;
        }
        System.out.println(answer);
        return answer;
    }

    private String rating(HttpServletRequest request, HttpServletResponse response) {
        Rating rating = new Rating();
        rating.setRatingUser(Integer.parseInt(request.getParameter("idRatingUser")));
        rating.setRatedUser(Integer.parseInt(request.getParameter("idRatedUser")));
        rating.setRating(Double.parseDouble(request.getParameter("rating")));
        new DAOUser().addRating(rating);

        return "";
    }

    private String filter(HttpServletRequest request, HttpServletResponse response) {
        String jsonUsuarios = "";
        Usuario usuario = new Usuario();
        ArrayList<Usuario> usuarios = new ArrayList<>();
        String method = request.getParameter("FILTER");
        usuario.setId(-1);
        usuario.setUsername("");
        usuario.setPassword("");


//        if (!(request.getParameter("id").equals(""))){
//            usuario.setId(Integer.parseInt(request.getParameter("id")));
//        }

        switch (method){
            case "HighestSells":
                    usuarios = new DAOUser().highestSells(usuario);
                break;
            default:
                if (!(request.getParameter("id") == null)){
                    usuario.setId(Integer.parseInt(request.getParameter("id")));
                }

                if (!(request.getParameter("username") == null )){
                    usuario.setUsername(request.getParameter("username"));
                }

                if (!(request.getParameter("password") == null)){
                    usuario.setPassword(request.getParameter("password"));
                }
                usuarios = new DAOUser().findAll(usuario);
                break;
        }

        jsonUsuarios += "{ \"message\": \"Esto es un mensaje de prueba\", " +
                "\"usersList\": [";

        Gson gson = new Gson();

        for (Usuario usuarioAux : usuarios) {
            jsonUsuarios += gson.toJson(usuarioAux)+", ";
        }
        jsonUsuarios = jsonUsuarios.substring(0, jsonUsuarios.length()-2);
        jsonUsuarios += "]}";
        System.out.println(jsonUsuarios);
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
