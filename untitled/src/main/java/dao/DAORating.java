package dao;

import connection.MotorSQL;
import model.Rating;
import model.Usuario;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAORating {
    private MotorSQL motorSQL;

    private String sqlRate = "INSERT INTO rating (rating_user, rated_user, rating) VALUES";
    private String sqlFindAllButMe = "SELECT u.id AS rated_user_id, u.username AS rated_username, r.rating AS user_rating FROM users u LEFT JOIN rating r ON u.id = r.rated_user AND r.rating_user = 1 WHERE u.id != 1";
    private String sqlFindAll1 = "SELECT rating_user.id AS rating_user_id, rating_user.username AS rating_username, rated.id AS rated_user_id, rated.username AS rated_username, r.rating as rating FROM rating r JOIN users rated ON r.rated_user = rated.id JOIN users rating_user ON r.rating_user = rating_user.id WHERE 1=1";
    private String sqlFindAll2 = "GROUP BY rated.id, rated.username, rating_user.id, rating_user.username";
    private String sqlHighest = "SELECT u.id, u.username, r.rated_user, SUM(r.rating) AS total_rating FROM users u JOIN rating r ON u.id = r.rated_user GROUP BY u.id, u.username, r.rated_user ORDER BY total_rating DESC LIMIT 10";
    private String sqlTopSells = "SELECT u.id, u.username, r.rated_user, SUM(DISTINCT r.rating) AS total_rating, COUNT(DISTINCT products.id) AS total_sells FROM users u LEFT JOIN rating r ON u.id = r.rated_user LEFT JOIN products ON products.idUser = u.id GROUP BY u.id, u.username, r.rated_user ORDER BY total_sells DESC LIMIT 10";

    public DAORating(){
        motorSQL = MotorSQL.getMotorSQL();
    }

    public ArrayList<Rating> findAllRatings(Rating rating){
        ArrayList<Rating> ratingArrayList = new ArrayList<>();
        String sql = "SELECT u.id AS rated_user_id, u.username AS rated_username, r.rating AS user_rating, u.imagePath FROM users u LEFT JOIN rating r ON u.id = r.rated_user AND r.rating_user = " + rating.getRatingUser() + " WHERE u.id != " + rating.getRatingUser();
//        System.out.println(sql);
        motorSQL.connect();
        ResultSet resultSet = motorSQL.executeQuery(sql);
        try {
            while (resultSet.next()){
                Rating ratingAux = new Rating();
                ratingAux.setRatingUser(rating.getRatingUser());
                ratingAux.setRatedUser(resultSet.getInt(1));
                ratingAux.setRatedUsername(resultSet.getString(2));
                ratingAux.setRating(resultSet.getDouble(3));
                ratingAux.setImagePath(resultSet.getString(4));
                ratingArrayList.add(ratingAux);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
//        System.out.println("ARRAY LIST RATINGS");
//        System.out.println(ratingArrayList);
        return ratingArrayList;
    }

    public void addRating(Rating rating) {
        String sql = sqlRate;
        motorSQL.connect();

        sql += "(" + rating.getRatingUser() + ',' + rating.getRatedUser() + ',' + rating.getRating() + ")";
//        System.out.println(sql);
        motorSQL.executeUpdate(sql);
        motorSQL.close();
    }

    public ArrayList<Rating> findFavouriteRatings(Rating rating) {
        ArrayList<Rating> ratingArrayList = new ArrayList<>();
        String sql = sqlHighest;
        motorSQL.connect();
        ResultSet resultSet = motorSQL.executeQuery(sql);
        try {
            while (resultSet.next()){
                Rating ratingAux = new Rating();
                ratingAux.setRatingUser(rating.getRatingUser());
                ratingAux.setRatedUser(resultSet.getInt(1));
                ratingAux.setRatedUsername(resultSet.getString(2));
                ratingAux.setRating(resultSet.getDouble(3));
                ratingArrayList.add(ratingAux);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
//        System.out.println("ARRAY LIST RATINGS");

        return ratingArrayList;
    }

    public ArrayList<Rating> findHighestSells(Rating rating) {
        ArrayList<Rating> ratingArrayList = new ArrayList<>();
        String sql = sqlTopSells;
        motorSQL.connect();
        ResultSet resultSet = motorSQL.executeQuery(sql);
        try {
            while (resultSet.next()){
                Rating ratingAux = new Rating();
                ratingAux.setRatingUser(rating.getRatingUser());
                ratingAux.setRatedUser(resultSet.getInt(1));
                ratingAux.setRatedUsername(resultSet.getString(2));
                ratingAux.setRating(resultSet.getDouble(4));
                ratingAux.setTotalSells(resultSet.getInt(5));
                ratingArrayList.add(ratingAux);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return ratingArrayList;
    }
}
