<#setting locale="ru_RU">
<#setting date_format="dd MMMM yyyy">

<#assign note_view=(note.view)!view!"full">
<#assign ld_type=note_view>
<#include "header.ftl">
<#include "${note_view}.ftl">
<#include "footer.ftl">
