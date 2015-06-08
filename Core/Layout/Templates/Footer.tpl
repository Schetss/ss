<noscript>
	<div class="holder">
		<div class="row">
			<div class="alert-box notice">
				<h4>{$lblEnableJavascript|ucfirst}</h4>
				<p>{$msgEnableJavascript}</p>
			</div>
		</div>
	</div>
</noscript>

{* General Javascript *}
{iteration:jsFiles}
	<script src="{$jsFiles.file}"></script>
{/iteration:jsFiles}

{* Theme specific Javascript *}
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="{$THEME_URL}/Core/Js/min/masonry.pkgd.min.js"></script>
<script src="{$THEME_URL}/Core/Js/min/theme-min.js"></script>
<script src="{$THEME_URL}/Core/Js/min/jquery.sidr.min.js"></script>
<script src="{$THEME_URL}/Core/Js/min/jquery.visible.min.js"></script>
<script src="{$THEME_URL}/Core/Js/min/ga-min.js"></script>

{* Site wide HTML *}
{$siteHTMLFooter}
