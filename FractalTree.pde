private double fractionLength = .6; 
private int smallestBranch = 4; 
private double branchAngle = .3;  


public void setup() 
{
	size(640,480);    
	noLoop(); 
} 

public void draw() 
{   
	background(0);   
	stroke(255);   
	//double length = (Math.random()*100)+50;
	//int treeX = (int)(Math.random()*640);
	//line (treeX,480,treeX, (float)(480 -length));
	//drawBranches(treeX,(int)(480 - length),length,3*Math.PI/2);
	line(320,480,320,380);
	drawBranches(320,380,150,3*Math.PI/2); 
	line(220,480,220,400);
	drawBranches(220,400,125,3*Math.PI/2);  
	line(420,480,420,410);
	drawBranches(420,410,135,3*Math.PI/2);  
	
}

public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	
	branchLength = branchLength * fractionLength;
	double angle1 = angle - branchAngle;
	double angle2 = angle + branchAngle;
	int endX1 = (int) (branchLength*Math.cos(angle1) + x);
	int endY1 = (int) (branchLength*Math.sin(angle1) + y);
	int endX2 = (int) (branchLength*Math.cos(angle2) + x);
	int endY2 = (int) (branchLength*Math.sin(angle2) + y);
	line (x,y,endX1,endY1);
	line (x,y,endX2,endY2);
	
	if (branchLength > smallestBranch){
		drawBranches(endX1, endY1, branchLength, angle1);
		drawBranches(endX2, endY2, branchLength, angle2);
	}


} 

 

