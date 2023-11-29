package dao;

import connection.MotorSQL;
import model.Producto;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOProduct {

    private MotorSQL motorSQL;

    private String tableName = "products";
    private String sqlInsert = "INSERT INTO " + tableName + " (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser, imagePath) VALUES";
    private String sqlFindAll = "SELECT * FROM " + tableName + " WHERE 1=1";

    public DAOProduct(){
        motorSQL = MotorSQL.getMotorSQL();
    }

    public String add(Producto producto){

        String sql = "";
        sql = sqlInsert;
        sql += "('" + producto.getNombre() + "'," +
                "'" + producto.getDescripcion() +"'," +
                "'" + producto.getCategoria() + "'," +
                "'" + producto.getMarca() +"'," +
                "'" + producto.getTalla() + "'," +
                "'" + producto.getEstado() + "'," +
                "" + producto.getPrecio() + "," +
                "'" + producto.getMoneda() + "'," +
                "" + producto.getIdUser() + ',' +
                '\'' + producto.getImagePath() + '\'' +
                ")";
        motorSQL.connect();
        motorSQL.executeUpdate(sql);
        motorSQL.close();
        return "";
    }

    public ArrayList<Producto> findAll(Producto producto){
        ArrayList<Producto> productsList = new ArrayList<>();
        String sql = "";
        sql = sqlFindAll;

        if (producto.getNombre() != null && !producto.getNombre().equals("")){
            sql += " AND nombre = '" + producto.getNombre() + '\'';
        }

        if (producto.getIdUser() > 0){
            sql += " AND idUser = " + producto.getIdUser();
        }

        if (producto.getCategoria() != null && !producto.getCategoria().equals("")){
            sql += " AND ";
            String[] categoriasArray = producto.getCategoria().split("\\.");
            for (int i = 0; i < categoriasArray.length; i++) {
                sql += "categoria = '" + categoriasArray[i] + "' OR ";
            }
            sql = sql.substring(0, sql.length()-3);
//            sql += " AND categoria = '" + producto.getCategoria() + '\'';
            System.out.println("IN CATEGORY DAO PRODUCT");
        }

        if (!(producto.isEnVenta())){
            sql += " AND enVenta = true ";
        }

        System.out.println("SQL TO EXECUTE::\n" + sql);
        motorSQL.connect();
        ResultSet resultSet = motorSQL.executeQuery(sql);

        try {
            while (resultSet.next()){
                Producto productoAux = new Producto();
                productoAux.setNombre(resultSet.getString(2));
                productoAux.setDescripcion(resultSet.getString(3));
                productoAux.setCategoria(resultSet.getString(4));
                productoAux.setMarca(resultSet.getString(5));
                productoAux.setTalla(resultSet.getString(6));
                productoAux.setEstado(resultSet.getString(7));
                productoAux.setPrecio(Double.parseDouble(resultSet.getString(8)));
                productoAux.setMoneda(resultSet.getString(9));
                productoAux.setIdUser(Integer.parseInt(resultSet.getString(10)));
                productoAux.setImagePath(resultSet.getString(11));

                // TODO: SET IMAGE
                productsList.add(productoAux);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        motorSQL.close();
        System.out.println("PRODUCTOS ARRAY");
        System.out.println(productsList);
        return productsList;
    }

}
