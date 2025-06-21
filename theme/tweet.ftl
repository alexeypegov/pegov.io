<#setting locale="ru_RU">
<#setting date_format="dd MMMM yyyy">

<#assign body=(note.body)!body>
<#assign date=(note.date)!date>
<#assign tags=(note.tags)!tags>
<#assign slug=(note.slug)!slug>

<#assign parsed=date?date("yyyy-MM-dd")>

<article class="object" data-view="tweet" id="${slug}">
  <div class="sub">
  	<a href="${slug}.html"><time class="date">${parsed?date}</time></a>
    <span class="tags">
      <span class="tag">${tags?join("</span>, <span class=\"tag\">")}</span>
    </span>
  </div>
  ${body}
</article>
