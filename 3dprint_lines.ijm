dir1 = "/home/truthling/Documents/3D_Printer/test/"; 
list = getFileList(dir1);
for (k = 0; k<list.length; k++) { 
	showProgress(k+1, list.length); 
	open(dir1+list[k]);
fileName = File.nameWithoutExtension;
time = getTime();
resultsDirectory = "/home/truthling/Documents/3D_Printer/";

run("Minimum...", "radius=2");
run("RGB Stack");
run("Z Project...", "projection=[Sum Slices]");
run("Find Edges");
selectWindow(list[k]);
close(); 

w=getWidth();
h=getHeight();

findEdgeA = (h/2.1);
findEdgeB = (h/2.4);

// Measurement 1

makeLine((w/1.7), findEdgeA, (w/1.7), findEdgeB, 20);
	
	tolerance = 900;
	profile = getProfile();
	maxLocs = Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 2

makeLine((w/1.65), findEdgeA, (w/1.65), findEdgeB, 20);
	
	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 3

makeLine((w/1.6), findEdgeA, (w/1.6), findEdgeB, 20);
	
	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 4

makeLine((w/1.55), findEdgeA, (w/1.55), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);

	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 5

makeLine((w/1.5), findEdgeA, (w/1.5), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);

	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 6

makeLine((w/1.45), findEdgeA, (w/1.45), findEdgeB, 20);
	
	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 7

makeLine((w/1.4), findEdgeA, (w/1.4), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 8

makeLine((w/1.35), findEdgeA, (w/1.35), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 9

makeLine((w/1.325), findEdgeA, (w/1.325), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 10

makeLine((w/1.3), findEdgeA, (w/1.3), findEdgeB, 20);
	
	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 11

makeLine((w/1.275), findEdgeA, (w/1.275), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 12

makeLine((w/1.25), findEdgeA, (w/1.25), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 13

makeLine((w/1.225), findEdgeA, (w/1.225), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 14

makeLine((w/1.2), findEdgeA, (w/1.2), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

// Measurement 15

makeLine((w/1.18), findEdgeA, (w/1.18), findEdgeB, 20);

	profile = getProfile();
	maxLocs= Array.findMaxima(profile, tolerance);
	Array.sort(maxLocs);
	
	for (jj= 0; jj < maxLocs.length; jj++){
		setResult("filename", jj, fileName);
		setResult("xmax", jj, maxLocs[jj]);
		if (jj>0) 
		setResult("delta_xmax", jj, (maxLocs[jj]-maxLocs[jj-1]));
	}
	updateResults();
	selectWindow("Results");
	String.copyResults; 
	string = String.paste; 
	File.append(string, resultsDirectory+fileName+time+".csv");

File.delete(dir1+list[k])
run("Close");
run("Close");
run("Quit");
