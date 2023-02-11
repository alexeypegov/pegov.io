<#assign title=(note.title)!title>
<#assign slug=(note.slug)!slug>
<#assign rfc_3339=(note.rfc_3339)!rfc_3339>
<#assign tags=(note.tags)!tags>
<#assign body=(note.body)!body>
<#assign date=(note.date)!date>

<article>
  <h1><a href="${slug}.html">${title}</a></h1>
  <div class="sub byline">
    <time class="date" datetime="${rfc_3339}">${date}</time>
    <#-- <div class="tags"> -->
      <#-- <span class="tag">${tags?join("</span>,<span class=\"tag\">")}</span> -->
    <#-- </div> -->
  </div>
  <section>
  ${body}
  </section>
</article>
