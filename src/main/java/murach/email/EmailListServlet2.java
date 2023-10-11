package murach.email;

import murach.business.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//import murach.data.UserDB;

@WebServlet (urlPatterns = "/C6E2/emailList", name = "EmailListServlet2")
public class EmailListServlet2 extends HttpServlet  {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/C6E2/index.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/C6E2/index.jsp";    // the "join" page
        }
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String hearabout = request.getParameter("hearabout");
            String receiveA = request.getParameter("receiveA");
            String dateofBirth = request.getParameter("dateofBirth");
            String contactby = request.getParameter("contactby");


            // store data in User object and save User object in db
            User user = new User(firstName,lastName,email,dateofBirth,hearabout,receiveA,contactby);
//            UserDB.insert(user);

            // set User object in request object and set URL
            request.setAttribute("user", user);
            url = "/C6E2/thanks.jsp";   // the "thanks" page
        }

        // forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
