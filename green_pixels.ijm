dir1 = getDirectory("Choose folder containing images you wish to analyze"); 
list = getFileList(dir1); 
//setBatchMode(true); 
for (k = 0; k<list.length; k++) { 
	showProgress(k+1, list.length); 
	open(dir1+list[k]);

// crops photo, clears outside of circle, and measures total area
setLocation(1, 1, 1366, 768);
run("Set... ", "zoom=25");
run("Set Measurements...", "area display redirect=None decimal=2");
setTool("oval");

// macro will not continue until the selection is made.  you can exit by closing the image window.
while(selectionType()<0){ 
	waitForUser("Select area inside the ring","Hold shift while drawing circle, then click 'OK'"); 
}

run("Crop");
setBackgroundColor(255, 255, 255);
run("Clear Outside");
run("Measure");

// generates black and white image.  black pixels represent green pixels
min=newArray(3);
max=newArray(3);
filter=newArray(3);
a=getTitle();
run("HSB Stack");
run("Convert Stack to Images");
selectWindow("Hue");
rename("0");
selectWindow("Saturation");
rename("1");
selectWindow("Brightness");
rename("2");
min[0]=46;
max[0]=110;
filter[0]="pass";
min[1]=34;
max[1]=210;
filter[1]="pass";
min[2]=30;
max[2]=225;
filter[2]="pass";
for (i=0;i<3;i++){
  selectWindow(""+i);
  setThreshold(min[i], max[i]);
  run("Convert to Mask");
  if (filter[i]=="stop")  run("Invert");
}
imageCalculator("AND create", "0","1");
imageCalculator("AND create", "Result of 0","2");
for (i=0;i<3;i++){
  selectWindow(""+i);
  close();
}
selectWindow("Result of 0");
close();
selectWindow("Result of Result of 0");
rename(a);
// Color Thresholding-------------

// counts number of green pixels under total area column in the summary table.  excludes pixel groups of less than 10 pixels
run("Analyze Particles...", "size=10-Infinity summarize");

        selectWindow(list[k]); 
        close(); 

// saves summary and results tables
String.copyResults; 
string = String.paste; 
File.append(string, "/home/truthling/Documents/ECOSS/ImageJ_Results/"+"area.csv");

IJ.renameResults("Summary","Results"); 
String.copyResults; 
string = String.paste; 
File.append(string, "/home/truthling/Documents/ECOSS/ImageJ_Results/"+"green.csv");

}
