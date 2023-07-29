const { webpackConfig } = require('@rails/webpacker')
const { merge } = require('webpack-merge')

const baseConfig = {
  resolve: {
    extensions: ['.js', '.json', '.wasm']
  }
}
webpackConfig.merge(baseConfig)
webpackConfig.merge({ devtool: 'none' })
module.exports = webpackConfig
