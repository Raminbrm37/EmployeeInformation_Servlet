package ir.maktab.servlet;

import ir.maktab.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ActionEmployeeServlet", urlPatterns = "/employeeAction")
public class ActionEmployeeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String fatherName = request.getParameter("fatherName");
        String nationalCode = request.getParameter("nationalCode");
        String address = request.getParameter("address");
        String mobileNumber = request.getParameter("mobileNumber");
        Integer employeeId = Integer.parseInt(request.getParameter("employeeId"));
        MainEmployeeServlet.employeeService.saveEmployeeDetails(employeeId, nationalCode, fatherName, mobileNumber, address);
        out.println("Information is Complete");
//        request.setAttribute("employeeId",request.getParameter("employeeId"));
//     request.getRequestDispatcher("employee")
//      .forward(request,response);
        response.sendRedirect("employee");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        PrintWriter out = response.getWriter();
        if (action == null || action.trim().equals("")) {
            response.sendRedirect("error.jsp");
        } else {
            if (action.equals("details")) {
                String employeeId = request.getParameter("employeeId");

                Employee employee = MainEmployeeServlet.employeeService.load(Integer.parseInt(employeeId));
                request.setAttribute("employee", employee);
                if (employee.getInformationEmployee() == null) {
                    request.getRequestDispatcher("notFoundDetail.jsp").forward(request, response);
                    return;
                } else {

                    request.getRequestDispatcher("fullInfo.jsp").forward(request, response);
                    return;
                }

            } else if (action.equals("delete")) {
                String employeeId = request.getParameter("employeeId");
                MainEmployeeServlet.employeeService.deleteEmployee(Integer.parseInt(employeeId));
//                out.println("Deleted Done!");
//                request.getRequestDispatcher("employee").include(request, response);
                response.sendRedirect("employee");
                return;
            } else if (action.equals("completeInformation")) {
                String employeeId = request.getParameter("employeeId");
                Employee employee = MainEmployeeServlet.employeeService.load(Integer.parseInt(employeeId));
                request.setAttribute("employee", employee);
                request.getRequestDispatcher("completeInformation.jsp").forward(request, response);

                return;
            }else if (action.equals("update")){
                String employeeId = request.getParameter("employeeId");
                Employee employee = MainEmployeeServlet.employeeService.load(Integer.parseInt(employeeId));
                request.setAttribute("employee", employee);
                request.getRequestDispatcher("updateEmployee.jsp").forward(request, response);

            }
        }
    }
}
