<!DOCTYPE HTML>
<html>
	<head>
		<title>Cadastrar Aluno</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<script src="js/index.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
	</head>
	<body>

	<!-- Header -->
		<div id="header">
			<div id="nav-wrapper"> 
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="index.html">In�cio</a></li>
						<li><a href="novo-aluno.html">Adicionar Aluno</a></li>
						<li><a href="pesquisar.html">Pesquisar Aluno</a></li>
						<li class="active"><a href="ranking.jsp">Ranking</a></li>
					</ul>
				</nav>
			</div>
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a href="#">Sistema X</a></h1>
					<a href="#main"><span class="fa fa-chevron-down"></span></a>
				</div>
			</div>
		</div>
	<!-- Header --> 

	<!-- Main -->
		<div id="main" class="quest">
			<div id="content" class="container">
				<section class="questionario">
					<header>
						<h2>Pesquisar Aluno</h2>
					</header>							
					<form action="pesquisar.jsp" onsubmit="return validaPesquisa();">
		                <div>
                    		<input type="text" name="matricula" placeholder="Matr�cula" />
                    		<input type="submit" name="pesquisar" value="Pesquisar" >	
		                </div>
                                            <% out.println("<p>1 - Faltas Recorrentes?</p>");
                                            out.println("<input type=\"radio\" value=\"1\" name=\"fator1\" id=\"fator1_s\" />");
                                            out.println("<label for=\"fator1_s\">Sim</label>");
                                            out.println("<input type=\"radio\" value=\"0\" name=\"fator1\" id=\"fator1_n\" />");
                                            out.println("<label for=\"fator1_n\">N�o</label>");
                                            out.println("<input type=\"radio\" value=\"-1\" name=\"fator1\" id=\"fator1_d\" />");
                                            out.println("<label for=\"fator1_d\">D�vida</label>"); %>
					</form>
				</section>
			</div>
		</div>
	<!-- /Main -->

	<!-- Tweet -->
		<div id="tweet">
			<div class="container">
				<section>
					<blockquote>&ldquo;A educa��o � um processo social, � desenvolvimento. N�o � a prepara��o para a vida, � a pr�pria vida.&rdquo; - John Dewey</blockquote>
				</section>
			</div>
		</div>
	<!-- /Tweet -->

	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<section>
					<header>
						<h2>Contate-nos</h2>
						<span class="byline">Em caso de d�vidas, cr�ticas ou elogios, envie uma mensagem em um dos seguintes links</span>
					</header>
					<ul class="contact">
						<li><a href="#" class="fa fa-twitter"><span>Twitter</span></a></li>
						<li class="active"><a href="#" class="fa fa-facebook"><span>Facebook</span></a></li>
						<li><a href="#" class="fa fa-instagram"><span>Instagram</span></a></li>
						<li><a href="#" class="fa fa-envelope"><span>Gmail</span></a></li>
					</ul>
				</section>
			</div>
		</div>
	<!-- /Footer -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>
	</body>
</html>