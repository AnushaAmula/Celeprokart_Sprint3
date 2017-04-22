<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://www.gstatic.com/firebasejs/3.7.6/firebase.js"></script>
<title>Insert title here</title>
<script>

console.log("Done");

var config = {
	    apiKey: "AIzaSyBIs_ee86VeLrfax-R6sonQkMDsr_VtbLg",
	    authDomain: "celeprokart-913f5.firebaseapp.com",
	    databaseURL: "https://celeprokart-913f5.firebaseio.com",
	    projectId: "celeprokart-913f5",
	    storageBucket: "celeprokart-913f5.appspot.com",
	    messagingSenderId: "386708849208"
	  };
firebase.initializeApp(config);
function writeUserData(userId, name, email, imageUrl) {
	  firebase.database().ref('users/' + userId).set({
	    username: name,
	    email: email,
	    profile_picture : imageUrl
	  });
	}
	 writeUserData("indra","kiran","nik","cfvg");
	  
	  console.log("Done");


</script>
</head>
<body>

</body>
</html>