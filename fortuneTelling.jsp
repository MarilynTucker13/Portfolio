<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>りんりん占い</title>
    <link rel="stylesheet" href="shootingStar.css" />
</head>
<style>
    body {
        display: flex;
        justify-content: center; /* 水平方向の中央揃え */
        align-items: center; /* 垂直方向の中央揃え */
        height: 100vh; /* ビューポートの全高さ */
        margin: 0; /* ブラウザのデフォルトのマージンを解除 */
    }
    .fortune-result {
        display: flex;
        flex-direction: column; /* 要素を縦方向に配置 */
        align-items: center; /* 子要素を中央揃え */
        padding: 20px;
        border: 1px solid #fffefe; /* 枠線のスタイル */
        border-radius: 5px; /* 角の丸み */
        background: #f9f9f9; /* 背景色 */
        position: relative; /* z-index を適用するために必要 */
        z-index: 10; /* section よりも高い値を設定 */
        font-family: sans-serif;
    }
</style>
<body>
    <%
        String name = request.getParameter("name");
        // 運勢をランダムに決定するロジック
        String[] fortunes = {"大吉", "中吉", "小吉", "凶", "大凶"};
        int index = new java.util.Random().nextInt(fortunes.length);
        String fortune = fortunes[index];
    %>
    <div class="fortune-result">
        <h2><%= name %>さんの今日の運勢は・・・<%= fortune %>です！</h2>
        <h3>Have a nice day!</h3>
    </div>
    <section>
        <star-element></star-element>
        <star-element></star-element>
        <star-element></star-element>
      </section>
</body>
</html>