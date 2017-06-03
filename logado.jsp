<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css" type="text/css">
       <title>Log in</title>
       <script type="text/javascript">
       function showProvinces(){
    	     var selectBox =document.getElementById('home1');
    	     var userInput =selectBox.options[selectBox.selectedIndex].value;
    	        if (userInput =='brazil'){
    	         document.getElementById('brazilProvinces').style.visibility ='visible';
    	        } else {
    	         document.getElementById('brazilProvinces').style.visibility ='hidden';
    	         }
    	        if (userInput =='europe'){
       	         document.getElementById('europeProvinces').style.visibility ='visible';
       	        } else {
       	         document.getElementById('europeProvinces').style.visibility ='hidden';
       	         }
    	        if (userInput =='usa'){
          	         document.getElementById('usaProvinces').style.visibility ='visible';
          	        } else {
          	         document.getElementById('usaProvinces').style.visibility ='hidden';
          	         }
    	      return false;
    	    }
</script>
</head>      
<body> 
  <center><div id="navigation">
   <table ><tr><td>
        <ul>
         <li> </li>
         <li><a href=" contact.jsp "> Contact Us</a></li>
        <li><a href=" remover.jsp "> LogOut </a></li>
      </ul>
    </td></tr></table> 
  </div></center> 
  <div align="center">
   <img src="images/logo.jpg"/> 
      </div>
       <div id="container">
           
           
            <%
             String id_client = (String)session.getAttribute("autentication");      
             if(id_client== null)
                 response.sendRedirect("index.html");  
            %>   
  <table><tr>
   <td><h3><%= session.getAttribute("title")%> <%= session.getAttribute("lastname")%>.<br> Subscription  Expired on :&nbsp;&nbsp;<%= session.getAttribute("datavenc")%></h3></td></tr>  
   <tr><td></td>
   </tr></table>
    <div align="center">
    <form name= "frmTrade" action="Trade" method ="post">  
   
    <label for="home" >Select your Country:&nbsp;&nbsp;</label>
    <select name="home" id="home">
     <option value="">- Select -</option>
    <option value="europe"> Europe </option>
    <option value="usa"> USA </option>
    <option value="united_kingdom"> United Kingdom </option>
     <option value="brazil">Brazil</option>
     <option value="africa"> Africa </option> 
      <option value="south_africa"> South Africa </option> 
      <option value="middle_east"> Middle East </option>
      <option value="isreal"> Israel </option>
      <option value="turkey"> Turkey </option> 
      <option value="russia"> Russia </option>
      <option value="asia"> Asia </option>
      <option value="india"> India </option>
      <option value="china"> China </option>
      <option value="hongkong"> Hong Kong </option>
      <option value="singapure"> Singapure </option>
      <option value="japan"> Japan </option>
      <option value="australia"> Australia </option>
      <option value="canada"> Canada </option>
      <option value="mexico"> Mexico </option>
      <option value="central_america"> Central America </option>
      <option value="south_america"> South America </option> 
   </select>
 <p>
 <label >Choose the Country:</label>
    <select name="country" id="country">
     <option value="">- Select -</option>
    <option value="united_kingdom"> United Kingdom </option>
      <option value="europe"> Europe </option> 
     <option value="usa"> USA </option>
     <option value="africa"> Africa </option> 
      <option value="south_africa"> South Africa </option> 
      <option value="middle_east"> Middle East </option>
      <option value="isreal"> Israel </option>
      <option value="turkey"> Turkey </option> 
      <option value="russia"> Russia </option>
      <option value="asia"> Asia </option>
      <option value="india"> India </option>
      <option value="china"> China </option>
      <option value="hongkong"> Hong Kong </option>
      <option value="singapure"> Singapure </option>
      <option value="japan"> Japan </option>
      <option value="australia"> Australia </option>
      <option value="canada"> Canada </option>
      <option value="mexico"> Mexico </option>
      <option value="central_america"> Central America </option>
      <option value="south_america"> South America </option> 
</select>
<p>
     <input  type="submit" value="Search" >
   </form>
  </div> 
   <p>
   <br>
   <p>
   
    
   <form name= "frmTrade" action="Trade" method ="post">
    <div align="center"> 
    <label for="home1" >Select your Country:</label>
    <select name="home" id="home1"  onchange ="return showProvinces();">
     <option value="">- Select -</option>
     <option value="brazil">Brazil</option>
    <option value="europe"> Europe </option>
    <option value="usa"> USA </option>
   </select>
</div>
<div align="center" id="brazilProvinces" style="visibility: hidden;">
 <label for="selectbrazilprovince">Choose the Country:</label>
    <select name="country" id="selectbrazilprovince">
     <option value="">Select</option>
    <option value="united_kingdom"> United Kingdom </option>
      <option value="europe"> Europe </option> 
      <option value="middle_east"> Middle East </option>
      <option value="isreal"> Israel </option>
</select>
</div>
   
<div align="center" id="europeProvinces" style="visibility: hidden;">
 <label for="selecteuropeprovince">Choose the Country:</label>
    <select name="country" id="selecteuropeprovince">
     <option value="">Select</option>
      <option value="united_kingdom"> United Kingdom </option>
     <option value="japan">Japan</option>
     <option value="china">Chana</option>
</select>
</div>

<div align="center" id="usaProvinces" style="visibility: hidden;">
 <label for="selectusaprovince">Choose the Country:</label>
    <select name="country" id="selectusaprovince">
     <option value="">Select</option>
     <option value="europe">Europe</option>
     <option value="asia">Asia</option>
     <option value="china">China</option>
</select>
</div>
 <center> <input type="submit" value="Search" ></center>
</form> 
  </div>
</body>
</html>