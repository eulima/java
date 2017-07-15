
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private static final LoginCheck ll = null;	
	public LoginCheck() {
        super();      
    } 
	Connection con;
	PreparedStatement pst = null;
 	ResultSet rs = null;

		 // response.getWriter().append("Served at: ").append(request.getContextPath());   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        	
	         String username = request.getParameter("username");
       		 String senha = request.getParameter("senha");     		      
            		
    			  try {
					con = CriarConexao.getConexao();
					  pst = con.prepareStatement("SELECT * FROM account WHERE username = ? AND senha = ?");
	    		      pst.setString(1, username);
    		          pst.setString(2, senha);
    		          rs=pst.executeQuery();   		
    		          		     
    	               if(rs.next()) {
    			                   System.out.print("--PASSOU O Username E Senha ");
    			              /*     pst= con.prepareStatement("SELECT id_client,datavenc FROM account");
    			                   String id =rs.getString("id_client"); 
    			                     
    			                   LocalDate venc = LocalDate.now().plusMonths(6);			       	
    						        
    			                   DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyyMMdd");    			                   
    			                   LocalDate hoje = LocalDate.now();                          
    			                   String dataAtual = df.format(hoje);    			                 
    			                   String dataSistema = rs.getString("datavenc");
                                 
    			                   int diaAt, mesAt, anoAt, diaVenc, mesVenc, anoVenc;
    			                  
    			                   anoAt = Integer.parseInt(""+dataAtual.charAt(0)+dataAtual.charAt(1)+dataAtual.charAt(2)+dataAtual.charAt(3));
    			                   mesAt = Integer.parseInt(""+dataAtual.charAt(4)+dataAtual.charAt(5));
    			                   diaAt = Integer.parseInt(""+dataAtual.charAt(6)+dataAtual.charAt(7));

    			                   anoVenc = Integer.parseInt(""+dataSistema.charAt(0)+dataSistema.charAt(1)+dataSistema.charAt(2)+dataSistema.charAt(3));
    			                   mesVenc = Integer.parseInt(""+dataSistema.charAt(4)+dataSistema.charAt(5));
    			                   diaVenc = Integer.parseInt(""+dataSistema.charAt(6)+dataSistema.charAt(7));

    			                   System.out.print("--VAI COMPARAR AS DATAS-- ");      
    			                         if((anoAt <= anoVenc) && (mesAt <= mesVenc) ||(diaAt <= diaVenc)) { 
    			         
    			                            HttpSession session = request.getSession();
    			            
    				                        session.setAttribute("title", rs.getString("title"));
    				                        session.setAttribute("firstname", rs.getString("firstname"));
    				                        session.setAttribute("lastname", rs.getString("lastname"));
    				                        session.setAttribute("home", rs.getString("home"));
    				           
       			                            session.setAttribute("autentication",rs.getString("id_client")); 
       			                            request.getSession().setAttribute("autentication", "id_client");
       			              
    				                        request.getSession().setAttribute("title", rs.getString("title"));
    									    request.getSession().setAttribute("firstname", rs.getString("firstname"));
    									    request.getSession().setAttribute("lastname", rs.getString("lastname"));
    									    request.getSession().setAttribute("home", rs.getString("home"));
    									    request.getSession().setAttribute("datavenc", rs.getString("datavenc"));
    									    */
    			    		                RequestDispatcher rd = request.getRequestDispatcher("logado.jsp");
    			    		          	    rd.forward(request, response); 
    			                        /*  }
    			                          else{  
    			                           request.getSession().setAttribute("dataSistema", dataSistema); 
         			                            request.getSession().setAttribute("id", id);  
    			                        	  RequestDispatcher rd = request.getRequestDispatcher("submition.jsp");
      			    		          	      rd.forward(request, response); 
    			                            	System.out.print("----VENCIDO SUBMITION !!!!------");
    			                                } */
    	                          }
    	                          else {
	    	                            System.out.print("----NAO NAO ENTROU NO DATABASE------");
	                                     RequestDispatcher rd = request.getRequestDispatcher("errorpass.jsp");
   		                                 rd.forward(request, response); 
	                                   }       
    		                  con.close();   		       	
  				                         } catch (SQLException e) {
  				                        	RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
  	   		                                 rd.forward(request, response);
  					                                 System.out.print("--PROBLEMA NO SEGUNDO CATCH--"+ e);   
  				                                                   } finally {   				                                                	   
  				                                                              }
       	  
	}
}
    			  
					       