package com.xz.Interceptor;

import com.xz.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Logger;

public class SessionInterceptor implements HandlerInterceptor {

    private static final Logger logger = Logger.getLogger(SessionInterceptor.class.getName());

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        Object user = request.getSession().getAttribute("SESSION_USER");

        if(user == null)
        {
            logger.warning("不要搞事！");
            return false;
        }

        if(user instanceof User){
            User u = (User) user;
            logger.info(u.getUsername()+" is online...");
            return true;
        }
        else {
            logger.warning("不要搞事ing！");
            return false;
        }

    }
}
