$(document).ready(function() {
	$("#FilterTrigger").click(function () {
		$(".FilterRows").css('display','table-row');
		$("#FilterTrigger").hide("fast");
	})
});

$(document).ready(function() {
	$(".PointerCursor").bind("mouseenter mouseleave", function(event){
	$(this).toggleClass("cursorHand");
	});
});
$(document).ready(function() {
	$(".toHighlight").bind("mouseenter mouseleave", function(event){
	$(this).toggleClass("puff");
	});
});