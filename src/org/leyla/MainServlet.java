package org.leyla;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;


public class MainServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        String uri = request.getRequestURI();
        Locale locale = new Locale("ru");

        if (uri.startsWith("/shop/en")) {
            locale = Locale.ENGLISH;
        }

        if (uri.startsWith("/shop/de")) {
            locale = Locale.GERMAN;
        }

        Map<String, Object> data = fillData(locale);

        PrintWriter out = response.getWriter();
        Configuration cfg = new Configuration();

        cfg.setClassForTemplateLoading(MainServlet.class, "templates");

        Template template = cfg.getTemplate("template.ftl");

        try {
            template.process(data, out);
        } catch (TemplateException e) {
            throw new ServletException(e);
        }
    }

    private Map<String, Object> fillData(Locale locale) {

        int defaultTab = Integer.valueOf(getInitParameter("default-tab"));
        ResourceBundle myres = ResourceBundle.getBundle("messages", locale);

        HashMap<String, Object> map = new HashMap<>();

        map.put("tab1_class", (defaultTab == 1) ? "class=\"current\"" : "");
        map.put("tab2_class", (defaultTab == 2) ? "class=\"current\"" : "");
        map.put("tab3_class", (defaultTab == 3) ? "class=\"current\"" : "");

        map.put("tab1_style", (defaultTab != 1) ? "style=\"display: none\"" : "");
        map.put("tab2_style", (defaultTab != 2) ? "style=\"display: none\"" : "");
        map.put("tab3_style", (defaultTab != 3) ? "style=\"display: none\"" : "");

        map.put("buy_button", myres.getString("BUY_BUTTON"));

        return map;
    }
}
