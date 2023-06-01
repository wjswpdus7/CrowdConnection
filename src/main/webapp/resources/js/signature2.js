var canvas = document.getElementById('signatureCanvas');
var context = canvas.getContext('2d');

var lastX = 0;
var lastY = 0;
var isMouseDown = false;

// 마우스 클릭시
canvas.addEventListener('mousedown', function (event) {
  isMouseDown = true;
  lastX = event.offsetX;
  lastY = event.offsetY;
});

// 마우스 이동시
canvas.addEventListener('mousemove', function (event) {
  if (!isMouseDown) return;

  context.beginPath();
  context.moveTo(lastX, lastY);
  context.lineTo(event.offsetX, event.offsetY);
  context.stroke();

  lastX = event.offsetX;
  lastY = event.offsetY;
});

// 마우스 클릭 해제시
canvas.addEventListener('mouseup', function (event) {
  isMouseDown = false;
});

