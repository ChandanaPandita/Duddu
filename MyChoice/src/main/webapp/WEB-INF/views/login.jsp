<%@include file="header.jsp" %>
<div>
<hr></hr>  
    <div align="center" class="form">
    <br></br>
    <br></br>
    <br></br>
    <br></br>
   <form name='f' action="<c:url value='j_spring_security_check'/>" method='POST' >
      <table>
         <tr>
           <td style="font-size: 15px">Your Name:<form:errors path="name" style="color:Red"></form:errors></td> <td><input type='text' name='j_username' style="width:300px;height: 30px" placeholder="Enter UserName" required="required"/></td><td><br></br></td>
         </tr>
         <tr><td><br></br></td></tr>
         <tr>
           <td style="font-size: 15px">Your Password:<form:errors path="name" style="color:Red"></form:errors></td> <td><input type='password' name='j_password' style="width: 300px;height: 30px" placeholder="Enter Password" required="required"/></td><td><br></br></td>
         </tr>
          <tr><td><br></br></td></tr>
         <tr><td></td>
         
            <td><input name="submit" type="submit" value="LogIn" /></td>
         </tr>
      </table>
  </form>
 </div>
</div>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<%@include file="footer.jsp" %>