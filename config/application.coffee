###
Exports an object that defines
all of the configuration needed by the projects'
depended-on grunt tasks.

You can familiarize yourself with all of Lineman's defaults by checking out the parent file:
https://github.com/testdouble/lineman/blob/master/config/application.coffee
###

module.exports = require(process.env['LINEMAN_MAIN']).config.extend 'application',
  watch:
    less:
      files: [
        "<%= files.less.vendor %>"
        "<%= files.less.app %>"
        "<%= files.less.watch %>"
      ]
  webfonts:
    files:
      "vendor/components/font-awesome/fonts/": "vendor/components/font-awesome/fonts/*.*"


#loadNpmTasks: ["grunt-favicons"]
#appendTasks:
#  common: ["favicons:dev"]
#  dist: ["favicons:dist"]
#favicons:
#  options:
#    HTMLPrefix: ""
#    html: ""
#    windowsTile: false
#  dev:
#    src: "app/icons/icon.png"
#    dest: "generated/"
#  dist:
#    src: "app/icons/icon.png"
#    dest: "dist/"