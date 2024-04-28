<#assign body=(note.body)!body>
<#assign date=(note.date)!date>
<#assign slug=(note.slug)!slug>
  
<#assign parsed=date?date("yyyy-MM-dd")>

<article class="object image">
  ${body}
  <div class="object-footer">
	<a href="${slug}.html"><time class="date">${parsed?date}</time></a>
  </div>
</article>
