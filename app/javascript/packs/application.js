// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require('@rails/ujs').start();
require('turbolinks').start();
require('@rails/activestorage').start();
require('channels');
require('jquery');

//= require jquery3
//= require popper
//= require bootstrap-sprockets

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

require('@popperjs/core');

import 'bootstrap';

// Import the specific modules you may need (Modal, Alert, etc)
import { Tooltip, Popover, Dropdown } from 'bootstrap';

// The stylesheet location we created earlier
require('../stylesheets/application.scss');

// If you're using Turbolinks. Otherwise simply use: jQuery(function () {
document.addEventListener('turbolinks:load', () => {
    // Both of these are from the Bootstrap 5 docs
    var tooltipTriggerList = [].slice.call(
        document.querySelectorAll('[data-bs-toggle="tooltip"]')
    );
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new Tooltip(tooltipTriggerEl);
    });

    var popoverTriggerList = [].slice.call(
        document.querySelectorAll('[data-bs-toggle="popover"]')
    );
    var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
        return new Popover(popoverTriggerEl);
    });

    var dropdownElementList = [].slice.call(
        document.querySelectorAll('.dropdown-toggle')
    );
    var dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
        return new bootstrap.Dropdown(dropdownToggleEl);
    });
});


$(document).on('turbolinks:load', function() {

  $('form').on('click', '.remove_record', function(event){
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('div').hide();
    return event.preventDefault();
  })

  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  })
})