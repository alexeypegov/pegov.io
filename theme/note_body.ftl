<#assign title=(note.title)!title>
<#assign slug=(note.slug)!slug>
<#assign tags=(note.tags)!tags>
<#assign body=(note.body)!body>
<#assign date=(note.date)!date>
  
<#assign parsed=date?date("yyyy-MM-dd")>

<article class="text">
  <h2><a href="${slug}.html">${title}</a></h2>
  <div class="sub byline">
    <time class="date">${parsed?date}</time>
    <#-- <div class="tags"> -->
      <#-- <span class="tag">${tags?join("</span>,<span class=\"tag\">")}</span> -->
    <#-- </div> -->
  </div>
  <div class="text">
  ${body}
  </div>
</article>
