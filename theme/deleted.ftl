<#assign deleted=(note.deleted)!deleted!"">
<#assign view="deleted">
<#assign ld_type="deleted">
<#include "header.ftl">
<article data-view="deleted">
  <p class="deleted-title">Эта запись была удалена.</p>
  <#if deleted?has_content>
  <p class="deleted-cause">${deleted}</p>
  </#if>
  <p><a href="/">Вернуться к началу</a></p>
</article>
<#include "footer.ftl">
