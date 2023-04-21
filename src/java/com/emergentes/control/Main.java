
package com.emergentes.control;

import com.emergentes.modelado.Notas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Main", urlPatterns = {"/Main"})
public class Main extends HttpServlet {

    

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String xd = request.getParameter("xd");
        String opcion = ( xd == null) ? "view" : xd;
        HttpSession ses = request.getSession();

        if (ses.getAttribute("listaper") == null) {
            ArrayList<Notas> listaux = new ArrayList<Notas>();
            ses.setAttribute("listaper", listaux);
        }
        ArrayList<Notas> lista = (ArrayList<Notas>)ses.getAttribute("listaper");
        
        switch(opcion){
            case "nuevo":
                Notas obj1 = new Notas();
                request.setAttribute("Notas", obj1);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
                break;
            case "editar":
                break;
            case "eliminar":
                break;
            case "view":
                response.sendRedirect("index.jsp");
                break;
        }
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         //int id = Integer.parseInt(request.getParameter("id"));
        String nombres = request.getParameter("nombres");
         int p1 = Integer.parseInt(request.getParameter("p1"));
          int   p2 = Integer.parseInt(request.getParameter("p2"));
           int Ef = Integer.parseInt(request.getParameter("Ef"));
        //int Nota = Integer.parseInt(request.getParameter("nota"));
        
        Notas objnt = new Notas();
        //objnt.setId(id);
        objnt.setNombre(nombres);
        objnt.setP1(p1);
        objnt.setP2(p2);
        objnt.setEf(Ef);
        //objnt.setNota(Nota);
        
        
        HttpSession ses = request.getSession();
        ArrayList<Notas> lista = (ArrayList<Notas>)ses.getAttribute("listaper");
        
        lista.add(objnt);
        response.sendRedirect("index.jsp");
    }
}
