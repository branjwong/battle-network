module.exports = function(grunt){
  grunt.initConfig({
    elm: {
      compile: {
        files: {
          'dist/js/app.js': 'src/app.elm'
        }
      }
    }
  });
  grunt.loadNpmTasks('grunt-elm');
  grunt.registerTask('default', ['elm']);
}
