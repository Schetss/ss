<header class="header-holder">
	<div class="main-header">
		<div class="mainPicture">
			<a href="/"><img onload="imgLoaded(this)" src="/src/Frontend/Core/Layout/images/logo.png" class="retina logo" alt="logo" /></a>
		</div>
		<h1 class="name"><a href="/">Stijn Schets</a></h1>
		<ul class="socialMedia">
			<li><a href="https://twitter.com/schetsstijn" target="_blank"><img src="/src/Frontend/Core/Layout/images/twitter.svg" alt="twitter" /></a></li>
			<li><a href="https://www.linkedin.com/in/schetsstijn" target="_blank"><img src="/src/Frontend/Core/Layout/images/linkedin.svg" alt="linkedin" /></a></li>
			<li><a href="https://www.facebook.com/Schets" target="_blank"><img src="/src/Frontend/Core/Layout/images/facebook.svg" alt="facebook" /></a></li>
		</ul>
		{* Navigation *}
		<div class="navigationHolder">
			<nav class="main-nav nav">
				{$var|getnavigation:'page':0:1}
			</nav>
			<div class="menuButton">		
				<a id="responsive-menu-button" href="#sidr-main"><span class="menuRes">menu</span><img alt="menu" src="/src/Frontend/Themes/Schetss/Core/Layout/img/icon-menu.svg" /></a>
			</div>	
		</div>
	</div>
</header>