# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  readURL = undefined
  readURL = (input) ->
    reader = undefined
    if input.files and input.files[0]
      reader = new FileReader

      reader.onload = (e) ->
        $('#attached_image').attr 'src', e.target.result
        return

      reader.readAsDataURL input.files[0]
    return

  $(document).on 'change', '#message_image', ->
    readURL this
    return

  $(document).on 'click', '#msg_camera_icon', ->
    $('#message_image').click()
    return
 return
