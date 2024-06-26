<#setting locale="ru_RU">
<#setting date_format="dd MMMM yyyy">

<#assign ld_type="index">
<#include "header.ftl">
<#list items as note>
  <#assign note_view=(note.view)!view!"full">
  <#include "${note_view}.ftl">
</#list>
<nav class="paging">
<#if prev_page?exists>
<a id="prev" href="${prev_page}">назад</a>
</#if>
<#if prev_page?exists && next_page?exists>&#151;</#if>
<#if next_page?exists>
<a id="next" href="${next_page}">вперед</a>
</#if>
</nav>
<script src="js/pure-swipe.min.js"></script>
<script>
  const f = function(id) {
    return function() {
      const anchor = document.getElementById(id);
      if (anchor && anchor.getAttribute("href")) {
        anchor.click();
      }
    }
  };

  document.addEventListener('swiped-left', f('next'));
  document.addEventListener('swiped-right', f('prev'));
</script>
<#include "footer.ftl">
