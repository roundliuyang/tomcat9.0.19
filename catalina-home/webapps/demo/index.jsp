<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
<head><title>Test-title</title></head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String method = request.getMethod() ;   // 取得提交方式
    String ip = request.getRemoteAddr() ;   // 取得客户端的IP地址
    String path = request.getServletPath() ;    // 取得访问路径
    String contextPath1= request.getContextPath() ; // 取得上下文资源名称
    String contextPath2 = getServletContext().getContextPath() ;// 取得上下文资源名称
    String realPath=getServletContext().getRealPath("/");//取得虚拟目录所对应的真实路径
%>
<h3>请求方式：<%=method%></h3>
<h3>IP地址：<%=ip%></h3>
<h3>访问路径：<%=path%></h3>
<h3>上下文名称1：<%=contextPath1%></h3>
<h3>上下文名称2：<%=contextPath2%></h3>
<h3>真实路径：<%=realPath%></h3>
</body>
</html>
