<#assign body=(note.body)!body>
<#assign date=(note.date)!date>
<#assign slug=(note.slug)!slug>
  
<#assign parsed=date?date("yyyy-MM-dd")>

<article class="object video">
  <div class="object-header">
	<a href="${slug}.html"><time itemprop="datePublished" class="date">${parsed?date}</time></a>
  </div>
  ${body}
</article>
