<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>허정민의 황금금고</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #fff3cd, #fffde7);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            color: #d4af37;
            font-size: 2rem;
            margin-bottom: 1rem;
        }

        .entry-box {
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
            width: 90%;
            max-width: 400px;
        }

        input[type="number"] {
            width: 100%;
            padding: 15px;
            font-size: 1.2rem;
            border: 2px solid #ffd700;
            border-radius: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }

        input[type="text"] {
            width: 100%;
            padding: 15px;
            font-size: 1.2rem;
            border: 2px solid #ffd700;
            border-radius: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 15px;
            font-size: 1.2rem;
            background-color: #ffd700;
            color: #000;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: bold;
        }

        button:hover {
            background-color: #ffce00;
        }

        .message {
            margin-top: 20px;
            font-size: 1rem;
            color: #d35400;
        }
    </style>
</head>
<body>

<h1>허정민의 황금금고</h1>

<div class="entry-box">
    <input type="text" id="entryName" placeholder="이름 입력" maxlength="10">
    <input type="number" id="entryNumber" placeholder="응모번호 입력" maxlength="3">
    <button onclick="submitEntry()">응모하기</button>
    <div class="message" id="messageBox"></div>
</div>

<script>
    function submitEntry() {
        const entryName = document.getElementById('entryName').value;
        const entryNumber = document.getElementById('entryNumber').value;
        const messageBox = document.getElementById('messageBox');

        if (entryNumber.length === 0) {
            messageBox.textContent = "응모하실 숫자를 입력해주세요.";
            return;
        }

        fetch('/api/insertEntryNumber', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: {
                'entryName':entryName,
                'entryNumber':entryNumber
            }
        })
            .then(response => response.json())
            .then(data => {
                messageBox.textContent = data.message;
            })
            .catch(err => {
                messageBox.textContent = "서버 오류가 발생했습니다.";
            });
    }
</script>

</body>
</html>
