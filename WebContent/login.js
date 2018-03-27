$(document).ready(function(event){
	$("#logbtn").click(
			function(event){
				event.preventDefault();
				$.ajax({
					type:"POST",
					url: "LoginServlet",
					data: $('form#logFrm').serialize(),
					success:function(msg){
						alert("you have login successfully   ");
					},
					error:function(msg){
						alert("login failed");
					}
				});
			});

});
