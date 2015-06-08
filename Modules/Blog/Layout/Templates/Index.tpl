{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}



<div class="grid">
	{iteration:items}
		  <div class="grid-sizer"></div>
		  <div class="grid-item">
		  	{option:items.image}
		  	<div class="itemTop imgWrapper">
				<p>
					<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$items.image}" onload="imgLoaded(this)"/>
				</p>
			</div>
			{/option:items.image}	
			<div class="itemContent">
				<h3><a href="{$items.full_url}">{$items.title}</a></h3>
				<p class="itemDate">
					{* Written on *}
						{$items.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}
				</p>
				<p class="introduction">
					{option:items.introduction}{$items.introduction}{/option:items.introduction}
				<p>
			</div>
		</div>
	{/iteration:items}	
</div>
{include:Core/Layout/Templates/Pagination.tpl}
