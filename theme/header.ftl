<#ftl strip_whitespace=true>
<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <#if title??>
    <title>${title} - ${vars.blog.title}</title>
    <#elseif ndx?? && ndx gt 1>
    <title>Страница ${ndx} - ${vars.blog.title}</title>
    <#else>
    <title>${vars.blog.title}</title>
    </#if>
    
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">
    <#if ndx?? && ndx gt 1 || (view!"")=="tweet" || (view!"")=="image" || (view!"")=="video">
    <meta name="robots" content="noindex">
    </#if>
    <#assign title=title!vars.blog.title>
    <#if summary??>
    <meta name="description" content="${summary}">
    </#if>

    <!-- opengraph meta, etc -->
    <meta property="og:type" content="website">
    <meta property="og:locale" content="ru_RU">
    <meta property="og:site_name" content="${vars.blog.title}">
    <#if summary??>
    <meta property="og:description" content="${summary}">
    </#if>
    <meta property="og:title" content="${title}">
    <#if link??>
      <#assign url = vars.blog.url + link>
    <#elseif ndx?? && ndx gt 1>
      <#assign url = vars.blog.url + "/page-" + ndx + ".html">
    <#else>
      <#assign url = vars.blog.url>
    </#if>
    <meta property="og:url" content="${url}">
    <#if tags??>
      <#list tags as tag>
    <meta property="og:tag" content="${tag}">
      </#list>
    </#if>
    <#if cover??>
    <meta property="og:image" content="${vars.blog.url + "/" + cover}">
    </#if>

    <#if prev_page??>
    <link rel="prev" href="${vars.blog.url + "/" + prev_page}">
    <#elseif prev??>
    <link rel="prev" href="${vars.blog.url + "/" + prev + ".html"}"/>
    </#if>
    <#if next_page??>
    <link rel="next" href="${vars.blog.url + "/" + next_page}">
    <#elseif next??>
    <link rel="next" href="${vars.blog.url + "/" + next + ".html"}"/>
    </#if>
    <link rel="apple-touch-icon" href="i/favicon-32.png">
    <link rel="apple-touch-icon" sizes="180x180" href="i/favicon-180.png">
    <link rel="apple-touch-icon" sizes="196x196" href="i/favicon-196.png">
    <link rel="shortcut icon" type="image/png" href="i/favicon.png">
    <link rel="stylesheet" type="text/css" href="styles/styles.css">
    <#list vars.feeds as feed>
    <link rel="alternate" type="application/atom+xml" title="${feed.name}" href="${feed.url}">
    </#list>
    <#if (ndx!0) lt 2>
    <#include "ld_json.ftl">
    </#if>
  </head>
<body>
<header>
  <h1><a href="/">${vars.blog.title}</a></h1>
  <nav>
    <#list vars.pages as page>
    <a href="${page.url}">${page.title}</a>
    </#list>
  </nav>
</header>
<main>
