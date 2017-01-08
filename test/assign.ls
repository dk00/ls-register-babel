a = 1
b = a
function main t
  t.notEqual a, b, 'shadow upper scope variables'
  a = 1
  a += a
  t.equal a, 2, 'shorthand assignment: add to'

  [c] = [a]
  t.equal c, a, 'destructuring assignment: array'

  {a: d} = {a}
  t.equal d, a, 'destructuring assignment: object'

  {e} = {e: a}
  t.equal e, a, 'destructuring assignment: object shorthand'

  [i: h: [g: f]] = [i: h: [g: a]]
  t.equal f, a, 'nested destructuring'

  g = {}
  [g.h, {a: g.i}] = [a, {a}]
  t.equal g.h, g.i, 'destructuring assignment: object member'

  t.end!

export default: main
