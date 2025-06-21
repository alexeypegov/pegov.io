<#setting locale="ru_RU">
<#setting date_format="dd MMMM yyyy">

<#assign title=(note.title)!title>
<#assign slug=(note.slug)!slug>
<#assign tags=(note.tags)!tags>
<#assign body=(note.body)!body>
<#assign date=(note.date)!date>

<#assign parsed=date?date("yyyy-MM-dd")>

<article data-view="post" id="${slug}">
  <h2><a href="${slug}.html">${title}</a></h2>
  <div class="sub">
    <time class="date">${parsed?date}</time>
    <span class="tags">
      <span class="tag">${tags?join("</span>, <span class=\"tag\">")}</span>
    </span>
  </div>
  <div class="text">
  ${body}
  </div>
</article>
