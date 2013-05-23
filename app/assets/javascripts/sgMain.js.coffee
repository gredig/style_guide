back_to_top = ->
  $('.move_to_top').on('click', ->
    $('html, body').animate({scrollTop: '0px'}, 300);
  )



jQuery ->
  back_to_top()