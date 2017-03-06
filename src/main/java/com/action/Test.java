package com.action;

import com.model.mapper.StudentMapper;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by webrx on 2017/3/1 0001 8:54.
 */
@Component("aaaa")   //spring ioc 管理让struts使用
public class Test {
    @Autowired
    private StudentMapper smr;
    public void execute() throws IOException {
        HttpServletResponse resp = ServletActionContext.getResponse();
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        out.print("<!DOCTYPE html>");
        out.print("\n<html lang=\"zh\">");
        out.print("\n<head>\n<meta charset=\"utf-8\">\n<title>webrx</title>\n<body>");
        out.print("\n<h1>hello-struts2.5.10-中文</h1>");
        out.print("\n</body>");
        out.print("\n</html>");
        out.flush();
        out.close();
    }

    public String show(){
        ServletActionContext.getContext().put("stu",smr.query());
        return "success";
    }
}
