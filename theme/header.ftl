<!DOCTYPE html>
<html lang="en">
  <head>
    <title>${vars.blog_title}</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1" />
    <link rel="index" id="link-index" href="${vars.blog_url}" />
    <#if prev?exists>
      <#assign earlier = vars.blog_url>
      <#if prev gt 1>
        <#assign earlier = vars.blog_url + "/page-" + prev + ".html">
      </#if>
    <link rel="prev" id="link-earlier" href="${earlier}" />
    </#if>
    <#if next?exists>
      <#assign later = vars.blog_url>
      <#if next gt 0>
        <#assign later = vars.blog_url + "/page-" + next + ".html">
      </#if>
    <link rel="next" id="link-later" href="${later}" />
    </#if>
    <#if recent?exists>
      <#assign description = "\nСвеженькое">
      <#list recent as item>
        <#assign description = description + "\n" + item.title>
      </#list>
    <#else>
      <#assign description = title>
    </#if>
    <meta name="description" content="${description}" />
    <meta name="og:description" content="${description}" />
    <meta name="robots" content="index, follow" />
    <meta name="og:title" content="${vars.blog_title}" />
    <#if ndx?exists>
    <#assign self = vars.blog_url>
    <#if ndx gt 0>
    <#assign self = vars.blog_url + "/page-" + ndx + ".html">
    </#if>
    <meta name="og:url" content="${self}" />
    </#if>
    <link rel="icon" type="image/png" href="${vars.blog_url}/i/favicon.png">
    <link rel="alternate" type="application/rss+xml" title="Все заметки" href="${vars.rss_url}"/>
    <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
  </head>
<body>
<div class="top">
  <div class="title"><h1><a href="index.html">Ложное движение</a></h1></div>
  <div class="menu">
    <a href="about.html">О блоге</a>
    <a href="use.html">Использую</a>
  </div>
</div>
<div class="container">