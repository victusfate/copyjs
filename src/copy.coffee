copy = (obj) ->
    if not obj?
        obj
    else 
        switch true
            when obj instanceof Date 
                new Date(obj.getTime()) 
            when obj instanceof RegExp
                flags = ''
                flags += 'g' if obj.global?
                flags += 'i' if obj.ignoreCase?
                flags += 'm' if obj.multiline?
                flags += 'y' if obj.sticky?
                new RegExp(obj.source, flags) 
            when obj instanceof Uint8Array,         \
                obj instanceof Uint8ClampedArray,   \
                obj instanceof Uint16Array,         \
                obj instanceof Uint32Array,         \
                obj instanceof Int8Array,           \
                obj instanceof Int16Array,          \
                obj instanceof Int32Array,          \
                obj instanceof Float32Array,        \
                obj instanceof Float64Array
                    obj.subarray()
            when typeof(obj) is 'object'
                dest = obj.constructor()
                for k of obj
                    dest[k] = copy obj[k]
                dest
            else
                JSON.parse JSON.stringify obj    

module.exports = copy
