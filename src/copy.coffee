copy = (obj) ->
  if not obj?
    obj
  else if obj instanceof Date
    new Date(obj.getTime()) 
  else if obj instanceof RegExp
    flags = ''
    flags += 'g' if obj.global?
    flags += 'i' if obj.ignoreCase?
    flags += 'm' if obj.multiline?
    flags += 'y' if obj.sticky?
    new RegExp(obj.source, flags) 
  else if typeof(obj) is 'object'
    dest = obj.constructor()
    for k of obj
      dest[k] = copy obj[k]
    dest
  else
    JSON.parse JSON.stringify obj    

module.exports = copy
