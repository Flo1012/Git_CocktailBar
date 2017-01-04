
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/projetmaven">Cocktail Bar</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Cocktails<span
						class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Liste des cocktails</a></li>
						<li><a href="#">Ajouter un cocktail</a></li>
					</ul></li>
			</ul>

			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Ingrédients<span
						class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="listeingredient.html">Liste des ingrédients</a></li>
						<li><a href="ajoutingredient.html">Ajouter un ingrédient</a></li>
					</ul></li>
			</ul>

			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Rechercher">
				</div>
				<button type="submit" class="btn btn-default">Valider</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<a href="https://maven.apache.org/" target="_blank" class="btn btn-info">MAVEN</a>
				<a href="https://bootswatch.com/" target="_blank" class="btn btn-info">BOOTSWACTH</a>
				<a href="http://docs.emmet.io/" target="_blank" class="btn btn-info">EMMET</a>	
			</ul>
		</div>
	</div>
</nav>