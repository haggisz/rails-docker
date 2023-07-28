const { webpackConfig } = require('@rails/webpacker')

const baseConfig = {
  resolve: {
    extensions: settings.extensions,
    modules: [
      resolve(settings.source_path),
      'node_modules',
      'app/javascript',
      'app/javascript/__tests__',
      'app/assets/images'
    ]
  }
}

webpackConfig.config.merge(baseConfig)
module.exports = webpackConfig
