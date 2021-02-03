package ir.maktab.servlet;

import ir.maktab.model.Employee;
import ir.maktab.repository.EmployeeRepository;
import ir.maktab.service.EmployeeService;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import static ir.maktab.util.JpaUtil.getEntityManagerFactory;

@WebServlet(name = "MainEmployeeServlet", urlPatterns = "/employee")
public class MainEmployeeServlet extends HttpServlet {
    public static EntityManager entityManager = getEntityManagerFactory().createEntityManager();
    public static EmployeeRepository employeeRepository = new EmployeeRepository(entityManager);
    public static EmployeeService employeeService = new EmployeeService(employeeRepository);


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter printWriter = response.getWriter();
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");

        employeeService.save(firstName, lastName, email);
        printWriter.println("Save Done!" + firstName);
        request.getRequestDispatcher("wel.jsp").include(request, response);
        return;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String action = request.getParameter("action");

//        if (action == null) {
//            response.sendRedirect("error.jsp");
//        } else {
//            if (action.equals("loadEmployees")) {
                List<Employee> list = employeeService.loadAllEmployee();
                HttpSession session = request.getSession(true);
                session.setAttribute("employees", list);
                request.getRequestDispatcher("showEmployees.jsp").forward(request, response);
//            }else{



//        List<Employee> list = employeeService.loadAllEmployee();
//        HttpSession session = request.getSession(true);
//        session.setAttribute("employees", list);
//        request.getRequestDispatcher("showEmployees.jsp").forward(request, response);}
    }
}
