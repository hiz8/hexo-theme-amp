{% extends 'base.swig' %}

{% block primary %}

{% set pipe = {pagination: config.archive, index: true} %}
{% include '_partial/archive.swig' with pipe %}

{% include '_partial/pagination.swig' %}

{% endblock %}