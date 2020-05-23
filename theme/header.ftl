<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="utf-8" />
    <#if note?exists>
    <title>${note.title} - ${vars.blog_title}</title>
    <#elseif ndx?exists && ndx gt 1>
    <title>Страница ${ndx} - ${vars.blog_title}</title>
    <#else>
    <title>${vars.blog_title}</title>
    </#if>
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1" />
    <link rel="index" id="link-index" href="${vars.blog_url}" />
    <#if prev_page?exists>
      <#assign earlier = vars.blog_url + "/" + prev_page>
    <link rel="prev" id="link-earlier" href="${earlier}" />
    </#if>
    <#if next_page?exists>
      <#assign later = vars.blog_url + "/" + next_page>
    <link rel="next" id="link-later" href="${later}" />
    </#if>
    <meta name="robots" content="index, follow" />

    <!-- open graph -->
    <meta property="og:type" content="website">
    <meta property="og:locale" content="ru_RU" />
    <meta property="og:site_name" content="${vars.blog_title}" />
    <#if note?exists>
      <#if note.description?exists>
        <#assign description = note.description>
      <#else>
        <#assign description = note.title>
      </#if>
    <#else>
      <#assign description = vars.description>
    </#if>
    <meta property="description" content="${description}" />
    <meta property="og:description" content="${description}" />
    <#if note?exists>
      <#assign title = note.title>
    <#else>
      <#assign title = vars.blog_title>
    </#if>
    <meta property="og:title" content="${title}" />
    <#if note?exists>
      <#assign url = vars.blog_url + note.link>
    <#elseif ndx?exists && ndx gt 1>
      <#assign url = vars.blog_url + "/page-" + ndx + ".html">
    <#else>
      <#assign url = vars.blog_url>
    </#if>
    <meta property="og:url" content="${url}" />
    <#if note?exists>
      <#if note.image?exists>
    <meta property="og:image" content="${vars.blog_url + "/" + note.image}" />
      <#elseif note.video?exists>
    <meta property="og:video" content="${note.video}" />
      </#if>
      <#list note.tags as tag>
    <meta property="og:tag" content="${tag}" />
      </#list>
    </#if>

    <!-- favicons -->
    <link rel="icon" type="image/png" sizes="32x32" href="i/favicon-32.png">
    <link rel="icon" type="image/png" sizes="180x180" href="i/favicon-180.png">
    <link rel="icon" type="image/png" sizes="196x196" href="i/favicon-196.png">
    <link rel="shortcut icon" type="image/png" href="i/favicon.png">
    <link rel="alternate" type="application/atom+xml" title="Все заметки" href="${vars.feed_url}"/>
    <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
  </head>
<body>
<header>
  <h1><a href="/">Ложное движение</a></h1>
  <nav>
    <a href="about.html">О блоге</a>
    <a href="use.html">Использую</a>
    <a href="http://alexeypegov.com">Фотографирую</a>
  </nav>
</header>
<main>
