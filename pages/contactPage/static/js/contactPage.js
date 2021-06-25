
// validation and messages of contact me page
function MessBox_contactMe(phonenumber,email,text){
    var ValidPhone, ValidEmail,ValidText;
    var re = /^[0-9]{0,20}$/im;
    // checks if email address is valid
    if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(email)) {
        ValidEmail=true;
    } else {
        ValidEmail=false;
        alert("בבקשה להכניס כתובת מייל חוקית");

    }// checks if phone is valid (0 to 20 characters) but not a must as input
    if(re.test(phonenumber)) {
      ValidPhone=true;
    }
    else {
      ValidPhone=false;
      alert("בבקשה להכניס מספר טלפון חוקי");

  }
   // text is a must
  if (!isNaN(text)) {
    ValidText = false;
    alert("בבקשה לרשום משהו בתיבת הפנייה");
  } else {
    ValidText=true;
  }

  // contact
    if(ValidEmail==true && ValidPhone==true && ValidText==true){
      alert("תודה רבה לך! ההודעה נשלחה");
  }
  }

