


function validation()
{
    var form=document.getElementById("new_employee");
    var email=document.getElementById("employee_email").value;
    var text=document.getElementById("form-validation-text");
    var pattern=/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;
    if(email.match(pattern))
    {
        
        text.innerHTML ="Your Email Address is Valid.";
        text.style.color ="#00ff00";

    }
    else{
        
        text.innerHTML ="Please enter valid email";
        text.style.color ="#ff0000";
    }
   
}
    
  

function checkbox_validation(){
        if($('#employee_remember_me').is(':checked')){
            $(":submit").removeAttr("disabled", true);
        }
        else{
            $(":submit").attr("disabled", true);

        }
}

function matchPassword() {  
    var text =document.getElementById("match-text");
    var pw1 = document.getElementById("employee_password").value;  
    var pw2 = document.getElementById("employee_password_confirmation").value;  
    if(pw1 != pw2)  
    {   
    console.log(pw1,pw2);
      text.innerHTML="Passwords did not match";  
      text.style.color ="#ff0000";
    } 
    else{
        text.innerHTML=" ";  
      

    }
  }  

