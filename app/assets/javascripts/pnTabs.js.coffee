tabs_selector = ->
  $('.pn_center_tab').on('click', ->
    if !($(this).hasClass('selected_tab'))
      id = $(this).attr('id')

      $('.pn_tab').removeClass('selected_tab selected_tab_right selected_tab_left')
      $('.pn_tabbed_content').hide()

      $(this).addClass('selected_tab')

      $(this).prev('.tab_dividers').eq(0).addClass('selected_tab_right')
      $(this).next('.tab_dividers').eq(0).addClass('selected_tab_left')

      $('#' + id + '_content.pn_tabbed_content').show()
  )


jQuery ->
  if $('#pn_tabs_container').length
    tabs_selector()