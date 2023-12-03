package dao;

import connection.MotorSQL;
import model.HistoricoCompra;
import model.Producto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOVenta {
    private MotorSQL motorSQL;
    private String sqlADD = "INSERT INTO ventas (idUsuario, idProducto) VALUES";
    private String SQLFINDALL = "SELECT v.id, p.nombre, p.descripcion, v.fecha, p.precio FROM ventas v JOIN products p ON p.id = v.idProducto WHERE 1=1";

    public DAOVenta(){
        motorSQL = MotorSQL.getMotorSQL();
    }

    public void add(Producto producto){
        String sql = "";
        sql = sqlADD;
        sql += "(" + producto.getIdUser() + ',' +
                producto.getId() +
                ")";
        String sql2 = "UPDATE products SET EnVenta = 0 WHERE id = " + producto.getId();

        motorSQL.connect();
        System.out.println(sql);
        System.out.println(sql2);
        motorSQL.executeUpdate(sql);
        motorSQL.executeUpdate(sql2);
        motorSQL.close();

    }

    public ArrayList<HistoricoCompra> findAll(HistoricoCompra historicoCompra) {
        String sql = "";
        sql = SQLFINDALL;
        sql += " AND v.idUsuario = " + historicoCompra.getIdUsuario();
        System.out.println(sql);

        ArrayList<HistoricoCompra> historicoCompras = new ArrayList<>();
        motorSQL.connect();
        ResultSet resultSet = motorSQL.executeQuery(sql);
        try {
            while (resultSet.next()){
                HistoricoCompra historicoCompraAux = new HistoricoCompra();
                historicoCompraAux.setId(resultSet.getInt(1));
                historicoCompraAux.setNombreProducto(resultSet.getString(2));
                historicoCompraAux.setDescripcionProducto(resultSet.getString(3));
                historicoCompraAux.setFechaCompra(resultSet.getString(4));
                historicoCompraAux.setPrecioCompra(resultSet.getDouble(5));
                historicoCompras.add(historicoCompraAux);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return historicoCompras;
    }
}
