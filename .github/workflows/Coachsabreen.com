<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>كوتش صابرين - تطوير الذات</title>
    <style>
        /* تصميم عام */
        body {
            font-family: 'Arial', sans-serif;
            direction: rtl;
            text-align: center;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
        }

        /* هيدر */
        header {
            background: linear-gradient(to right, #2E86C1, #AED6F1);
            color: white;
            padding: 20px;
            font-size: 22px;
            font-weight: bold;
        }

        nav ul {
            list-style: none;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        /* الأقسام */
        section {
            padding: 30px;
            background: white;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #2E86C1;
        }

        /* الحجز */
        form {
            display: flex;
            flex-direction: column;
            gap: 10px;
            max-width: 300px;
            margin: auto;
        }

        input, button {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #2E86C1;
            color: white;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        /* الأيقونات */
        .social-icons {
            margin-top: 10px;
        }

        .social-icons a {
            display: inline-block;
            margin: 5px;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            color: white;
        }

        .whatsapp { background-color: #25D366; }
        .messenger { background-color: #0084FF; }
        .instagram { background-color: #E1306C; }

        /* أيقونة واتساب عائمة */
        .whatsapp-float {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 50px;
            height: 50px;
            background-color: #25D366;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .whatsapp-float img {
            width: 40px;
            height: 40px;
        }

        .whatsapp-float:hover {
            transform: scale(1.1);
        }

        /* الفوتر */
        footer {
            background: #2C3E50;
            color: white;
            padding: 10px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <header>
        <h1>مرحبًا بك في عالم التطوير والتحفيز!</h1>
        <nav>
            <ul>
                <li><a href="#about">من أنا</a></li>
                <li><a href="#services">الخدمات</a></li>
                <li><a href="#booking">حجز جلسة</a></li>
                <li><a href="#contact">تواصل معي</a></li>
            </ul>
        </nav>
    </header>

    <section id="about">
        <h2>من أنا</h2>
        <p>أنا كوتش صابرين، أساعد الأشخاص على اكتشاف ذاتهم، بناء ثقتهم وتحقيق النجاح.</p>
    </section>

    <section id="services">
        <h2>الخدمات</h2>
        <ul>
            <li>✅ جلسات تطوير الذات</li>
            <li>✅ دورات تدريبية</li>
            <li>✅ إرشاد مهني</li>
            <li>✅ إدارة الوقت</li>
        </ul>
    </section>

    <section id="booking">
        <h2>حجز جلسة</h2>
        <form id="bookingForm">
            <label>الاسم:</label>
            <input type="text" id="name" required>
            <label>البريد الإلكتروني:</label>
            <input type="email" id="email" required>
            <label>اختر موعد الجلسة:</label>
            <input type="datetime-local" id="date" required>
            <button type="submit">احجز الآن</button>
        </form>
        <p id="confirmation"></p>
    </section>

    <section id="contact">
        <h2>تواصل معي</h2>
        <div class="social-icons">
            <a href="https://wa.me/201064148925" target="_blank" class="whatsapp">
                💬 واتساب
            </a>
            <a href="https://www.facebook.com/share/15vpc9t8AA/?mibextid=wwXIfr" target="_blank" class="messenger">
                📩 ماسنجر
            </a>
            <a href="https://www.instagram.com/sabreen_life_coach?igsh=dG9yZXB5MDFtamd3" target="_blank" class="instagram">
                📷 إنستجرام
            </a>
        </div>
    </section>

    <footer>
        <p>جميع الحقوق محفوظة © 2025 كوتش صابرين</p>
    </footer>

    <div class="whatsapp-float">
        <a href="https://wa.me/201064148925" target="_blank">
            <img src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg" alt="واتساب">
        </a>
    </div>

    <script>
        document.getElementById("bookingForm").addEventListener("submit", function(event) {
            event.preventDefault();
            let name = document.getElementById("name").value;
            let date = document.getElementById("date").value;
            document.getElementById("confirmation").innerText = `✅ تم حجز الجلسة بنجاح، شكرًا ! سنكون على تواصل معك بخصوص الموعد: .`;
        });
    </script>

</body>
</html
