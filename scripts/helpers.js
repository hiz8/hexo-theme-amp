'use strict';

const fs = require('fs');

hexo.extend.helper.register('inlineCss', function (name) {
    const style = fs.readFileSync('./public/css/style.css', 'utf8');
    return style;
});
