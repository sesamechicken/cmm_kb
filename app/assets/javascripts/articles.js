$(function(){ 
	// For the markdown editor
	if($('#epiceditor').length > 0){
		var opts = {
		  container: 'epiceditor',
		  textArea: 'body_txt',
		  focusOnLoad: true,
		  autogrow: true
		}
		editor = new EpicEditor(opts).load();
	}

});
var editor;
function setEpicValue(){
	contents = editor.getElement('editor').body.innerText; // returns contents
	$('#article_body').val(contents);
}
