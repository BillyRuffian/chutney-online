function dropfile(file) {
      var reader = new FileReader();
      reader.onload = function(e) {
        notepad.value = e.target.result;
      };
      reader.readAsText(file, "UTF-8");
    }
notepad.ondrop = function(e) {
  e.preventDefault();
  var file = e.dataTransfer.files[0];
  dropfile(file);
};