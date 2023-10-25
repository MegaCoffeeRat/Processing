void setup() {
    size(1300,650);
    background(255, 255, 255);
}
 
void draw() {
    noStroke();
    for(int i=0; i<650; i = i+100)
    {
        fill(255,0,0);
        rect(0,i, 1600, 50);    
    }
    fill(10,10,45);
    rect(0,0, 500,300);
    
}
