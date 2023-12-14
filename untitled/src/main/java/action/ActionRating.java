package action;

import com.google.gson.Gson;
import dao.DAOProduct;
import dao.DAORating;
import dao.DAOUser;
import model.Producto;
import model.Rating;
import model.Usuario;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class ActionRating {

    DAORating daoRating;

    public String execute(HttpServletRequest request, HttpServletResponse response){
        String answer = "";

        String action = request.getParameter("ACTION");
        String[] method = action.split("\\.");
        System.out.println(method[1]);

        switch (method[1]){
            case "RATE":
                answer = rating(request, response);
                break;
            case "FINDALL":
                System.out.println("hello");
                answer = findAll(request, response);
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
        new DAORating().addRating(rating);
        return "";
    }

    private String findAll(HttpServletRequest request, HttpServletResponse response){
        Rating rating = new Rating();
        rating.setRatingUser(Integer.parseInt(request.getParameter("idUser")));

        ArrayList<Rating> ratingArrayList = new ArrayList<>();
        System.out.println(request.getParameter("filter"));
        switch (request.getParameter("filter")){
            case "FavouriteUsers":
                ratingArrayList = new DAORating().findFavouriteRatings(rating);
                break;
            case "HighestSells":
                ratingArrayList = new DAORating().findHighestSells(rating);
                break;
            case "FINDALL":
                ratingArrayList = new DAORating().findAllRatings(rating);
                break;
        }
//        if ( request.getParameter("filter") != null && request.getParameter("filter").equals("FavouriteUsers")){
//        } else if(request.getParameter())
//
//        else{
//            System.out.println("fghfg");
//        }

//        System.out.println(ratingArrayList);
//        System.out.println("hi");

        Gson gson = new Gson();
        String json = "";
        json += "{\"message\": \"Esto es un mensaje de prueba\",\"usersList\": [";
//      {"ratingUser":0,"ratedUser":2,"rating":3.0,"ratedUsername":"user1"},
        for (Rating ratingAux:ratingArrayList) {
            json += "{\"id\":" + ratingAux.getRatedUser() + ", \"username\": \"" + ratingAux.getRatedUsername() +"\", \"password\":\"z\", \"sells\":0, \"rating\":" + ratingAux.getRating() + ", \"imagePath\": \"" + ratingAux.getImagePath() + "\"}, ";
        }
        json = json.substring(0, json.length()-2);
        json += "]}";
//        System.out.println(json);
        return json;
    }

}
