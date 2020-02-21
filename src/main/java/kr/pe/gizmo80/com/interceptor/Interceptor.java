package kr.pe.gizmo80.com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import kr.pe.gizmo80.web.bean.UserBean;

@Component
public class Interceptor implements HandlerInterceptor {

    /**
     * 컨트롤러(즉 RequestMapping이 선언된 메서드 진입) 실행 직전에 동작. 반환 값이 true일 경우 정상적으로 진행이 되고,
     * false일 경우 실행이 멈춘다.(컨트롤러 진입을 하지 않음) 전달인자 중 Object handler는 핸들러 매핑이 찾은 컨트롤러 클래스
     * 객체.
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();
        UserBean userBean = (UserBean) session.getAttribute("UserBean");
        String uri = request.getRequestURI();
        if (ObjectUtils.isEmpty(userBean)) {
            if(uri.indexOf("resources/upload") != -1) {
                return true;
            }else {
                
                response.sendRedirect("/login");
                
                return false;
            }
        } else {
            session.setMaxInactiveInterval(30 * 60);
            return true;
        }

    }

    /**
     * 컨트롤러 진입 후 view가 랜더링 되기 전 수행. 전달인자의 modelAndView을 통해 화면 단에 들어가는 데이터 등의 조작이 가능.
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
        // TODO Auto-generated method stub
    }

    /**
     * 컨트롤러 진입 후 view가 정상적으로 랜더링 된 후 제일 마지막에 실행이 되는 메서드.
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        // TODO Auto-generated method stub
    }

}
