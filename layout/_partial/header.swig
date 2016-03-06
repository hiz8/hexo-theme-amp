<header class="header" role="banner">
    <div class="header__logo">
	    <h1 class="header__logo__mainHeadline">
	        <a href="{{ config.root }}">{{ config.title }}</a>
	    </h1>
	    {% if config.subtitle %}
        <h2 class="header__logo__subHeadline">
	        <a href="{{ config.root }}">{{ config.subtitle }}</a>
	    </h2>
	    {% endif %}
	</div>
    <nav class="header__menu">
        <ul class="header__menu__list">
	        {% for menu in theme.menu %}
            <li class="header__menu__list__item">
                <a href="{{ menu }}">{{ __(loop.key) }}</a>
            </li>
	        {% endfor %}
	    </ul>
	</nav>
</header>