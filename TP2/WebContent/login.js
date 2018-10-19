$(document).ready(function() {
	$("#bouton").click(function(event) {
		event.preventDefault();
		var login = $("input#login").val();
		var mdp = $("input#mdp").val();
		$.post("login",

		{
			login : login,
			mdp : mdp
		},

		function(response) {
			if (response == 1)
				$('#faux').text("Good Login and Password");
			else
				$('#faux').text("Login or wrong Password ");

		});
	});
});