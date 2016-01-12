dir1 = getDirectory("Choose the folder containing images you wish to analyze "); 
list = getFileList(dir1); 
imagesFolder = "/home/truthling/Documents/ECOSS/Nick Kainrath/";

//setBatchMode(true); 
for (k = 0; k<list.length; k++) { 
	showProgress(k+1, list.length); 
	open(dir1+list[k]);

setTool("line");
while(selectionType()<0){ 
	waitForUser("Draw line to take measurement","Click and drag mouse to draw line'"); 
}

run("Set Measurements...", "display redirect=None decimal=2");
run("Measure");

saveAs("results", imagesFolder+"sage_brush_scale.csv");

selectWindow(list[k]); 
        close(); 

}
