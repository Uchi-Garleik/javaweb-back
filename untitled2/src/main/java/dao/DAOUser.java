package dao;

import connection.MotorSQL;
import model.Usuario;

import javax.servlet.http.HttpServletRequest;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOUser {

    private MotorSQL motorSQL;

    private String tableName = "users";
    private String sqlFindAll = "SELECT * FROM " + tableName + " WHERE 1=1";
    private String sqlHighestSell = "SELECT users.id, users.username, COUNT(*) as TotalVentas FROM users INNER JOIN products ON products.idUser = users.id GROUP BY users.id ORDER BY TotalVentas DESC LIMIT 4";

    public DAOUser(){
        motorSQL = MotorSQL.getMotorSQL();
    }

    public ArrayList<Usuario> findAll(Usuario usuario){
        String sql = "";
        sql = sqlFindAll;

        if (usuario.getUsername() != null && !usuario.getUsername().equals("")){
            sql += " AND username = '" + usuario.getUsername() + '\'';
        }

        if (usuario.getPassword() != null && !usuario.getPassword().equals("")){
            sql += " AND password = '" + usuario.getPassword() + '\'';
        }

//        sql += " AND username = '" + usuario.getUsername() + "' AND password = '" + usuario.getPassword()+'\'';
        System.out.println(sql);
        ArrayList<Usuario> listUsuario = new ArrayList<>();
        motorSQL.connect();
        ResultSet resultSet = motorSQL.executeQuery(sql);
        try {
            while(resultSet.next()){
                Usuario usuarioAux = new Usuario();
                usuarioAux.setId(resultSet.getInt(1));
                usuarioAux.setUsername(resultSet.getString(2));
                usuarioAux.setPassword(resultSet.getString(3));
                listUsuario.add(usuarioAux);
//                usuarioAux.setId(resultSet.getInt(1));
//                usuarioAux.setUsername(resultSet.getString(2));
//                usuarioAux.setPassword(resultSet.getString(3));
//                listUsuario.add(usuarioAux);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        motorSQL.close();
        return listUsuario;
    }

    public ArrayList<Usuario> highestSells(Usuario usuario) {
        ArrayList<Usuario> usuariosList = new ArrayList<>();

        motorSQL.connect();
        ResultSet resultSet = motorSQL.executeQuery(sqlHighestSell);
        try {
            while(resultSet.next()){
                Usuario usuarioAux = new Usuario();
                usuarioAux.setId(resultSet.getInt(1));
                usuarioAux.setUsername(resultSet.getString(2));
                usuarioAux.setSells(resultSet.getInt(3));
                usuariosList.add(usuarioAux);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        motorSQL.close();
        return usuariosList;
    }
}
