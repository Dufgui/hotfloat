class Dashing.Hotfloat extends Dashing.Widget
  @accessor 'current', Dashing.AnimatedValue

  @accessor 'difference', ->
    if @get('last')
      last = parseFloat(@get('last'))
      current = parseFloat(@get('current'))
      if last != 0
        diff = Math.round(((current - last)) * 100) / 100
        "#{diff}"
    else
      ""

  @accessor 'arrow', ->
    if @get('last')
      if parseFloat(@get('current')) > parseFloat(@get('last')) then 'icon-arrow-up' else 'icon-arrow-down'

  onData: (data) ->
    if data.status
      # clear existing "status-*" classes
      $(@get('node')).attr 'class', (i,c) ->
        c.replace /\bstatus-\S+/g, ''
      # add new class
      $(@get('node')).addClass "status-#{data.status}"

    node = $(@node)
    current = parseFloat data.current
    cool = parseFloat node.data "cool"
    warm = parseFloat node.data "warm"
    if warm >= cool
      level = switch
        when current <= cool then 0
        when current >= warm then 4
        else 
          bucketSize = (warm - cool) / 3 # Total # of colours in middle
          Math.ceil (current - cool) / bucketSize
    else
      level = switch
        when current >= cool then 0
        when current <= warm then 4
        else 
          bucketSize = (cool - warm ) / 3 # Total # of colours in middle
          Math.ceil (cool - current) / bucketSize
  
    backgroundClass = "hotness#{level}"
    lastClass = @get "lastClass"
    node.toggleClass "#{lastClass} #{backgroundClass}"
    @set "lastClass", backgroundClass