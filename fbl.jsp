<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*{
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: rgb(228, 228, 228);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}
.container{
    border-radius: 15px;
    background-color: white;
    width: 300px;
    max-width: 100%;
    margin-left: 400px;
    height: 350px;

}
.form{
    padding:30px 40px ;
    /* margin-left: 500px; */
}
#username{
    border: 2px solid black;
    margin-top: 20px;
    padding: 7px;
    border-radius: 12px;
width: 200px;

}
#password{
    border: 2px solid black;
    margin-top:22px;
    padding: 7px;
    border-radius: 12px;
width: 200px;

}
#login {
 border: 2px solid blue;
margin-top:18px;
padding: 7px;
border-radius: 12px;
width: 200px;

background-color: blue;
color: aliceblue;
}
#cn{
    border: 2px solid greenyellow;
   margin-top:15px;
   margin-left: 28px;
   padding: 7px;
   border-radius: 12px;
   width: 140px;
   background-color: green;
   color: aliceblue;
   }
#fp{
    color: blue;
    margin-top: 20px;
    margin-left: 28px;
}
#line{
    margin-top: 10px;
    width: 220px;
   
   border: 1px solid black;
}
#t1{
    font-size: 80px;
    color: blue;
    margin-left: 200px;
    margin-top: -100px;
}
#t2,#t3{
    margin-left: 200px;
    margin-top: 10px;
}
.form #email_error,
.form #pass_error{
    margin-top: 0px;
    width: 210px;
    margin-left: 0px;
    color: #c62828;
    background: rgba(255,0,0,0.1);
    text-align: center;
    padding: 2px ;
    border-radius: 3px;
    border: 1px solid #EF9A9A;
    display: none;
}
</style>
</head>
<body>
 <div>
        <h1 id="t1">facebook</h1>
        <h3 id="t2">Facebook helps you connect and share</h3>
        <h3 id="t3">with the people in your life.</h3>
    </div> 
    <div class="container" >
        <form action="fbs.jsp" class="form" method="post"  id="form" onsubmit="return validation()" >
            <div>
                <input type="text" name="username" id="username" placeholder="Enter your Username">
                <br>
                <small class="small"></small>


            
                <input type="email" name="pass"  id="password" placeholder="Enter your gmail">
                <br>
        <small class="small2"></small>
 
                    
            </div>
            <div>
                <input type="submit" value="Log in" id="login">
                <hr id="line">
            </div>
            <div>
                <p id="fp">forgotten password?</p>
            </div>
            <div>
                <input type="button" value="Create New Account" id="cn">
            </div>
        </form>
    </div>
    
    <script type="text/javascript">


    function validation(){
        var username= document.getElementById('username').value
       
        var password=document.getElementById('password').value


        if (username ==="" || username ===null){
            // alert("please enter the valid username")
            document.getElementsByName('username')[0].style="border:1px solid red"
            document.getElementsByClassName('small')[0].innerText="This field cannot be empty"
            document.getElementsByClassName('small')[0].style="color:red"
            return false
        }
        else if(password === "" || password === null){
            // alert("please enter valid password")
            document.getElementById('password').style="border:1px solid red"
            document.getElementsByClassName('small2')[0].innerText="This field cannot be empty"
            document.getElementsByClassName('small2')[0].style="color:red"
            return false
        }
        




        console.log(password);
        console.log(username);

    }
    </script>
</body>
</html>