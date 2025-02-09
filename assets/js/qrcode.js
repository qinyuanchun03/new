function QRCode(canvas, options) {
  // QR code generation code goes here
}

function generateQRCode() {
  var canvas = document.createElement('canvas');
  var ctx = canvas.getContext('2d');
  var qrCode = new QRCode(canvas, {
    text: 'WIFI密码在这里，不要迷路',
    width: 256,
    height: 256,
    colorDark: '#000000',
    colorLight: '#ffffff',
    correctLevel: QRCode.CorrectLevel.H
  });
  document.body.appendChild(canvas);
}
