$ ->
  #コンパス方位を一定の時間間隔で取得
  watchHeading = ->
    options = frequency: 100
    _compassWatchID = applican.compass.watchHeading(watchHeadingSuccess, watchHeadingError, options)
  watchHeadingSuccess = (res) ->
    $(".needle img").css transform: "rotateZ(#{res.magneticHeading}deg)"
  watchHeadingError = (e) ->
    dump = "watchHeadingError\n"
    dump += "code:" + e.code + "\n"
    console.error dump
  compassWatchID = undefined
  watchHeading()
