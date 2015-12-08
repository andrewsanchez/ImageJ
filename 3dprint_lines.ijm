dir1 = "/home/truthling/Documents/3D_Printer/test/"; 
list = getFileList(dir1);
for (k = 0; k<list.length; k++) { 
	showProgress(k+1, list.length); 
	open(dir1+list[k]);

run("Minimum...", "radius=2");
run("RGB Stack");
run("Z Project...", "projection=[Sum Slices]");
run("Find Edges");
selectWindow(list[k]);
close(); 

// Measurement 1

w=getWidth();
h=getHeight();
makeLine((w/1.7), (h/2.1), (w/1.7), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 2

w=getWidth();
h=getHeight();
makeLine((w/1.65), (h/2.1), (w/1.65), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 3

w=getWidth();
h=getHeight();
makeLine((w/1.6), (h/2.1), (w/1.6), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 4

w=getWidth();
h=getHeight();
makeLine((w/1.55), (h/2.1), (w/1.55), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);

	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 5

w=getWidth();
h=getHeight();
makeLine((w/1.5), (h/2.1), (w/1.5), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);

	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 6

w=getWidth();
h=getHeight();
makeLine((w/1.45), (h/2.1), (w/1.45), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 7

w=getWidth();
h=getHeight();
makeLine((w/1.4), (h/2.1), (w/1.4), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 8

w=getWidth();
h=getHeight();
makeLine((w/1.35), (h/2.1), (w/1.35), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 9

w=getWidth();
h=getHeight();
makeLine((w/1.325), (h/2.1), (w/1.325), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 10

w=getWidth();
h=getHeight();
makeLine((w/1.3), (h/2.1), (w/1.3), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 11

w=getWidth();
h=getHeight();
makeLine((w/1.275), (h/2.1), (w/1.275), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 12

w=getWidth();
h=getHeight();
makeLine((w/1.25), (h/2.1), (w/1.25), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 13

w=getWidth();
h=getHeight();
makeLine((w/1.225), (h/2.1), (w/1.225), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 14

w=getWidth();
h=getHeight();
makeLine((w/1.2), (h/2.1), (w/1.2), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

// Measurement 15

w=getWidth();
h=getHeight();
makeLine((w/1.18), (h/2.1), (w/1.18), (h/2.4), 20);

	close("Detecting*");
  	tolerance=200;
	profile =getProfile;
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, File.nameWithoutExtension);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, "/home/truthling/Documents/3D_Printer/"+"results.csv");

File.delete(dir1+list[k])
run("Close");
run("Close");
