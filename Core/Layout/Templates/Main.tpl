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

	{* Header *}
	{include:Core/Layout/Templates/Header.tpl}
	<a class="back-to-top opacity0" href="#"></a>
	<main id="main" class="main-holder main-default" role="main">
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

	<footer class="holder footer-holder">
		<div class="row">
			<div class="footer-left footer-block">
				{* FooterLinks position *}
				{option:positionFooterLinks}
					{iteration:positionFooterLinks}
					{option:!positionFooterLinks.blockIsHTML}
						{$positionFooterLinks.blockContent}
					{/option:!positionFooterLinks.blockIsHTML}
					{option:positionFooterLinks.blockIsHTML}
						{$positionFooterLinks.blockContent}
					{/option:positionFooterLinks.blockIsHTML}
					{/iteration:positionFooterLinks}
				{/option:positionFooterLinks}
			</div>
			<div class="footer-middle footer-block">
				{* FooterMidden position *}
				{option:positionFooterMidden}
					{iteration:positionFooterMidden}
					{option:!positionFooterMidden.blockIsHTML}
						{$positionFooterMidden.blockContent}
					{/option:!positionFooterMidden.blockIsHTML}
					{option:positionFooterMidden.blockIsHTML}
						{$positionFooterMidden.blockContent}
					{/option:positionFooterMidden.blockIsHTML}
					{/iteration:positionFooterMidden}
				{/option:positionFooterMidden}
			</div>
			<div class="footer-right footer-block">
				{* FooterRechts position *}
				{option:positionFooterRechts}
					{iteration:positionFooterRechts}
					{option:!positionFooterRechts.blockIsHTML}
						{$positionFooterRechts.blockContent}
					{/option:!positionFooterRechts.blockIsHTML}
					{option:positionFooterRechts.blockIsHTML}
						{$positionFooterRechts.blockContent}
					{/option:positionFooterRechts.blockIsHTML}
					{/iteration:positionFooterRechts}
				{/option:positionFooterRechts}
			</div>
			<div id="stickyBottom"></div>
		</div>
		<img class="logoVrd" src="/src/Frontend/Core/Layout/images/logo_vrd.svg" alt="logo VRD" />
	</footer>

	{* Footer *}
	{include:Core/Layout/Templates/Footer.tpl}

</body>
</html>