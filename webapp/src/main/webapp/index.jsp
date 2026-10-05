<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Website</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    line-height:1.6;
    background:#f4f4f4;
}

header{
    background:#222;
    color:white;
    padding:15px 50px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    font-size:24px;
    font-weight:bold;
}

nav ul{
    list-style:none;
    display:flex;
}

nav ul li{
    margin-left:20px;
}

nav ul li a{
    color:white;
    text-decoration:none;
}

.hero{
    height:90vh;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#667eea,#764ba2);
    color:white;
    text-align:center;
}

.hero h1{
    font-size:3rem;
}

.hero p{
    margin:20px 0;
    font-size:1.2rem;
}

.btn{
    padding:12px 25px;
    border:none;
    background:white;
    color:#667eea;
    font-size:18px;
    border-radius:5px;
    cursor:pointer;
    transition:0.3s;
}

.btn:hover{
    background:#ddd;
}

.features{
    padding:50px;
    display:flex;
    justify-content:center;
    gap:20px;
    flex-wrap:wrap;
}

.card{
    background:white;
    width:300px;
    padding:20px;
    border-radius:10px;
    text-align:center;
    box-shadow:0 4px 10px rgba(0,0,0,0.1);
}

.card h3{
    margin-bottom:10px;
}

.contact{
    background:white;
    padding:50px;
    text-align:center;
}

.contact form{
    max-width:500px;
    margin:auto;
}

.contact input,
.contact textarea{
    width:100%;
    padding:12px;
    margin:10px 0;
    border:1px solid #ccc;
    border-radius:5px;
}

.contact button{
    background:#667eea;
    color:white;
    border:none;
    padding:12px 20px;
    cursor:pointer;
    border-radius:5px;
}

footer{
    background:#222;
    color:white;
    text-align:center;
    padding:15px;
}

@media(max-width:768px){
    header{
        flex-direction:column;
    }

    nav ul{
        margin-top:10px;
        flex-direction:column;
        align-items:center;
    }

    nav ul li{
        margin:10px 0;
    }

    .hero h1{
        font-size:2rem;
    }
}
</style>
</head>
<body>

<header>
    <div class="logo">MyWebsite</div>
    <nav>
        <ul>
            <li>#Home</a></li>
            <li>#featuresFeatures</a></li>
            <li>#contactContact</a></li>
        </ul>
    </nav>
</header>

<section class="hero">
    <h1>Welcome to My Website</h1>
    <p>Create beautiful websites with HTML, CSS & JavaScript.</p>
    <button class="btn" onclick="showMessage()">Get Started</button>
</section>

<section class="features" id="features">
    <div class="card">
        <h3>Fast</h3>
        <p>Optimized and responsive design for all devices.</p>
    </div>

    <div class="card">
        <h3>Modern</h3>
        <p>Clean UI built with modern web technologies.</p>
    </div>

    <div class="card">
        <h3>Interactive</h3>
        <p>JavaScript-powered user interactions.</p>
    </div>
</section>

<section class="contact" id="contact">
    <h2>Contact Us</h2>

    <form onsubmit="submitForm(event)">
        <input type="text" id="name" placeholder="Your Name" required>
        <input type="email" id="email" placeholder="Your Email" required>
        <textarea id="message" rows="5" placeholder="Your Message"></textarea>
        <button type="submit">Send Message</button>
    </form>
</section>

<footer>
    <p>&copy; 2026 MyWebsite. All Rights Reserved.</p>
</footer>

<script>
function showMessage() {
    alert("Welcome! Thanks for visiting our website.");
}

function submitForm(event) {
    event.preventDefault();

    let name = document.getElementById("name").value;

    alert("Thank you, " + name + "! Your message has been submitted.");

    document.querySelector("form").reset();
}
</script>

</body>
</html>
