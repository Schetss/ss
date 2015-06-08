{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<!-- <div id="fb-root"></div> -->
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3&appId=601278376597485";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>


	<main id="main" class="main-holder main-default" role="main">
		{* Header *}
		{include:Core/Layout/Templates/Header.tpl}
		<div class="main">
			{* Main position *}
			{option:positionMain}
				{iteration:positionMain}
				{option:!positionMain.blockIsHTML}
					{$positionMain.blockContent}
				{/option:!positionMain.blockIsHTML}
				{option:positionMain.blockIsHTML}
					{$positionMain.blockContent}
				{/option:positionMain.blockIsHTML}
				{/iteration:positionMain}
			{/option:positionMain}
		</div>	
	</main>

	
	{* Footer *}
	{include:Core/Layout/Templates/Footer.tpl}

</body>
</html>