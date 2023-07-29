const { webpackConfig } = require('@rails/webpacker')
// const { merge } = require('webpack-merge')

// const baseConfig = {
//   resolve: {
//     extensions: ['.js', '.json', '.wasm']
//   }
// }
// webpackConfig.merge(baseConfig)
// webpackConfig.merge({ devtool: 'none' })
// // webpackConfig.loaders.delete('nodeModules')
webpackConfig.config.set('resolve.extensions', ['.js', '.json', '.wasm'])
webpackConfig.config.set('resolve.module', ['node_modules'])
module.exports = webpackConfig
