  
module.exports = (grunt)->  

  grunt.initConfig    
    coffee:
      build: 
        files : 
          'index.js' : ['index.coffee']

  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.registerTask('default', 'coffee:build');