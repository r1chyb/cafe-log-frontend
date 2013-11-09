module.exports = (grunt) ->
  require('load-grunt-tasks') grunt

  # Project configuration
  grunt.initConfig
    connect:
      options:
        port: 9000
        # Change to '0.0.0.0' to access the server from outside.
        # hostname: 'localhost'
      keepalive:
        options:
          open: true
          base: 'app'
          keepalive: true
  # Default task(s).

  grunt.registerTask 'server', (target) ->
    grunt.task.run ['connect:keepalive']

  grunt.registerTask 'default', ['server']
