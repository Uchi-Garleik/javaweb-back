

import action.ActionProduct;
import action.ActionRating;
import action.ActionUser;
import action.ActionVenta;
import com.google.gson.Gson;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

@WebServlet("/MyServlet")
@MultipartConfig
public class MyServlet  extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Procesa alguna lógica aquí
        String message = "{message: 'Hola desde el Servlet'}";
        response.setContentType("application/json");

        String action = request.getParameter("ACTION").split("\\.")[0];
        PrintWriter out = response.getWriter();
        String answer = "";
        switch(action){
            case "PRODUCT":
                answer = new ActionProduct().execute(request, response);
                break;
            case "USER":
                answer = new ActionUser().execute(request, response);
                break;
            case "RATING":
                answer = new ActionRating().execute(request, response);
                break;
            case "VENTAS":
                answer = new ActionVenta().execute(request, response);
                break;
            default:
                answer = "nothing";
                break;
        }
        System.out.println(answer);
        out.print(answer);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        String message = "{message: 'Hola desde el POST METHOD'}";
        String answer = "";


        String action = request.getParameter("ACTION");
        switch (action){
            case "PRODUCT.ADD":
                ActionProduct actionProduct = new ActionProduct();
                answer = actionProduct.execute(request, response);
                break;
        }


        out.print(message);
    }

}


