<!DOCTYPE html>
<html ⚡ lang="{{config.language}}">
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
    <link rel="canonical" href="{{ url_for(url) }}">
    <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1">
	<meta name="description" content="{{ config.description }}">
    <meta name="author" content="{{ config.author }}">
    
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
    
    <style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style><noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
    <script async custom-element="amp-analytics" src="https://cdn.ampproject.org/v0/amp-analytics-0.1.js"></script>
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
    <amp-analytics type="googleanalytics" id="analytics1">
        <script type="application/json">
            {
                "vars": {
                    "account": "{{ theme.google_analytics }}"
                },
                "triggers": {
                    "trackPageview": {
                        "on": "visible",
                        "request": "pageview"
                    }
                }
            }
        </script>
    </amp-analytics>
    {% endif %}
</body>
</html>