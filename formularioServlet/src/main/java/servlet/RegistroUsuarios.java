/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author carlo
 */
public class RegistroUsuarios extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String gender = request.getParameter("gender");
        String[] hobbies = request.getParameterValues("hobbies");
        String sourceIncome = request.getParameter("sourceIncome");
        String income = request.getParameter("income");
        String age = request.getParameter("age");
        String bio = request.getParameter("bio");

        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<body>");
        out.println("<h1>Bienvenido " + name + " " + lastName + "</h1>");
        out.println("<p>Gracias por registrarte</p>");
        out.println("<p>Email: " + email + "</p>");
        out.println("<p>Genero: " + gender + "</p>");

        out.print("<p>Hobbies: ");
        if (hobbies != null) {
            for (String hobby : hobbies) {
                out.print(hobby + " ");
            }
        } else {
            out.print("No especificado");
        }
        out.println("</p>");

        out.println("<p>Fuente de Ingresos: " + sourceIncome + "</p>");
        out.println("<p>Ingreso: " + income + "K</p>");
        out.println("<p>Edad: " + age  + "</p>");
        out.println("<p>Biografía: " + bio + "</p>");
        out.println("</body>");
        out.println("</html>");
        out.close();

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String gender = request.getParameter("gender");
        String[] hobbies = request.getParameterValues("hobbies"); 
        String sourceIncome = request.getParameter("sourceIncome");
        String income = request.getParameter("income");
        String age = request.getParameter("age");
        String bio = request.getParameter("bio");

        request.setAttribute("name", name);
        request.setAttribute("lastName", lastName);
        request.setAttribute("email", email);
        request.setAttribute("password", password);
        request.setAttribute("confirmPassword", confirmPassword);
        request.setAttribute("gender", gender);
        request.setAttribute("hobbies", hobbies);
        request.setAttribute("sourceIncome", sourceIncome);
        request.setAttribute("income", income);
        request.setAttribute("age", age);
        request.setAttribute("bio", bio);

        RequestDispatcher dispatcher = request.getRequestDispatcher("resultadosRegistro.jsp");
        dispatcher.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
