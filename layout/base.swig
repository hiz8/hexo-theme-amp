<!DOCTYPE html>
<html ⚡>
<head>
    <meta charset="utf-8">
    
    {% set title = page.title %}
    {% if is_archive() %}
    {% set title = 'Archives' %}
    {% endif %}
    {% if is_category() %}
    {% set title = 'Category: ' + page.category %}
    {% endif %}
    {% if is_tag() %}
    {% set title = 'Tag: ' + page.tag %}
    {% endif %}
    
    <title>{% if title %}{{ title }} - {% endif %}{{ config.title }}</title>
    <link rel="canonical" href="{{ url_for(path) }}">
    <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1">
	<meta name="description" content="{{ config.description }}">
    
    <style amp-custom>
        {% set styles = inlineCss(style.css) %}
        {{ styles }}
    </style>
    
    {% if theme.favicon %}
    <link rel="icon" type="image/x-icon" href="{{ theme.favicon }}">
    {% endif %}
    
    {% if is_post() %} 
    {% block jsonld %}{% endblock %}
    {% endif %}
    
    <style>body {opacity: 0}</style><noscript><style>body {opacity: 1}</style></noscript>
    <script async src="https://cdn.ampproject.org/v0.js"></script>
</head>
<body>
    {% include '_partial/header.swig' %}

    <main role="main">
        <div id="content">
            {% block primary %}<p>Not Found</p>{% endblock %}
        </div>
    </main>

    {% include '_partial/footer.swig' %}

    {% if theme.google_analytics %}
    <amp-pixel src="https://ssl.google-analytics.com/collect?v=1&tid={{ theme.google_analytics }}&t=pageview&cid=RANDOM&dt=TITLE&dl=CANONICAL_URL&z=RANDOM"></amp-pixel>
    {% endif %}
</body>
</html>