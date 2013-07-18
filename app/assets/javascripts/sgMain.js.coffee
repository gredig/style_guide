back_to_top = ->
  $('.move_to_top').on('click', ->
    $('html, body').animate({scrollTop: '0px'}, 300);
  )

show_interactions = ->
  $('#mc_content').show()

  $('.interaction_hotlinks').on 'click', ->
    $('.sg_interaction_background').hide()
    $('.sg_interaction_active').removeClass('sg_interaction_active')
    $(this).addClass('sg_interaction_active')
    div_name = $(this).attr('id').split('_')[0]
    $('#' + div_name + '_content').fadeIn(100)

jQuery ->
  back_to_top()
  show_interactions()