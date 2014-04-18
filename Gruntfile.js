var proc = require('child_process');
// var growl = require('growl');
var path = require('path');

module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    coffee: {
        apps: {
          expand: true,
          cwd: 'src',
          src: ['**/*.coffee'],
          dest: 'build',
          ext: '.js'
        }
    },
    watch: {
      all: {
        files: ['src/**/*.coffee', 'src/**/*.jade'],
        tasks: ['coffee'],
        options: {
          nospawn: true
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-coffee');

  // Default task(s).
  grunt.registerTask('default', ['coffee']);

};