copy      = require('../copyjs')
log       = console.log

log ''

a = 5
b = copy a
log 'a = 5, b = copy a'
log '  number a=',a
log '  number b=',b
log ''
b = 10
log '  b=10'
log '  number a=',a
log '  number b=',b

log ''

a = 'five'
b = copy a
log "a = 'five', b = copy a"
log '  string a=',a
log '  string b=',b
log ''
b = 'twenty'
log "  b='twenty'"
log '  string a=',a
log '  string b=',b

log ''

a = new Date()
b = copy a
log "a = new Date(), b = copy a"
log '  Date a',a
log '  Date b',b
b = new Date(1974, 4, 22, 4, 44)
log ''
log '  b = new Date(1974, 4, 22, 4, 44)'
log '  Date a',a
log '  Date b',b

log ''

a = /cheese/i
b = copy a
log "a = /cheese/i, b = copy a"
log '  Regexp a',a,"a.test('cheese')",a.test('cheese')
log '  Regexp b',b,"b.test('cheese')",b.test('cheese')
b = /wine/i
log ''
log '  b=/wine/i'
log '  Regexp a',a,"a.test('cheese')",a.test('cheese')
log '  Regexp b',b,"b.test('WINE')",b.test('WINE')

log ''

a = { val: 15, business:'isGood' }
b = copy a
log "a = { val: 15, business:'isGood' }, b = copy a"
log '  object a',a
log '  object b',b
b.val = 8000
b.business = 'isBetter'
log ''
log "  b.val = 8000, b.business= 'isBetter'"
log '  object a',a
log '  object b',b

log ''

a = [ 'i', 'before', 'e', 'except', 'after', 'c']
b = copy a
log "a = [ 'i', 'before', 'e', 'except', 'after', 'c'], b = copy a"
log '  object a',a
log '  object b',b
b[1] = 8
b[2] = 'eel'
b[4] = '@'
b.splice(3, 1);
log ''
log "  b[1] = 8, b[3] = 'eel', b[4] = '@'"
log '  object a',a
log '  object b',b

log ''

