<div class="note">
  <div class="title"><h1><a href="${note.slug}.html">${note.title}</a></h1></div>
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
