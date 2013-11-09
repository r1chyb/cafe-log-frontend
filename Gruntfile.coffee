module.exports = (grunt) ->
  require('load-grunt-tasks') grunt

  # Common configuration, in one nice place.
  appConfig =
    app: 'app'

  # Project configuration
  grunt.initConfig
    config: appConfig
    connect:
      options:
        port: 9000
        # Change to '0.0.0.0' to access the server from outside.
        # hostname: 'localhost'
      livereload:
        options:
          open: true
          base: '<%= config.app %>'
    watch:
      options:
        livereload:
          options:
            livereload: '<%= connect.options.livereload %>'
      gruntfile:
        files: [ 'Gruntfile.coffee' ]
        tasks: []
      scripts:
        files: [ '<%= config.app %>/scripts/app.js'
                 '<%= config.app %>/scripts/{,*/}*.js' ]
        tasks: []
      views:
        files: [ '<%= config.app %>/views/{,*/}*.html' ]
        tasks: []


  # Default task(s).

  grunt.registerTask 'server', (target) ->
    grunt.task.run [
      'connect:livereload',
      'watch'
    ]

  grunt.registerTask 'default', ['server']
