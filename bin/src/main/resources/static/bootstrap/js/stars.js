/**
 * 
 */
 
 function init(){
	
	$("#goeunsungImage > .goeun2").css("display","none");	
	$("#goeunsungImage").hover(function(){
		$("#goeunsungImage > .goeun1").css("display","none");	
		$("#goeunsungImage > .goeun2").css("display","block");	
	},function(){
		$("#goeunsungImage > .goeun2").css("display","none");	
		$("#goeunsungImage > .goeun1").css("display","block");	
	});
		
		
		
		
}