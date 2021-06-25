
// validation and messages of sign in connect
function MessBox_connectIN(email,password){
  var ValidEmail;
  var ValidPas;

  // checks if email address is valid
    if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(email) ) {
      ValidEmail=true;
  } else{
    ValidEmail=false;
    alert("Please enter valid Email address");
}

// checks password is not empty
  if (password.value.length == 0)
  {
     alert("Please enter password");
     ValidPas= false;
  }  	else {
      ValidPas= true;
}

// success
if(ValidEmail==true &&  ValidPas==true){
  alert("Connect successfully!");
  window.open('/');
  window.close();
}
  }