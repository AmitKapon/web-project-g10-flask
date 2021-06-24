
// validation and messages of contact me page
function MessBox_contactMe(phone,email,text){
    var ValidPhone, ValidEmail,ValidText;
    var re = /^[0-9]{0,20}$/im;
    // checks if email address is valid
    if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(email)) {
        ValidEmail=true;
    } else {
        ValidEmail=false;
        alert("Please enter valid Email address");

    }// checks if phone is valid (0 to 20 characters) but not a must as input
    if(re.test(phone)) {
      ValidPhone=true;
    }
    else {
      ValidPhone=false;
      alert("Please enter valid Phone Number");

  }
   // text is a must
  if (!isNaN(text)) {
    ValidText = false;
    alert("Please write something ..");
  } else {
    ValidText=true;
  }

  // contact

    if(ValidEmail==true && ValidPhone==true && ValidText==true){
      alert("Thank you! Your message has been received");
/*
      window.open("{{ url_for('main_page')}}" );
      window.close();
*/

  }
  }
