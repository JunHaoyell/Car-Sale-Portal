package lithan.project.carsaleportall.Security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lithan.project.carsaleportall.Entities.User;
import lithan.project.carsaleportall.Services.UserService;


@SuppressWarnings("deprecation")
@Component
public class UserInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private UserService userService;

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && modelAndView != null) {
            String username = auth.getName();
            User user = userService.getUserByName(username); // Assuming you have a method to retrieve the user by username
            modelAndView.addObject("user", user);
        }
    }
}