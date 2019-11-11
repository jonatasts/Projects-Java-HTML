package dao;

import interfaces.IDatabase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.AlunoFator;

public class AlunoFatorDAO {
    
    private IDatabase banco = IDatabase.createDatabase();
    private ResultSet resultSet;
    private PreparedStatement preparedStatement;
    private Statement statement;
    private Connection conexao;

    public AlunoFatorDAO() {
        try {
            conexao = banco.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AlunoFatorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
     public void insert(AlunoFator alunoFator) throws SQLException {
        String insertAluno = "INSERT INTO alunofator (matriculaaluno, anoemCurso, anoletivo, observacao, pf1, pf2, pf3 , pf4, "
                           + "pf5, pf6, pf7, pf8, pf9, pf10, pf11, pf12, pf13, pf14, pf15, pf16, pf17, pf18, pf19, "
                           + "pf20, pf21, pf22, pf23, pf24, pf25, pf26, pf27, pf28, pf29, pf30) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
       
        preparedStatement = conexao.prepareStatement(insertAluno);

        try {
            preparedStatement.setString(1, alunoFator.getMatriculaAluno());
            preparedStatement.setInt(2, alunoFator.getAnoEmCurso());
            preparedStatement.setInt(3, alunoFator.getAnoLetivo());
            preparedStatement.setString(4,alunoFator.getObservacao());
            
            for (int i = 0; i < 30; i++) {
                 preparedStatement.setInt(i+5,alunoFator.getFatores(i));
            }
            
            
            preparedStatement.execute();
        } catch (RuntimeException erro) {
            throw new RuntimeException("Erro insert: " + erro);
        }

    }

    public ArrayList<AlunoFator> select() throws SQLException {
        String sql = "SELECT * FROM alunoFator";
        ArrayList<AlunoFator> alunoFatores = new ArrayList<>();

        try {
            preparedStatement = conexao.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            
            while (resultSet.next()) {
                AlunoFator alunoFator = new AlunoFator();

                alunoFator.setMatriculaAluno(resultSet.getString("matriculaaluno"));
                alunoFator.setAnoEmCurso(resultSet.getInt("anoEmCurso"));
                alunoFator.setAnoLetivo(resultSet.getInt("anoLetivo"));
                alunoFator.setObservacao(resultSet.getString("observacao"));
                
                for (int i = 0; i < 30; i++) {
                 alunoFator.setFatores(i, (resultSet.getInt(i+5)));
                }
                alunoFatores.add(alunoFator);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AlunoFatorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        resultSet.close();
        conexao.close();
        return alunoFatores;
    }
    
    public AlunoFator selectAlunoFatorByMatricula(String matricula) throws SQLException {
        String sql = "SELECT * FROM alunofator WHERE matriculaaluno = ?";
        int pontuacao = 0;
        AlunoFator alunoFator = new AlunoFator();

        try {
            preparedStatement = conexao.prepareStatement(sql);
            preparedStatement.setString(1, matricula);
            resultSet = preparedStatement.executeQuery();
            

            if(resultSet.next()) {
                

                alunoFator.setMatriculaAluno(resultSet.getString("matriculaaluno"));
                alunoFator.setAnoEmCurso(resultSet.getInt("anoEmCurso"));
                alunoFator.setAnoLetivo(resultSet.getInt("anoLetivo"));
                alunoFator.setObservacao(resultSet.getString("observacao"));
                
                for (int i = 0; i < 30; i++) {
                 alunoFator.setFatores(i, (resultSet.getInt(i+4)));
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(RankingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        //resultSet.close();
        conexao.close();
        return alunoFator;
    }
    
}
