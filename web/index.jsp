<%-- 
    Document   : index
    Created on : 29-nov-2016, 11:49:46
    Author     : Marvin J. Hernandez Lopez
    GitHub     : https://github.com/mhernandez395/formulario.git
--%>

<%@page import="validation.Validation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form>
            <fieldset>
                <legend>Form</legend>
            <div class="form-group col-md-2">
              <label>Nickname:</label>
              <input type="text" class="form-control" name="nickname" required>
            </div>
                
            <div class="form-group col-md-2">
              <label>Name:</label>
              <input type="text" class="form-control" name="name" required>
            </div>
            
            <div class="form-group col-md-2">
              <label>Age:</label>
              <input type="number" class="form-control" name="age" step="1" required>
            </div>
            
            <div class="form-group col-md-2">
              <label>Weight (kg):</label>
              <input type="number" class="form-control" name="weight" step="1" required>
            </div>
                
            <div class="form-group col-md-2">
              <label>Sex:</label>
              <label class="radio-inline">
                <input type="radio" name="optradio">Man
              </label>
              <label class="radio-inline">
                <input type="radio" name="optradio">Woman
              </label>
            </div>
            
            <div class="form-group col-md-2">
              <label for="sel1">Civil status:</label>
                <select class="form-control" id="sel1">
                  <option>Single</option>
                  <option>Married</option>
                  <option>Divorced</option>
                </select>
            </div>
            
            <div class="form-group col-md-2">
              <label for="sel1">Hobbies:</label>
              <label class="checkbox-inline"><input type="checkbox" value="">Fishing</label>
              <label class="checkbox-inline"><input type="checkbox" value="">Programming</label>
              <label class="checkbox-inline"><input type="checkbox" value="">Guitar</label>
            </div>
            
            <div class="form-group col-md-2">
              <label>E-mail:</label>
              <input type="text" class="form-control" name="email" required>
            </div> 
             
            </fieldset>
            <div class="form-group col-md-2">
                <button type="submit" class="btn btn-success" name="ok" value="convert">SEND</button>
            </div>
         </form>
        <%
            //convert
            if(request.getParameter("ok") != null)
            {
            
                try{
                    // validate name 
                    if(Validation.validateName(request.getParameter("name")))
                    {
                     
                        out.println("<div class='alert alert-success col-sm-3'>Name: "+request.getParameter("name")+"</div>");

                    }
                    else
                    {
                        out.println("<div class='alert alert-danger col-sm-3'>Wrong Name</div>");
                    }
                    
                    // validate age
                    
                    int number=Integer.parseInt(request.getParameter("age"));
                    if(Validation.isInteger(request.getParameter("age")))
                    {
                        
                        if(Validation.isBetween(number,99,16))
                        {
                            out.println("<div class='alert alert-success col-sm-3'>Age: "+request.getParameter("age")+"</div>");

                        }
                        else
                        {
                            out.println("<div class='alert alert-danger col-sm-3'>Age not between 16 and 99</div>");
                        }

                    }
                    else
                    {
                        out.println("<div class='alert alert-danger col-sm-3'>AGE IS NOT NUMBER</div>");
                    }
                    
                    
                    
                    // validate weight
                    
                    number=Integer.parseInt(request.getParameter("weight"));
                    if(Validation.isInteger(request.getParameter("weight")))
                    {
                        
                        if(Validation.isBetween(number,100,40))
                        {
                            out.println("<div class='alert alert-success col-sm-3'>Weight: "+request.getParameter("weight")+" kg</div>");

                        }
                        else
                        {
                            out.println("<div class='alert alert-danger col-sm-3'>Weight not between 40 and 100</div>");
                        }

                    }
                    else
                    {
                        out.println("<div class='alert alert-danger col-sm-3'>Weight IS NOT NUMBER</div>");
                    }
                    
                    
                    // validate email
                    
                    if(Validation.validateEmail(request.getParameter("email")))
                    {
                     
                        out.println("<div class='alert alert-success col-sm-3'>Email: "+request.getParameter("email")+"</div>");

                    }
                    else
                    {
                        out.println("<div class='alert alert-danger col-sm-3'>Wrong e-mail</div>");
                    }
                    
                
                }
                
                catch (Exception e)
                {
                    out.println("<div class='alert alert-danger col-sm-3'>Error</div>");
                }
            
            }
        %>
    </body>
</html>
