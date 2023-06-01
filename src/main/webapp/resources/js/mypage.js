var context = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(context,{
	type: 'pie',
	data : {
	labels : [ "CHAT GPT로 수익올리기" , "블로그 운영 비법", "면역력 증가 알약"],
	datasets : [{
	backgroundColor : ["#2ecc71", "#3498db", "#f1c40f"],
	hoverBackgroundColor : ["#A6A6A6", "#D1B2FF", "#B2EBF4"],
	data : [500, 300,100]
	}]
	},
	options : {
		responsive : false
	}
});