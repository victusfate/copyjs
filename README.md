![copyjs](https://github.com/victusfate/copyjs/raw/master/copy.jpg)
copyjs is for deep copies of javascript objects
===

<pre>
npm install copyjs
</pre>

    var copy = require('copyjs')
    var a = { val: 15, business:'isGood' };
    var b = copy(a);
    console.log('object a,b',a,b);
    #
    b.val = 8000;
    b.business = 'isBetter';
    console.log('object a,b',a,b);
    #

license: BSD

notes:
I would have used https://npmjs.org/package/copy but I couldn't find/see their source

