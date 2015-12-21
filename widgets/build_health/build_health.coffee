class Dashing.BuildHealth extends Dashing.Widget
  onData: (data) ->
    if data.status == 'Failed'
       $(@node).css('background-color', '#b8431e')
    else if data.status == 'Successful'
      $(@node).css('background-color', '#52aa46')

  @accessor 'image', ->
    health = @get('health')
    if (health >= 80) then 'assets/health-80plus.svg'
    else if (health >= 60) then 'assets/health-60to79.svg'
    else if (health >= 40) then 'assets/health-40to59.svg'
    else if (health >= 20) then 'assets/health-20to39.svg'
    else 'assets/health-00to19.svg'