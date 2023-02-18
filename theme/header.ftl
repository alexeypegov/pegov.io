<!DOCTYPE html>
<html lang="ru">
  <head itemscope itemtype="http://schema.org/WebSite">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <#if title??>
    <title>${title} - ${vars.blog_title}</title>
    <#elseif ndx?exists && ndx gt 1>
    <title>Страница ${ndx} - ${vars.blog_title}</title>
    <#else>
    <title>${vars.blog_title}</title>
    </#if>
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">
    <link rel="index" id="link-index" href="${vars.blog_url}">
    <#if prev_page?exists>
      <#assign earlier = vars.blog_url + "/" + prev_page>
    <link rel="prev" id="link-earlier" href="${earlier}">
    </#if>
    <#if next_page?exists>
      <#assign later = vars.blog_url + "/" + next_page>
    <link rel="next" id="link-later" href="${later}">
    </#if>
    <meta name="robots" content="index, follow">

    <!-- meta -->
    <meta property="og:type" content="website">
    <meta property="og:locale" content="ru_RU">
    <meta itemprop="name" property="og:site_name" content="${vars.blog_title}">
    <meta name="keywords" content="${vars.keywords}">
    <#assign summary=summary!vars.description>
    <meta name="description" content="${summary}">
    <meta property="og:description" content="${summary}">
    <#assign title=title!vars.blog_title>
    <meta property="og:title" content="${title}">
    <#if link??>
      <#assign url = vars.blog_url + link>
    <#elseif ndx?? && ndx gt 1>
      <#assign url = vars.blog_url + "/page-" + ndx + ".html">
    <#else>
      <#assign url = vars.blog_url>
    </#if>
    <meta property="og:url" content="${url}">
    <#if tags??>
      <#list tags as tag>
    <meta property="og:tag" content="${tag}">
      </#list>
    </#if>
    <#assign cover=cover!vars.blog_cover>
    <meta property="og:image" content="${vars.blog_url + cover}">

    <!-- favicons -->
    <link rel="icon" type="image/png" sizes="32x32" href="i/favicon-32.png">
    <link rel="icon" type="image/png" sizes="180x180" href="i/favicon-180.png">
    <link rel="icon" type="image/png" sizes="196x196" href="i/favicon-196.png">
    <link rel="shortcut icon" type="image/png" href="i/favicon.png">
    <link rel="alternate" type="application/atom+xml" title="Все заметки" href="${vars.feed_url}">
    <link rel="stylesheet" type="text/css" href="styles/styles.css">
  </head>
<body>
<header itemscope itemtype="https://schema.org/WPHeader">
  <h1><a href="/">Ложное движение</a></h1>
  <nav itemscope itemtype="https://schema.org/SiteNavigationElement" role="navigation">
    <a href="about.html">О блоге</a>
    <a href="use.html">Использую</a>
    <a href="/2022-09-24-my-position.html">ВОЙНА</a>
  </nav>
</header>
<main itemscope itemtype="https://schema.org/Blog">
