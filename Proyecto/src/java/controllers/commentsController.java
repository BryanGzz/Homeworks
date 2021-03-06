package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.*;

public class commentsController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String accion= request.getParameter("ACCION");
            if(accion== "comentar"){
                String nombre= request.getParameter("NOMBRE");
                String comentario= request. getParameter("COMENTARIO");
                
                ComentariosDAO comentariosDao= new ComentariosDAO();
                ComentariosPOJO comentariosPojo= new ComentariosPOJO();
                
                comentariosPojo.setComentario(comentario);
                comentariosPojo.setNombre(nombre);
                
                comentariosDao.insertar(comentariosPojo);
                response.sendRedirect("index.html");
            }else{
                if(accion== "buscar"){
                String nombre= request.getParameter("NOMBRE");
                String comentario= request. getParameter("COMENTARIO");
                
                ComentariosDAO comentariosDao= new ComentariosDAO();
                ComentariosPOJO comentariosPojo= new ComentariosPOJO();
                
                comentariosPojo.setComentario(comentario);
                comentariosPojo.setNombre(nombre);
                
                List  beans = new ArrayList();
                beans= comentariosDao.buscar(comentariosPojo);
                
                HttpSession session= request.getSession();
                session.setAttribute("comentarios", beans);
                
                response.sendRedirect("index.html");
                }else{
                    response.sendRedirect("error.jsp");
                }
            }
        }
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
        processRequest(request, response);
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
        processRequest(request, response);
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

