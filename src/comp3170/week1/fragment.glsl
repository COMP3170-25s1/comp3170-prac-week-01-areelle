#version 410

uniform vec3 u_colour;    		// colour as a 3D vector (r,g,b)
uniform vec2 u_screenSize;    	// screen dimensions in pixels

layout(location = 0) out vec4 o_colour;    // output to colour buffer

void main() {
    vec2 p = gl_FragCoord.xy / u_screenSize; 	// scale p into range (0,0) to (1,1)

    vec2 centered = p - vec2(0.5, 0.5); 		//center the shape

    float d = abs(centered.x) + abs(centered.y); //calculate distance

    if (d < 0.5) {					    // Set the threshold for the diamond shape 
        o_colour = vec4(u_colour, 1);  //Diamond Colour
    }
    else {
        o_colour = vec4(0, 0, 0, 1);  //Black
    }
}