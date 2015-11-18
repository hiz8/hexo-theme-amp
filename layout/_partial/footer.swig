<footer id="footer" role="contentinfo">
    © {{ moment(Date.now()).format('YYYY') }}
    {% if config.author %}
    {{ config.author }}
    {% else %}
    {{ config.title }}
    {% endif %}.
    <small>Powered by <a href="http://hexo.io" rel="nofollow">Hexo</a></small>
</footer>