// 假设后端服务运行在 http://localhost:port/CardVerify/VerifyCard.aspx
const verifyUrl = 'VerifyCard.aspx';

// 验证卡密
function verifyCard() {
    // 获取用户输入的卡密
    const cardCode = document.getElementById('cardCode').
