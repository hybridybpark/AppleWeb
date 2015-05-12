
// angularjs


	var writeButton = document.createElement('button');
	writeButton.textContent = "Write";
	var wrapDiv = document.createElement('div');
	wrapDiv.style.textAlign = 'center';
	wrapDiv.appendChild(writeButton);
	document.body.appendChild(wrapDiv);
	
	function onFitSizeOfTextArea()
    {
        var textArea = event.srcElement;
        while( textArea.clientHeight < textArea.scrollHeight )
        {
            textArea.rows = textArea.rows + 1;
        }
        textArea.className = "NoScroll";
    }

