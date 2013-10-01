setup_popups = ->
  $('.js_popup_trigger').on "click", ->
    open_popup(this)
  $('.js_popup_close').on "click", ->
    close_popups()

open_popup = (target) ->
  $wrapper = $(target).closest('.js_popup_wrapper')
  $popup = $wrapper.find('.js_popup')
  close_popups()
  if $popup.is(':visible')
    return
  else
    $popup.stop(true, true).fadeIn(100)

close_popups = ->
  $('.js_popup').stop(true, true).fadeOut(100)

jQuery ->
  if $('.js_popup').length
    setup_popups()