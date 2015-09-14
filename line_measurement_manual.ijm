dir1 = getDirectory("Choose Source Directory "); 
list = getFileList(dir1); 
//setBatchMode(true); 
for (k = 0; k<list.length; k++) { 
	showProgress(k+1, list.length); 
	open(dir1+list[k]);

//setTool("line");

waitForUser("Set the scale for this image","Hold shift to draw a straight line of known length, then click 'OK'"); 

run("Set Scale...", "known=1 unit=mm");

//setTool("line");

waitForUser("Measure the length of desired object","Hold shift to draw a straight line across the object, then click 'OK'"); 

run("Set Measurements...", "display redirect=None decimal=4");
run("Measure");

selectWindow(list[k]); 
close(); 

selectWindow("Results"); 
saveAs("text", dir1+"results.csv");

}
