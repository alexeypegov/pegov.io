<article>
  <h1><a href="${note.slug}.html">${note.title}</a></h1>
  <div class="sub byline">
    <time class="date" datetime="${note.rfc_3339}">${note.date}</time>
    <div class="tags">
      <span class="tag">${note.tags?join("</span>,<span class=\"tag\">")}</span>
    </div>
  </div>
  <section>
  ${note.body}
  </section>
</article>
