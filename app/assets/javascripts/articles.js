$(function(){ 
	// For the markdown editor
	if($('#epiceditor').length > 0){
		console.log('in the if...');
		var opts = {
		    container: 'epiceditor',
		    textarea: 'article_body',
		    basePath: '../../../../assets/',
			clientSideStorage: true,
			localStorageName: 'epiceditor',
			useNativeFullscreen: true,
			parser: marked,
			file: {
			name: 'epiceditor',
			defaultContent: '',
			autoSave: 100
			},
			theme: {
			base: 'base/epiceditor.css',
			preview: 'preview/github.css',
			editor: 'editor/epic-light.css'
			},
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
