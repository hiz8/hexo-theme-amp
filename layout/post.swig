{% extends 'base.swig' %}

{% block jsonld %}
    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "BlogPosting",
            "mainEntityOfPage":{
                "@type":"WebPage",
                "@id":"{{ config.url }}"
            },
            "headline": "{{ page.title }}",
            "image": {
                "@type": "ImageObject",
                "url": "{{ config.url }}/img/icon/700.png",
                "height": 700,
                "width": 700
            },
            "author": {
                "@type": "Person",
                "name": "{{ config.author }}"
            },
            "publisher": {
                "@type": "Organization",
                "name": "{{ config.author }}",
                "logo": {
                    "@type": "ImageObject",
                    "url": "{{ config.url }}/img/icon/700.png",
                    "height": 700,
                    "width": 700
                }
            },
            "datePublished": "{{ page.date.toDate().toISOString() }}",
            "dateModified": "{{ page.updated.toDate().toISOString() }}",
        }
    </script>
{% endblock %}


{% block primary %}
    {% set pipe = {item: page, index: false} %}
    {% include '_partial/article.swig' with pipe %}
{% endblock %}
