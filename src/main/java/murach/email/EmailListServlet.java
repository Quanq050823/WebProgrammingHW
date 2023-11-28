package murach.email;

import murach.business.User;
import murach.data.UserDB;
import murach.util.MailUtilGmail;
import murach.util.MailUtilLocal;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/C6E1/emailList", name = "EmailListServlet")
public class EmailListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        // perform action and set URL to appropriate page
        String url = "/C6E1/index.jsp";
        if (action.equals("join")) {
            url = "/C6E1/index.jsp";    // the "join" page
        } else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object
            User user = new User(firstName, lastName, email);
            UserDB.insert(user);
            request.setAttribute("user", user);
            // send email to user
            String to = email;
            String from = "email_list@murach.com";
            String subject = "Welcome to our email list";
            String body = "Dear " + firstName + ",\n\n"
                    + "Thanks for joining Coza familly. "
                    + "We'll make sure to send "
                    + "you announcements about new products "
                    + "and promotions.\n"
                    + "Have a great day and thanks again!\n\n"
                    + "Duc Quang\n"
                    + "Tran Phuoc Binh";
            boolean isBodyHTML = false;
            try {
                MailUtilGmail.sendMail(to, from, subject, body,
                        isBodyHTML);
            } catch (MessagingException e) {
                String errorMessage
                        = "ERROR: Unable to send email. "
                        + "Check Tomcat logs for details.<br>"
                        + "NOTE: You may need to configure your system "
                        + "as described in chapter 14.<br>"
                        + "ERROR MESSAGE: " + e.getMessage();
                request.setAttribute("errorMessage", errorMessage);
                this.log(
                        "Unable to send email. \n"
                                + "Here is the email you tried to send: \n"
                                + "=====================================\n"
                                + "TO: " + email + "\n"
                                + "FROM: " + from + "\n"
                                + "SUBJECT: " + subject + "\n\n"
                                + body + "\n\n");
            }
            // validate the parameters
            String message;
            if (firstName == null || lastName == null || email == null ||
                    firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                message = "Please fill out all three text boxes.";
            }
            else {
                message = null;
                url = "/C6E1/thanks.jsp";
                UserDB.insert(user);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}

