const { environment } = require('@rails/webpacker');

// Add the following lines (for bootstrap)
const webpack = require('webpack');

environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Popper: ['popper.js', 'default'],
    })
);

module.exports = environment;
