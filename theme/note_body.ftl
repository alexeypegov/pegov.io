<article>
  <h1><a href="${note.slug}.html">${note.title}</a></h1>
  <div class="sub byline">
    <time class="date" datetime="${note.rfc_3339}">${note.date}</time>
    <div class="tags">
      <span class="tag">${note.tags?join("</span>,<span class=\"tag\">")}</span>
    </div>
    <#if note.track?exists>
    <div class="track">${note.track}</div>
    </#if>
  </div>
  ${note.body}
</article>
