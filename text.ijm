dir1 = getDirectory("Choose Source Directory "); 
list = getFileList(dir1); 
//setBatchMode(true); 
for (k = 0; k<list.length; k++) { 
	showProgress(k+1, list.length); 
	open(dir1+list[k]);

run("RGB Stack");

run("Z Project...", "projection=[Sum Slices]");
run("Find Edges");
w=getWidth();
h=getHeight();
makeLine((w/2), (h/2.75), (w/2), (h/2), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	
	maxLocs= Array.findMaxima(profile, tolerance);
	print("Edges of line coordinates,");
	for (jj= 0; jj < maxLocs.length; jj++){
		x= maxLocs[jj];
		y = profile[x];
		print(x,",");
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	selectWindow("Log");
	run ("Select None");
	saveAs("text", dir1+"log.csv");

selectWindow(list[k]); 
close();
selectWindow("SUM_"+list[k]); 
close();
}
