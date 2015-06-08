{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesFull}
	<section class="blog-widget">
		{iteration:widgetBlogRecentArticlesFull}
			<article class="post">
				<div class="postTop imgWrapper">
					<p>
					{option:widgetBlogRecentArticlesFull.image}
						{option:widgetBlogRecentArticlesFull.image}<img src="{$FRONTEND_FILES_URL}/blog/images/400x400/{$widgetBlogRecentArticlesFull.image}" alt="{$widgetBlogRecentArticlesFull.title}" onload="imgLoaded(this)" />{/option:widgetBlogRecentArticlesFull.image}
					{/option:widgetBlogRecentArticlesFull.image}
					</p>
				</div>
				<div class="postContent">
					<h3><a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}">{$widgetBlogRecentArticlesFull.title}</a></h3>
					<p class="postDate">
						{* Written on *}
							{$widgetBlogRecentArticlesFull.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}
					</p>
					<p class="introduction">
						{option:widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.introduction|truncate:320}{/option:widgetBlogRecentArticlesFull.introduction}
					<p>
				</div>
			</article>
		{/iteration:widgetBlogRecentArticlesFull}
		<!-- <div class="articles-more">
			<a href="{$var|geturlforblock:'Blog'}">Meer berichten</a>
		</div> -->
	</section>
{/option:widgetBlogRecentArticlesFull}
