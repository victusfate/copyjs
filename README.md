# copyjs

![copyjs](https://github.com/victusfate/copyjs/raw/master/copy.jpg)
copyjs is for deep copies of javascript objects
===

<pre>
npm install copyjs
</pre>

	var a = {
	  val: 15,
	  business: 'isGood'
	};

	var b = copy(a);

    #  object a { val: 15, business: 'isGood' }
    #  object b { val: 15, business: 'isGood' }

	b.val = 8000;
	b.business = 'isBetter';

	#  object a { val: 15, business: 'isGood' }
	#  object b { val: 8000, business: 'isBetter' }

license: BSD

notes:
I would have used https://npmjs.org/package/copy but I couldn't find/see their source
Ok, that source is linked now https://github.com/evlun/copy and they even support packed arrays and buffers efficiently.


