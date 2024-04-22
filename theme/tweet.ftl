
<#setting locale="ru_RU">
<#setting date_format="dd MMMM yyyy">

<#assign body=(note.body)!body>
<#assign date=(note.date)!date>
<#assign slug=(note.slug)!slug>
  
<#assign parsed=date?date("yyyy-MM-dd")>

<article itemscope itemtype="https://schema.org/BlogPosting" class="object tweet">
  ${body}
  <div class="object-footer">
	<a href="${slug}.html"><time itemprop="datePublished" class="date" datetime="${parsed?string["yyyy-MM-dd'T00:00:00+00:00'"]}">${parsed?date}</time></a>
  </div>
</article>
