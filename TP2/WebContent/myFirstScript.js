function validateMyForm(){
	var fname = document.forms["form"]["fName"].value;
	var lname = document.form.lName.value;
	var bDay = document.form.bDay.value;
	
    if (fname==null || fname=="") {
        alert("Remplissez le prénom ");
        return false;
    }
    if (lname==null || lname==""){
    	alert("Remplissez le nom");
        return false;
        }
    if (bDay==null || bDay==""){
    	alert("Remplissez la date d'anniverssaire");
        	return false;
        }
    if (fname!=null && fname!=""){
    	alert("Vous avez entreé \n First Name: "+fname+"\n Last Name: "+lname+"\n BirthDay: "+bDay);
    } 
}
function toogleFM(couleur,type){
	
	var x= document.querySelectorAll(".sexbordure");
	var y = document.querySelectorAll(".sex");
	var z= document.querySelectorAll("input");
	var i;
	for (i=0; i<x.length; i++){
		x[i].style.borderColor=couleur;
		y[i].style.color=couleur;
	}
	for (i=0; i<z.length; i++){
		z[i].style.borderColor=couleur;
	}
	document.querySelector("h1").innerHTML="Hello "+type;
	
}