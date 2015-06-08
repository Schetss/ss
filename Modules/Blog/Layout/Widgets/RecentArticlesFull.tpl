{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesFull}
<div class="grid">
	{iteration:widgetBlogRecentArticlesFull}
		  <div class="grid-sizer"></div>
		  <div class="grid-item">
		  	{option:widgetBlogRecentArticlesFull.image}
		  	<div class="itemTop imgWrapper">
				<p>
					<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$widgetBlogRecentArticlesFull.image}" onload="imgLoaded(this)"/>
				</p>
			</div>
			{/option:widgetBlogRecentArticlesFull.image}
			<div class="itemContent">
				<h3><a href="{$items.full_url}">{$items.title}</a></h3>
				<p class="itemDate">
					{* Written on *}
						{$widgetBlogRecentArticlesFull.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}
				</p>
				<p class="introduction">
					{option:widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.introduction}{/option:widgetBlogRecentArticlesFull.introduction}
				<p>
			</div>
		</div>
	{/iteration:widgetBlogRecentArticlesFull}	
</div>
{/option:widgetBlogRecentArticlesFull}
{include:Core/Layout/Templates/Pagination.tpl}

