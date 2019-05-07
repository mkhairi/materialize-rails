const { environment } = require('@rails/webpacker')

const webpack = require("webpack")
environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery'
}))

const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')
environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
module.exports = environment
