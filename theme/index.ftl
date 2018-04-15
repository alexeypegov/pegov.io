<#include "header.ftl">
<div class="notes">
<#list notes as note>
<div class="note">
  <#include "note_body.ftl">
</div>
</#list>
</div>
<div class="paging">
<#if prev gt 1>
<a href="page-${prev}.html">предыдущая</a>
<#elseif prev == 1>
<a href="index.html">предыдущая</a>
<#else>
<a nohref>предыдущая</a>
</#if>
&#151;
<#if next gt 0>
<a href="page-${next}.html">следующая</a>
<#else>
<a nohref>следующая</a>
</#if>
</div>
<#include "footer.ftl">