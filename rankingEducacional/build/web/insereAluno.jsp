<%-- 
    Document   : insereAluno
    Created on : 11/07/2019, 10:24:44
    Author     : jonatas.santos
--%>

<%@page import="model.AlunoFator"%>
<%@page import="dao.AlunoFatorDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insere Aluno</title>
    </head>
    <body>
        <%
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/prototipoEducacional";
            String usuario = "postgres";
            String senha = "000000";
            Connection conexao = DriverManager.getConnection(url, usuario, senha);

            try {
                AlunoFatorDAO alunoFatorDAO = new AlunoFatorDAO();
                AlunoFator alunoFator = new AlunoFator();
                int[] pontos = new int[30];

                for (int i = 0; i < 30; i++) {
                    pontos[i] = Integer.parseInt(request.getParameter("fator" + (i + 1)));
                }

                alunoFator.setMatriculaAluno(Integer.parseInt(request.getParameter("matricula")));
                alunoFator.setAnoEmCurso(Integer.parseInt(request.getParameter("ano_corrente")));
                alunoFator.setAnoLetivo(Integer.parseInt(request.getParameter("ano_letivo")));
                alunoFator.setFatores(pontos);
                alunoFatorDAO.insert(alunoFator);

            } catch (RuntimeException erro) {
                throw new RuntimeException("Erro insert aluno e fator: " + erro);
            }
        %>
    </body>
</html>
