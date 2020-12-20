varying vec2 v_vTexcoord_A;
varying vec2 v_vTexcoord_B;
varying vec4 v_vColour;

uniform vec4 u_vA;
uniform vec4 u_vB;

uniform sampler2D overlayTexture;

void main()
{
	
	
	if(texture2D( overlayTexture, v_vTexcoord_B ).r==1.0){
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord_A );
	}else{
	gl_FragColor = vec4(1.,0.,1.,0.0);
	}
	
	
	gl_FragColor = vec4(texture2D( gm_BaseTexture, v_vTexcoord_A ).rgb,texture2D( overlayTexture, v_vTexcoord_B ).r);
	
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord_A );
	
	//gl_FragColor = vec4(v_vTexcoord_B.x,v_vTexcoord_B.x,v_vTexcoord_B.x,1.0);
	
	vec4 sortie = vec4(0,0,0,1);
	if(v_vTexcoord_A.x>0.88){ 
		sortie = texture2D(gm_BaseTexture, v_vTexcoord_A);
		}
	gl_FragColor = sortie;
	//gl_FragColor = v_vColour * texture2D( overlayTexture, v_vTexcoord_B );
			
	
	
}
