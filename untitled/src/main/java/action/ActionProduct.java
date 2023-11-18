package action;

import dao.DAOProduct;
import model.Producto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ActionProduct {
    DAOProduct daoProduct;

    public ActionProduct(){
        daoProduct = new DAOProduct();
    }

    public String execute(HttpServletRequest request, HttpServletResponse response){
        String answer = "";

        String action = request.getParameter("ACTION");
        String[] method = action.split("\\.");

        switch(method[1]){
            case "ADD":
                System.out.println("we adding");
                answer = addProduct(request, response);
                break;
            default:
                System.out.println("lol noob");
                break;
        }
        return answer;
    }

    private String addProduct(HttpServletRequest request, HttpServletResponse response) {
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String categoria = request.getParameter("categoria");
        String marca = request.getParameter("marca");
        String talla = request.getParameter("talla");
        String estado = request.getParameter("estado");
        System.out.println(request.getParameter("estado"));
        double precio = Double.parseDouble(request.getParameter("precio"));
        String moneda = request.getParameter("moneda");

        Producto producto = new Producto(nombre, descripcion, categoria, marca, talla, estado, precio, moneda);
        daoProduct.add(producto);

        /*String jsonResponseObject= "{\n" +
                "    \"message\": \"Este es un mensaje de ejemplo\",\n" +
                "    \"productList\": [\n" +
                "        {\n" +
                "            \"username\": \"username1\",\n" +
                "            \"token\": \"token1\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"username\": \"username2\",\n" +
                "            \"token\": \"token2\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"username\": \"username3\",\n" +
                "            \"token\": \"token3\"\n" +
                "        }\n" +
                "    ]\n" +
                "}";*/
        return "";
    }
}
