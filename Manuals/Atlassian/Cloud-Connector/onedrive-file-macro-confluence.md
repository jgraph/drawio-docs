# Using the OneDrive File macro in Confluence

Use the OneDrive File macro to embed a file stored in your OneDrive account into Confluence Cloud using the Diagram Viewer app.

## How to embed a file from OneDrive

1. While editing a Confluence Cloud page, type ``/one`` to see the OneDrive File macro pop up under your text. Alternatively, click _Insert +_ in the toolbar, if the OneDrive File macro isn't listed, click _View more_ and search for the macro. <br />
![Insert the OneDrive File macro](img/insert-onedrive-file-macro.png)
2. Select it and the OneDrive file selector dialog opens. <br />
![Open the OneDrive File dialog](img/insert-onedrive-file-macro-dialog.png)
<br />If you have not previously logged into OneDrive and allowed Confluence to access your files, click on the _Authorize OneDrive Connector_ button, log in and allow Confluence to connect to your account.
3. Click _Choose_, then navigate to and select the file you want to embed. <br />
![Select a file from OneDrive that you want to embed](img/select-onedrive-file.png)
4. Once you have selected the file, click _Open_.
5. The preview will show you the contents of your file. If this is a draw.io, .VSD or .VSDX diagram file, two checkboxes will automatically be selected:
   * _Automatically set the size of the viewer_ - resizes the viewer to match the size of your diagram.
   * _Show with draw.io_ - this lets page viewers interact with your diagram to step through pages or display/hide layers.<br />
![Diagram files have convenient options set to allow viewers to interact with the diagram](img/insert-onedrive-file-preview.png)<br />
You can also set a different width and height for the viewer. Make sure the _Automatically set the size of the viewer_ checkbox is deselected, then click in the _Width_ and _Height_ fields to change their values.
6. Click _Save_ to embed your file, and publish your Confluence page.

Viewers can hover over the embedded files and see toolbars that let them interact with the files. These toolbars are different depending on the file type you have embedded.

![Hover over the embedded file in the public page to see the toolbars - these vary depending on which file you have embedded](img/onedrive-file-confluence-page.png)
