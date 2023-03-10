<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Sign Up Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
        integrity="sha512-PgQMlq+nqFLV4ylk1gwUOgm6CtIIXkKwaIHp/PAIWHzig/lKZSEGKEysh0TCVbHJXCLN7WetD8TFecIky75ZfQ=="
        crossorigin="anonymous" />
        <style>
        @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;500;600&display=swap");

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Nunito', sans-serif;
}

body{
    background: rgb(244, 203, 248);
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
}

.container{
    background-color: #fff;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 2.8px 2.2px rgba(0, 0, 0, 0.034), 0 6.7px 5.3px rgba(0,0,0,0.048), 0 12.8px 10.5px rgba(0,0,0,0.58) ;
    width: 550px;
    max-width: 100%;
}

.header{
    background-color: #b25dda;
    padding: 30px 0;
}

.header h2{
    color: #000;
    font-size: 26px;
    text-transform: uppercase;
    text-align: center;
}

.form{
    padding: 40px;
}

.form-control{
    margin-bottom: 30px;
    position: relative;
}

.form-control label{
    display: inline-block;
    margin-bottom: 5px;
}

.form-control input{
    width: 100%;
    border: 2px solid #f0f0f0;
    font-size: 14px;
    border-radius: 5px;
    padding: 12px;
    display: block;
}

.form-control input:focus{
    outline: 0;
    border-color: #777;
}

.form-control.success input{
    border-color: #39df7e;
}

.form-control.error input{
    border-color: #df3434;
}

.form-control i {
    position: absolute;
    right: 12px;
    top: 40px;
    visibility: hidden;
}

.form-control.error small{
    visibility: visible;
}

.form-control small{
    color: #df3434;
    position: absolute;
    left: 0;
    visibility: hidden;
}

.form-control.success i.fa-check-circle{
    color: #39df7e;
    visibility: visible;
}

.form-control.error i.fa-exclamation-circle{
    color: #df3434;
    visibility: visible;
}

.form .btn{
    background: #b25dda;
    border-radius: 5px;
    border: none;
    outline: none;
    display: block;
    font-size: 16px;
    padding: 15px 0;
    margin-top: 15px;
    width: 100%;
    color: #fff;
    font-weight: bold;
    text-transform: uppercase;
}

.form .btn:hover{
    background: #c59cd8;
}
        </style>
        
</head>
<body>

    <div class="container">
        <div class="header">
            <h2>Sign Up Form</h2>
        </div>

        <form action="regs.jsp" class="form" id="form">
            <div class="form-control">
                <label>First Name</label>
                <input type="text" name="firstname" id="username" placeholder="Enter Your First Name" autocomplete="off">
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error Message</small>
            </div>

            <div class="form-control">
                <label>Last Name</label>
                <input type="text" name="lastname" id="lastname" placeholder="Enter Your Last Name" autocomplete="off" >
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error Message</small>
            </div>

            <div class="form-control">
                <label>Email</label>
                <input type="text" name="email" id="email" placeholder="Enter Your Email" autocomplete="off">
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error Message</small>
            </div>

            <div class="form-control">
                <label>Password</label>
                <input type="password" name="password" id="password" placeholder="Enter Your Password" autocomplete="off">
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error Message</small>
            </div>

            <div class="form-control">
                <label>Confirm Password</label>
                <input type="password" name="cpassword" id="cpassword" placeholder="Confirm Password" autocomplete="off">
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error Message</small>
            </div>
            <input type="submit" value="Submit" class="btn">
        </form>
    </div>








    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
    const form = document.getElementById('form');
    const username = document.getElementById('username');
    const lastname = document.getElementById('lastname');
    const email = document.getElementById('email');
    const password = document.getElementById('password');
    const cpassword = document.getElementById('cpassword');

    form.addEventListener('submit', (event) =>{
        event.preventDefault();

        Validate();
    })

    const sendData = (usernameVal, sRate, Count) => {
        if(sRate === Count){
            swal("Hello " + usernameVal , "You are Registered", "success");
        }
    }

    const SuccessMsg = (usernameVal) => {
        let formContr = document.getElementsByClassName('form-control');
        var Count = formContr.length - 1;
        for(var i = 0; i < formContr.length; i++){
            if(formContr[i].className === "form-control success"){
                var sRate = 0 + i;
                console.log(sRate);
                sendData(usernameVal, sRate, Count);
            }
            else{
                return false;
            }
        }
    }


    const isEmail = (emailVal) =>{
        var atSymbol = emailVal.indexOf('@');
        if(atSymbol < 1) return false;
        var dot = emailVal.lastIndexOf('.');
        if(dot <= atSymbol + 2) return false;
        if(dot === emailVal.length -1) return false;
        return true;
    }

    function Validate(){
        const usernameVal = username.value.trim();
        const lastnameVal = lastname.value.trim();
        const emailVal = email.value.trim();
        const passwordVal = password.value.trim();
        const cpasswordVal = cpassword.value.trim();

        //username
        if(usernameVal === ""){
            setErrorMsg(username, 'first name cannot be blank');
        }
        else if(usernameVal.length <=2){
            setErrorMsg(username, 'min 3 char');
        }
        else{
            setSuccessMsg(username);
        }

        //last name

        if(lastnameVal === ""){
            setErrorMsg(lastname, 'last name cannot be blank');
        }
        else if(lastnameVal.length <=2){
            setErrorMsg(lastname, 'min 3 char');
        }
        else{
            setSuccessMsg(lastname);
        }

        //email
        if(emailVal === ""){
            setErrorMsg(email, 'email cannot be blank');
        }
        else if(!isEmail(emailVal)){
            setErrorMsg(email, 'email is not valid');
        }
        else{
            setSuccessMsg(email);
        }

        //password
        if(passwordVal === ""){
            setErrorMsg(password, 'password cannot be blank');
        }
        else if(passwordVal.length <= 7){
            setErrorMsg(password, 'min 8 char');
        }
        else{
            setSuccessMsg(password);
        }

        //confirm password
        if(cpasswordVal === ""){
            setErrorMsg(cpassword, 'confirm password cannot be blank');
        }
        else if(passwordVal != cpasswordVal){
            setErrorMsg(cpassword, 'Not Matched!');
        }
        else{
            setSuccessMsg(cpassword);
        }
        SuccessMsg(usernameVal);


    }

    function setErrorMsg(input, errormsgs){
        const formControl = input.parentElement;
        const small = formControl.querySelector('small');
        formControl.className = "form-control error";
        small.innerText = errormsgs;
    }

    function setSuccessMsg(input){
        const formControl = input.parentElement;
        formControl.className = "form-control success";
    }

    </script>
</body>
</html>