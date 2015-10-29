dir1 = getDirectory("Choose Source Directory "); 
list = getFileList(dir1); 
//setBatchMode(true); 
for (k = 0; k<list.length; k++) { 
	showProgress(k+1, list.length); 
	open(dir1+list[k]);

// Line 1 - Measurement 1
selectWindow(File.nameWithoutExtension+"_line1");
run("RGB Stack");
selectWindow(File.nameWithoutExtension+"_line1");

run("Z Project...", "projection=[Sum Slices]");
run("Find Edges");
w=getWidth();
h=getHeight();
makeLine((w/1.7), (h/2), (w/1.7), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 2
selectWindow(File.nameWithoutExtension+"_line1");
run("RGB Stack");
selectWindow(File.nameWithoutExtension+"_line1");

run("Z Project...", "projection=[Sum Slices]");
run("Find Edges");
w=getWidth();
h=getHeight();
makeLine((w/1.65), (h/2), (w/1.65), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");


// Line 1 - Measurement 3
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.6), (h/2), (w/1.6), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 4
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.55), (h/2), (w/1.55), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 5
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.5), (h/2), (w/1.5), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
close();
selectWindow(File.nameWithoutExtension+"_line1");
close();

selectWindow(list[k]);

// Line 1 - Measurement 6
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.45), (h/2), (w/1.45), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 7
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.4), (h/2), (w/1.4), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 8
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.35), (h/2), (w/1.35), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 9
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.325), (h/2), (w/1.325), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 10
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.3), (h/2), (w/1.3), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 11
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.275), (h/2), (w/1.275), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 12
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.25), (h/2), (w/1.25), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 13
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.225), (h/2), (w/1.225), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 14
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.2), (h/2), (w/1.2), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Line 1 - Measurement 15
selectWindow("SUM_"+File.nameWithoutExtension+"_line1");
w=getWidth();
h=getHeight();
makeLine((w/1.18), (h/2), (w/1.18), (h/2.5), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	print("Maxima:");
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension+"_line1");
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
		x= maxLocs[jj];
		y = profile[x];
		print("x= ", x, " y= ", y);
		toUnscaled(x, y);
		makeRectangle(x-4, y-4 + 1, 8, 8);
		run("Invert");
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");


// Color Thresholder 1.49v
// Autogenerated macro, single images only!
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
min[0]=203;
max[0]=217;
filter[0]="pass";
min[1]=10;
max[1]=155;
filter[1]="pass";
min[2]=225;
max[2]=255;
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
// Colour Thresholding-------------

run("Analyze Particles...", "size=30-Infinity include summarize");

close();

	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

run("Close");

}