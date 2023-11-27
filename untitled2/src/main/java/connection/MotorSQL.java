package connection;

import java.sql.*;


public class MotorSQL {
    private static MotorSQL motorConexion = null;
    private String db_url = "jdbc:mysql://localhost:3306/vinteddb";
    private String db_username = "uchi";
    private String db_password = "1234";
    private String db_driver = "com.mysql.cj.jdbc.Driver";

    ResultSet resultSet;
    Connection connection;
    Statement statement;

    private MotorSQL() {

    }

    public static MotorSQL getMotorSQL(){
        if (motorConexion == null){
            motorConexion = new MotorSQL();
        }
        return motorConexion;
    }

    public void connect(){
        try {
            Class.forName(db_driver);
            connection = DriverManager.getConnection(db_url, db_username, db_password);
            statement = connection.createStatement();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public void close(){
        try {
            if (resultSet != null){
                resultSet.close();
            }

            if (statement != null){
                statement.close();
            }

            if (connection != null){
                connection.close();
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ResultSet executeQuery(String sql){
        try {
            return statement.executeQuery(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public int executeUpdate(String sql){
        try {
            return statement.executeUpdate(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


}
