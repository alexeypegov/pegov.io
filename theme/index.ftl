<#setting locale="ru_RU">
<#setting date_format="dd MMMM yyyy">

<#assign ld_type="index">
<#include "header.ftl">
<#list items as note>
  <#assign note_view=(note.view)!view!"full">
  <#include "${note_view}.ftl">
</#list>
<#include "navigation.ftl">
<#include "footer.ftl">
