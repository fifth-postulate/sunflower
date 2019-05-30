int s = 22;
int t = 7;
float alpha = float(s)/float(t);
float angle = 2*PI * alpha;
float scale = 5;
float n = 2500;

void setup() {  
  size(512, 512);
}

void draw() {
  clear();
  translate(width/2, height/2);
  for (int pod = 0; pod < n; pod++) {
    float r = scale * sqrt(pod);
    float x = r * cos(pod * angle);
    float y = r * sin(pod * angle);
    circle(x, y, 5);
  }
}
