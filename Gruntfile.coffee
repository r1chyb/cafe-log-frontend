module.exports = (grunt) ->
  # Project configuration
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
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

  grunt.loadNpmTasks 'grunt-contrib-connect'

  grunt.registerTask 'server', (target) ->
    grunt.task.run ['connect:keepalive']

  grunt.registerTask 'default', ['server']
