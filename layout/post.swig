{% extends 'base.swig' %}

{% block jsonld %}
    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "NewsArticle",
            "headline": "{{ page.title }}",
            "author": {
                "@type": "Person",
                "name": "{{ config.author }}"
            },
            "datePublished": "{{ page.date.toDate().toISOString() }}"
        }
    </script>
{% endblock %}


{% block primary %}
    {% set pipe = {item: page, index: false} %}
    {% include '_partial/article.swig' with pipe %}
{% endblock %}
