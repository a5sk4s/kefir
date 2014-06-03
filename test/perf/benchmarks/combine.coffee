Kefir = require('../../../dist/kefir.js')
Bacon = require('baconjs')



require('../benchmark-helper.coffee').setupTest 'stream.combine(Lib.once(1), fn)', {
  kefir: (stream) ->
    stream.combine([Kefir.once(1)], (a, b) -> a + b)
  bacon: (stream) ->
    stream.combine(Bacon.once(1), (a, b) -> a + b)
  async: true
}
