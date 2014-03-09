module.exports = require(process.env['LINEMAN_MAIN']).config.extend 'files',
  js:
    vendor: [
      "vendor/js/**/*.js"
    ]
    app: [
      "app/js/app.js"
      "app/js/**/*.js"
    ]
  less:
    app: [
      "app/css/app.less"
    ]
    watch: [
      "app/css/**/*.less"
    ]

  webfonts:
    root: "fonts"