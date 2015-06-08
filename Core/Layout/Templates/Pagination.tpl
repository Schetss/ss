{option:pagination}
	{option:pagination.multiple_pages}
		<nav class="pagination">
			<ul>
				<li>
					<nobr>
						{option:pagination.show_previous}<a href="{$pagination.previous_url}" rel="prev nofollow" title="{$lblPreviousPage|ucfirst}">{/option:pagination.show_previous}
						{option:!pagination.show_previous}<span>{/option:!pagination.show_previous}
							&lsaquo; {$lblPreviousPage|ucfirst}
						{option:!pagination.show_previous}</span>{/option:!pagination.show_previous}
						{option:pagination.show_previous}</a>{/option:pagination.show_previous}
					</nobr>
				</li>

				{option:pagination.first}
					{iteration:pagination.first}<li class="circle"><a href="{$pagination.first.url}" rel="nofollow" title="{$lblGoToPage|ucfirst} {$pagination.first.label}">{$pagination.first.label}</a></li>{/iteration:pagination.first}
					<li class="circle"><span>&hellip;</span></li>
				{/option:pagination.first}

				{iteration:pagination.pages}
					<li {option:pagination.pages.current} class="selected2"{/option:pagination.pages.current}>
						{option:!pagination.pages.current}<a href="{$pagination.pages.url}" rel="nofollow" title="{$lblGoToPage|ucfirst} {$pagination.pages.label}">{/option:!pagination.pages.current}
						{option:pagination.pages.current}<span>{/option:pagination.pages.current}
							{$pagination.pages.label}
						{option:pagination.pages.current}</span>{/option:pagination.pages.current}
						{option:!pagination.pages.current}</a>{/option:!pagination.pages.current}
					</li>
				{/iteration:pagination.pages}

				{option:pagination.last}
					<li><span>&hellip;</span></li>
					{iteration:pagination.last}<li class="circle" ><a href="{$pagination.last.url}" rel="nofollow" title="{$lblGoToPage|ucfirst} {$pagination.last.label}">{$pagination.last.label}</a></li>{/iteration:pagination.last}
				{/option:pagination.last}

				<li>
					<nobr>
						{option:pagination.show_next}<a href="{$pagination.next_url}" rel="next nofollow" title="{$lblNextPage|ucfirst}">{/option:pagination.show_next}
						{option:!pagination.show_next}<span>{/option:!pagination.show_next}
							{$lblNextPage|ucfirst} &#8250;
						{option:!pagination.show_next}</span>{/option:!pagination.show_next}
						{option:pagination.show_next}</a>{/option:pagination.show_next}
					</nobr>
				</li>
			</ul>
		</nav>
	{/option:pagination.multiple_pages}
{/option:pagination}