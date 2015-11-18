<article class="{{ item.layout }}">
	<header>
	    {% if item.layout != 'page' %}
	        <div class="meta">
	            <time datetime="{{ item.date.toDate().toISOString() }}"><a href="{{ url_for(item.path) }}">{{
	                item.date.format(config.date_format) }}</a></time>
	        </div>
	    {% endif %}
	    {% include 'post/title.swig' %}
	</header>
	<div class="entry">
	    {% if item.excerpt && index %}
	    {{ item.excerpt }}
	    {% else %}
	    {{ item.content }}
	    {% endif %}
	</div>
	<footer class="clearfix">
	    {% include 'post/category.swig' %}
	    {% include 'post/tag.swig' %}
	</footer>
</article>