<!DOCTYPE html>
<html lang="en">
  <head>
    <title>${blog_title}</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
  </head>
<body>
<div class="top"><a href="index.html">Ложное движение</a></div>
<div class="notes">
<#list notes as note>
<div class="note">
  <#include "note_body.ftl">
</div>
</#list>
</div>
<div class="paging">
<#if prev gt 0>
<a href="page-${prev}.html">предыдущая</a>
<#elseif prev == 0>
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
<div class="footer">&copy; Алексей Пегов 2009-2018</div>
</body>
</html>