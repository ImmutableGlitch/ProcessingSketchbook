class Cube{
  Edge[] edges = new Edge[12];
  
  Cube(Position pos, float size){
    // Top square
    edges[0] = new Edge(pos.Relative(-size/2, size/2, size/2), pos.Relative(-size/2,-size/2, size/2)); //1 to 2
    edges[1] = new Edge(pos.Relative(-size/2, size/2, size/2), pos.Relative( size/2, size/2, size/2)); //1 to 5
    edges[2] = new Edge(pos.Relative( size/2,-size/2, size/2), pos.Relative(-size/2,-size/2, size/2)); //6 to 2
    edges[3] = new Edge(pos.Relative( size/2,-size/2, size/2), pos.Relative( size/2, size/2, size/2)); //6 to 5
    
    // Bottom square
    edges[4] = new Edge(pos.Relative(-size/2, size/2, -size/2), pos.Relative(-size/2,-size/2, -size/2)); //4 to 3
    edges[5] = new Edge(pos.Relative(-size/2, size/2, -size/2), pos.Relative( size/2, size/2, -size/2)); //4 to 8
    edges[6] = new Edge(pos.Relative( size/2,-size/2, -size/2), pos.Relative(-size/2,-size/2, -size/2)); //7 to 3
    edges[7] = new Edge(pos.Relative( size/2,-size/2, -size/2), pos.Relative( size/2, size/2, -size/2)); //7 to 8
    
    // Left side
    edges[8] = new Edge(pos.Relative(-size/2, size/2, size/2), pos.Relative(-size/2, size/2, -size/2)); //1 to 4
    edges[9] = new Edge(pos.Relative( size/2, size/2, size/2), pos.Relative( size/2, size/2, -size/2)); //5 to 8
    
    // Right side
    edges[10] = new Edge(pos.Relative(-size/2, -size/2, size/2), pos.Relative(-size/2, -size/2, -size/2)); //2 to 3
    edges[11] = new Edge(pos.Relative( size/2, -size/2, size/2), pos.Relative( size/2, -size/2, -size/2)); //6 to 7
  }
}
