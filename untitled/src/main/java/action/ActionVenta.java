package action;

import com.google.gson.Gson;
import dao.DAOProduct;
import dao.DAOVenta;
import model.HistoricoCompra;
import model.Producto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class ActionVenta {
    DAOVenta daoVenta;
    public ActionVenta(){
        daoVenta = new DAOVenta();
    }

    public String execute(HttpServletRequest request, HttpServletResponse response){
        String answer = "";
        switch ( request.getParameter("ACTION").split("\\.")[1] ){
            case "ADD":
                answer = addVenta(request, response);
                break;
            case "FINDALL":
                answer = findAll(request, response);
                break;
        }
        return answer;
    }

    private String findAll(HttpServletRequest request, HttpServletResponse response){
        HistoricoCompra historicoCompra = new HistoricoCompra();
        System.out.println("hola");
        System.out.println(request.getParameter("idUsuario"));
        historicoCompra.setIdUsuario(Integer.parseInt(request.getParameter("idUser")));
        ArrayList<HistoricoCompra> historicoCompras = daoVenta.findAll(historicoCompra);
        if (!historicoCompras.isEmpty()){
            System.out.println("historico");
        }else{
            System.out.println("no hay ventas");
        }
        System.out.println(historicoCompras);
        String json = "";

        Gson gson = new Gson();
        json += "{\"message\":\"Mensaje de prueba\"";
        json += ", \"historicoComprasList\":[";
        for (HistoricoCompra historicoCompraAux : historicoCompras) {
            json += gson.toJson(historicoCompraAux) + ", ";
        }
        json = json.substring(0,json.length()-2);
        json += "]}";
        System.out.println(json);
        return json;
    }

    private String addVenta(HttpServletRequest request, HttpServletResponse response) {
        Producto producto = new Producto();
        producto.setId(Integer.parseInt(request.getParameter("idProducto")));
        producto.setIdUser(Integer.parseInt(request.getParameter("idUser")));
        ArrayList<Producto> productoArrayList = new DAOProduct().findAllButMine(producto);
        if (productoArrayList.size() > 0){
            daoVenta.add(producto);
        } else {
            System.out.println("that product has already been sold");
        }
        return "terminado add venta";
    }

}
