package dao;

import connection.MotorSQL;
import model.Producto;

public class DAOProduct {

    private MotorSQL motorSQL;

    private String tableName = "productos";
    private String sqlInsert = "INSERT INTO " + tableName + " (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES";

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
                "" + producto.getIdUser() +
                ")";
        System.out.println(sql);
        motorSQL.connect();
        motorSQL.executeUpdate(sql);
        motorSQL.close();
        return "";
    }

}
