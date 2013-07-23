back_to_top = ->
  $('.sg_back_to_top').on('click', ->
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

show_sections = ->
  $('.sg_nav_links a').on 'click', ->
    split_id = $(this).attr('href').split('_')
    split_id.pop();
    section = split_id.join(0);
    section = section.slice(1, section.length)
    expand_section(section)

  $('.sg_h2').on 'click', ->
    split_id = $(this).parent('section').attr('id').split('_')
    split_id.pop();
    section = split_id.join(0);
    expand_section(section)

expand_section = (section) ->
  $('#sg_' + section + "_container").slideToggle(500)
  i = $('#sg_' + section + "_container").prev("h2").find("i")

  $(i).toggleClass('icon-rotate-180')


jQuery ->
  back_to_top()
  show_interactions()
  show_sections()
