'use strict';

hexo.extend.filter.register('after_post_render', function (data) {
    
    var regex_img = /<img .*?>/gi;
    var regex_rel  = /rel="external"/g;
    
    function getAttributeValue(tag, attribute) {
        var regex = new RegExp('\\b' + attribute + '="([^"]*)"', 'i');
        var match = tag.match(regex);
        return '\t' + attribute + '="' + (match ? match[1] : '') + '"\n';
    }
    
    data.content = data.content.replace(regex_img, function ($0) {
        var xml = '<amp-img ';
        xml += getAttributeValue($0, 'width');
        xml += getAttributeValue($0, 'height');
        xml += getAttributeValue($0, 'src');
        xml += getAttributeValue($0, 'alt');
        xml += getAttributeValue($0, 'title');
        xml += ' ></amp-img>';
        
        return xml;
        
    }).replace(regex_rel, '');
    
    return data;

});
