show_color_section = ->
  $('.sg_color_divider').on 'click', ->
    id = $(this).attr('id')
    section = id.split('_')[0]
    $("#" + section + "_colors_wrapper").slideToggle(500)


jQuery ->
  show_color_section()
