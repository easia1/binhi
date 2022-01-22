import $ from 'jquery'
import 'select2/dist/css/select2.css'
import 'select2'

window.addEventListener('DOMContentLoaded', () => {
  $('#plant_light_reqt, #plant_foliage_color, #plant_flower_color').select2({
    tags: true,
  })
  $('#plant_light_reqt').on('select2:opening select2:closing', function( event ) {
    var $searchfield = $(this).parent().find('.select2-search__field');
    $searchfield.prop('disabled', true);
  })
})

