<article>
  <h1><a href="${note.slug}.html">${note.title}</a></h1>
  <div class="sub byline">
    <time class="date" datetime="${note.rfc_3339}">${note.date}</time>
    <div class="tags">
    <#list note.tags as tag>
      <span class="tag">${tag}</span>
    </#list>
    </div>
  </div>
  ${note.body}
</article>
