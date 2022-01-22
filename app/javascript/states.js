import $ from 'jquery';
import 'select2/dist/css/select2.css';
import 'select2';

// window.addEventListener('DOMContentLoaded', () => {
//     $('#plant_genus_name').select2({
//         tags: true,
//         width: '100%',
//         allowClear: true,
//         placeholder: 'Search or type a genus',
//         ajax: {
//             url: '/get_genus',
//             method: 'get',
//             dataType: 'json',
//             /* minimumResultsForSearch: 10, */
//             minimumInputLength: 1,
//             data: function (params) {
//                 // Query parameters will be ?search=[term]&type=public
//                 return { name: params.term };
//             },
//             processResults: function (data) {
//                 return {
//                     results: jQuery.map(data, function (item) {
//                         return {
//                             text: item.value,
//                         };
//                     }),
//                 };
//             },
//         },
//     });
// });
