if(temposome>0)temposome--;

else{
	alp-=.1;

	if(alp<=0)instance_destroy();
}


if(!global.webworld){
	alp-=.1;	
	if(alp<=0)instance_destroy();
}