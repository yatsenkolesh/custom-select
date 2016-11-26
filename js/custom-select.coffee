$(document).ready ->
    $('.custom-select-open').click (e) ->
      if $(this).data('disabled') == 'disabled'
        return 0
      e.stopPropagation()
      if $(this).parent().find('.custom-select-list').hasClass('active')
        $(this).parent().find('.custom-select-list').removeClass('active')
      else
        $('.custom-select-list').removeClass('active')
        $(this).parent().find('.custom-select-list').addClass('active')

    $('.custom-select-option .custom-select-value-choose').click ->
      inputName = $(this).parent().parent().data('name')
      $('input[name='+inputName+']').val($(this).data('value'))
      $(this).parent().parent().parent().find('.custom-select-value-selected-value').html($(this).html())
      $(this).parent().parent().find('li a').show()
      $(this).parent().parent().find('li a[data-value="'+$(this).data('value')+'"]').hide()

    $('.custom-select-list').each (key,value) ->
      $(this).find('li a[data-value="'+$(this).data('value')+'"]').hide()
      inputName = $(this).data('name')
      $('input[name='+inputName+']').val($(this).data('value'))
      if $(this).data('value') != '0'
        $(this).parent().find('.custom-select-value-selected-value').html($(this).find('li a[data-value="'+$(this).data('value')+'"]').html())

    $('body').click ->
       $('.custom-select-list').removeClass('active')
