<div class="note">
  <div class="title"><a href="${note.slug}.html">${note.title}</a></div>
  <div class="sub">
    <div class="date">${note.date}</div>
    <div class="tags">
    <#list note.tags as tag>
      <span class="tag">${tag}</span>
    </#list>
    </div>
  </div>
  <div class="body">${note.body}</div>
</div>
