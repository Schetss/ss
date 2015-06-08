{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	
	{* Header *}
	{include:Core/Layout/Templates/Header.tpl}
	<a class="back-to-top opacity0" href="#"></a>
	<div class="error404">
		<div class="error404Content">
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
	</div>

	{* Footer *}
	{include:Core/Layout/Templates/Footer.tpl}

</body>
</html>