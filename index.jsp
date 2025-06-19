<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Laba_24</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<form action="index.jsp" method="post">
    <input type="text" name="varx" placeholder="x"><br>
    <input type="text" name="varn" placeholder="n"><br>
    <input type="submit" value="send" class="btns">
    <input type="reset" value="reset" class="btns">
    <div> <%
    String nn = request.getParameter("varn");
    String xx = request.getParameter("varx");
    
    if (nn != null && xx != null) {
        try {
            double x = Double.parseDouble(xx);
            int n = Integer.parseInt(nn);
            double sum = 0.0;
            
            if (Math.abs(x) <= 1) {
                for (int i = 0; i < n; i++) {
                    sum += (Math.pow(-1, i) * Math.pow(x, 2 * i + 1))/(2 * i + 1);
                }
                out.println("Sum = " + sum);
            } else {
                out.println("Неверно введено x (|x| должен быть ≤ 1)");
            }
        } catch (NumberFormatException e) {
            out.println("Ошибка: введите числовые значения");
        }
    }
    %></div>
   
</form>
</body>
</html>