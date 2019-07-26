<!DOCTYPE html>
<html lang="en">
  <head>
    <title>${vars.blog_title}</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1" />
    <link rel="index" id="link-index" href="${vars.blog_url}" />
    <#if prev_page?exists>
      <#assign earlier = vars.blog_url + "/" + prev_page + ".html">
    <link rel="prev" id="link-earlier" href="${earlier}" />
    </#if>
    <#if next_page?exists>
      <#assign later = vars.blog_url + "/" + next_page + ".html">
    <link rel="next" id="link-later" href="${later}" />
    </#if>
    <#if note?exists>
      <#assign description = note.title>
    <#else>
      <#assign description = vars.blog_title>
    </#if>
    <meta name="description" content="${description}" />
    <meta name="og:description" content="${description}" />
    <meta name="robots" content="index, follow" />
    <meta name="og:title" content="${vars.blog_title}" />
    <#if ndx?exists>
    <#assign self = vars.blog_url>
    <#if ndx gt 1>
    <#assign self = vars.blog_url + "/page-" + ndx + ".html">
    </#if>
    <meta name="og:url" content="${self}" />
    </#if>
    <link rel="icon" type="image/png" href="${vars.blog_url}/i/favicon.png">
    <link rel="alternate" type="application/atom+xml" title="Все заметки" href="${vars.feed_url}"/>
    <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
  </head>
<body>
<div class="top">
  <div class="title"><h1><a href="/">Ложное движение</a></h1></div>
  <div class="menu">
    <a href="about.html">О блоге</a>
    <a href="use.html">Использую</a>
    <a href="https://flickr.com/alexeypegov">Фотографирую</a>
  </div>
</div>
<div class="container">