/***************************/
//@Author: Adrian "yEnS" Mato Gondelle & Ivan Guardado Castro
//@website: www.yensdesign.com
//@email: yensamg@gmail.com
//@license: Feel free to use it, but keep this credits please!					
/***************************/

$(document).ready(function(){
	$(".menu > li").click(function(e){
		switch(e.target.id){
			case "account":
				//change status & style menu
				$("#account").addClass("active");
				$("#employer").removeClass("active");
				$("#links").removeClass("active");
				//display selected division, hide others
				$("div.news").fadeIn();
				$("div.tutorials").css("display", "none");
				$("div.links").css("display", "none");
			break;
			case "employer":
				//change status & style menu
				$("#account").removeClass("active");
				$("#employer").addClass("active");
				$("#links").removeClass("active");
				//display selected division, hide others
				$("div.tutorials").fadeIn();
				$("div.news").css("display", "none");
				$("div.links").css("display", "none");
			break;
		}
		//alert(e.target.id);
		return false;
	});
});
$(document).ready(function(){
	$(".menu1 > li").click(function(e){
		switch(e.target.id){
			case "pending":
				//change status & style menu
				$("#pending").addClass("active");
				$("#active-job").removeClass("active");
				$("#rejected").removeClass("active");
				$("#expired").removeClass("active");
				//display selected division, hide others
				$("div.pending").fadeIn();
				$("div.active-job").css("display", "none");
				$("div.rejected").css("display", "none");
				$("div.expired").css("display", "none");
			break;
			case "active-job":
				//change status & style menu
				$("#pending").removeClass("active");
				$("#active-job").addClass("active");
				$("#rejected").removeClass("active");
				$("#expired").removeClass("active");
				//display selected division, hide others
				$("div.active-job").fadeIn();
				$("div.pending").css("display", "none");
				$("div.rejected").css("display", "none");
				$("div.expired").css("display", "none");
			break;
			case "rejected":
				//change status & style menu
				$("#pending").removeClass("active");
				$("#active-job").removeClass("active");
				$("#rejected").addClass("active");
				$("#expired").removeClass("active");
				//display selected division, hide others
				$("div.rejected").fadeIn();
				$("div.pending").css("display", "none");
				$("div.active-job").css("display", "none");
				$("div.expired").css("display", "none");
			break;
			case "expired":
				//change status & style menu
				$("#pending").removeClass("active");
				$("#active-job").removeClass("active");
				$("#rejected").removeClass("active");
				$("#expired").addClass("active");
				//display selected division, hide others
				$("div.expired").fadeIn();
				$("div.pending").css("display", "none");
				$("div.active-job").css("display", "none");
				$("div.rejected").css("display", "none");
			break;
		}
		//alert(e.target.id);
		return false;
	});
});


$(document).ready(function(){
	$(".menu2 > li").click(function(e){
		switch(e.target.id){
			case "saved":
				//change status & style menu
				$("#saved").addClass("active");
				$("#alerts").removeClass("active");
				$("#savedjobs").removeClass("active");
				//display selected division, hide others
				$("div.saved").fadeIn();
				$("div.active-job").css("display", "none");
				$("div.savedjobs").css("display", "none");
			break;
			case "alerts":
				//change status & style menu
				$("#saved").removeClass("active");
				$("#alerts").addClass("active");
				$("#rejected").removeClass("active");
				//display selected division, hide others
				$("div.alerts").fadeIn();
				$("div.saved").css("display", "none");
				$("div.savedjobs").css("display", "none");
			break;
			case "savedjobs":
				//change status & style menu
				$("#saved").removeClass("active");
				$("#alerts").removeClass("active");
				$("#savedjobs").addClass("active");
				//display selected division, hide others
				$("div.savedjobs").fadeIn();
				$("div.saved").css("display", "none");
				$("div.alerts").css("display", "none");
			break;
		}
		//alert(e.target.id);
		return false;
	});
});
