<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>DevOps | Cloud & Automation</title>

    <style>

        /* =========================
           GLOBAL
        ========================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #07111f;
            color: #e8eef7;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            width: 90%;
            max-width: 1150px;
            margin: auto;
        }


        /* =========================
           NAVBAR
        ========================= */

        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;

            background: rgba(7, 17, 31, 0.92);
            backdrop-filter: blur(12px);

            border-bottom: 1px solid #1d2d42;
        }

        nav {
            height: 75px;

            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .logo span {
            color: #38bdf8;
        }

        .nav-links {
            display: flex;
            gap: 32px;
            list-style: none;
        }

        .nav-links a {
            color: #aebdce;
            font-size: 15px;

            transition: 0.3s;
        }

        .nav-links a:hover {
            color: #38bdf8;
        }

        .nav-button {
            padding: 10px 18px;

            border: 1px solid #38bdf8;
            border-radius: 6px;

            color: #38bdf8 !important;
        }

        .nav-button:hover {
            background: #38bdf8;
            color: #06111d !important;
        }


        /* =========================
           HERO
        ========================= */

        .hero {
            min-height: 100vh;

            display: flex;
            align-items: center;

            padding-top: 75px;

            background:
                radial-gradient(
                    circle at 15% 20%,
                    rgba(14, 165, 233, 0.14),
                    transparent 30%
                ),
                radial-gradient(
                    circle at 85% 75%,
                    rgba(37, 99, 235, 0.12),
                    transparent 30%
                );
        }

        .hero-content {
            max-width: 850px;
        }

        .small-title {
            color: #38bdf8;

            font-size: 14px;
            font-weight: bold;

            letter-spacing: 4px;

            margin-bottom: 22px;
        }

        .hero h1 {
            font-size: clamp(45px, 7vw, 78px);

            line-height: 1.05;

            margin-bottom: 28px;
        }

        .hero h1 span {
            color: #38bdf8;
        }

        .hero-text {
            max-width: 680px;

            color: #91a4b8;

            font-size: 18px;

            margin-bottom: 35px;
        }

        .buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .primary-btn {
            padding: 14px 25px;

            background: #38bdf8;
            color: #06111d;

            font-weight: bold;

            border-radius: 6px;

            transition: 0.3s;
        }

        .primary-btn:hover {
            transform: translateY(-3px);
            background: #7dd3fc;
        }

        .secondary-btn {
            padding: 14px 25px;

            border: 1px solid #33485f;
            color: #d5dfeb;

            border-radius: 6px;

            transition: 0.3s;
        }

        .secondary-btn:hover {
            border-color: #38bdf8;
            color: #38bdf8;
        }


        /* =========================
           STATS
        ========================= */

        .stats {
            border-top: 1px solid #1c2c40;
            border-bottom: 1px solid #1c2c40;

            padding: 35px 0;
        }

        .stats-grid {
            display: grid;

            grid-template-columns: repeat(4, 1fr);

            gap: 20px;
        }

        .stat {
            text-align: center;

            border-right: 1px solid #1c2c40;
        }

        .stat:last-child {
            border-right: none;
        }

        .stat h3 {
            font-size: 30px;
            color: #38bdf8;
        }

        .stat p {
            color: #8295a9;
            font-size: 14px;
        }


        /* =========================
           COMMON SECTION
        ========================= */

        section {
            padding: 110px 0;
        }

        .section-heading {
            max-width: 650px;
            margin-bottom: 55px;
        }

        .section-label {
            color: #38bdf8;

            font-size: 13px;
            font-weight: bold;

            letter-spacing: 3px;

            margin-bottom: 12px;
        }

        .section-heading h2 {
            font-size: 42px;
            margin-bottom: 15px;
        }

        .section-heading p {
            color: #8295a9;
        }


        /* =========================
           SERVICES
        ========================= */

        .services {
            background: #091523;
        }

        .service-grid {
            display: grid;

            grid-template-columns: repeat(3, 1fr);

            gap: 22px;
        }

        .service {
            padding: 32px;

            background: #0d1b2b;

            border: 1px solid #1d3046;

            border-radius: 10px;

            transition: 0.3s;
        }

        .service:hover {
            transform: translateY(-7px);

            border-color: #38bdf8;
        }

        .service-number {
            font-size: 14px;

            color: #38bdf8;

            margin-bottom: 22px;
        }

        .service h3 {
            font-size: 21px;
            margin-bottom: 12px;
        }

        .service p {
            color: #8295a9;
            font-size: 15px;
        }


        /* =========================
           SKILLS
        ========================= */

        .skills-layout {
            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 70px;

            align-items: center;
        }

        .skills-text h2 {
            font-size: 42px;
            margin-bottom: 20px;
        }

        .skills-text p {
            color: #8295a9;
            margin-bottom: 25px;
        }

        .skill-list {
            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 12px;
        }

        .skill {
            padding: 15px;

            background: #0d1b2b;

            border: 1px solid #1d3046;

            border-radius: 6px;

            color: #c8d5e3;
        }

        .skill::before {
            content: "✓";

            color: #38bdf8;

            margin-right: 10px;
        }


        /* =========================
           PROJECT
        ========================= */

        .project-section {
            background: #091523;
        }

        .project {
            display: grid;

            grid-template-columns: 1.2fr 1fr;

            gap: 40px;

            padding: 45px;

            background: #0d1b2b;

            border: 1px solid #1d3046;

            border-radius: 12px;
        }

        .project h3 {
            font-size: 30px;

            margin-bottom: 15px;
        }

        .project p {
            color: #8295a9;

            margin-bottom: 25px;
        }

        .project-info {
            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 15px;
        }

        .project-item {
            padding: 18px;

            background: #091523;

            border-radius: 7px;
        }

        .project-item small {
            display: block;

            color: #6f8297;

            margin-bottom: 5px;
        }

        .project-item strong {
            color: #dce6f0;
        }


        /* =========================
           ABOUT
        ========================= */

        .about-layout {
            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 70px;
        }

        .about h2 {
            font-size: 42px;
            margin-bottom: 20px;
        }

        .about p {
            color: #8295a9;
            margin-bottom: 18px;
        }

        .about-box {
            padding: 35px;

            border-left: 3px solid #38bdf8;

            background: #0d1b2b;
        }

        .about-box h3 {
            margin-bottom: 15px;
        }

        .about-box p {
            margin: 0;
        }


        /* =========================
           CONTACT
        ========================= */

        .contact {
            text-align: center;

            background:
                radial-gradient(
                    circle,
                    rgba(14, 165, 233, 0.10),
                    transparent 50%
                );
        }

        .contact h2 {
            font-size: 48px;
            margin-bottom: 15px;
        }

        .contact p {
            color: #8295a9;
            margin-bottom: 30px;
        }


        /* =========================
           FOOTER
        ========================= */

        footer {
            padding: 28px 0;

            border-top: 1px solid #1d2d42;

            color: #65788d;

            font-size: 14px;
        }

        .footer-content {
            display: flex;

            justify-content: space-between;

            align-items: center;
        }


        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 850px) {

            .nav-links {
                display: none;
            }

            .stats-grid {
                grid-template-columns: 1fr 1fr;
            }

            .stat {
                border-right: none;
            }

            .service-grid {
                grid-template-columns: 1fr;
            }

            .skills-layout {
                grid-template-columns: 1fr;
            }

            .project {
                grid-template-columns: 1fr;
            }

            .about-layout {
                grid-template-columns: 1fr;
            }

        }

        @media (max-width: 550px) {

            .hero h1 {
                font-size: 43px;
            }

            .stats-grid {
                grid-template-columns: 1fr;
            }

            .skill-list {
                grid-template-columns: 1fr;
            }

            .project {
                padding: 25px;
            }

            .contact h2 {
                font-size: 35px;
            }

            .footer-content {
                flex-direction: column;
                gap: 10px;
            }

        }

    </style>
</head>


<body>


    <!-- =========================
         NAVBAR
    ========================= -->

    <header>

        <div class="container">

            <nav>

                <a href="#home" class="logo">
                    DevOps<span>.</span>
                </a>

                <ul class="nav-links">

                    <li>
                        <a href="#home">Home</a>
                    </li>

                    <li>
                        <a href="#services">Services</a>
                    </li>

                    <li>
                        <a href="#skills">Skills</a>
                    </li>

                    <li>
                        <a href="#projects">Projects</a>
                    </li>

                    <li>
                        <a href="#about">About</a>
                    </li>

                    <li>
                        <a href="#contact" class="nav-button">
                            Contact
                        </a>
                    </li>

                </ul>

            </nav>

        </div>

    </header>


    <!-- =========================
         HERO
    ========================= -->

    <main id="home">

        <section class="hero">

            <div class="container">

                <div class="hero-content">

                    <div class="small-title">
                        DEVOPS • CLOUD • AUTOMATION
                    </div>

                    <h1>
                        Build.
                        <span>Deploy.</span>
                        Scale.
                    </h1>

                    <p class="hero-text">

                        Welcome to my technology space. I'm learning
                        DevOps, cloud infrastructure and automation
                        while building practical projects that solve
                        real-world problems.

                    </p>

                    <div class="buttons">

                        <a href="#projects" class="primary-btn">
                            View My Work
                        </a>

                        <a href="#about" class="secondary-btn">
                            About Me
                        </a>

                    </div>

                </div>

            </div>

        </section>


        <!-- =========================
             STATS
        ========================= -->

        <div class="stats">

            <div class="container">

                <div class="stats-grid">

                    <div class="stat">

                        <h3>06+</h3>

                        <p>
                            Technologies
                        </p>

                    </div>

                    <div class="stat">

                        <h3>24/7</h3>

                        <p>
                            Learning Mindset
                        </p>

                    </div>

                    <div class="stat">

                        <h3>100%</h3>

                        <p>
                            Hands-on Practice
                        </p>

                    </div>

                    <div class="stat">

                        <h3>∞</h3>

                        <p>
                            Possibilities
                        </p>

                    </div>

                </div>

            </div>

        </div>


        <!-- =========================
             SERVICES
        ========================= -->

        <section id="services" class="services">

            <div class="container">

                <div class="section-heading">

                    <div class="section-label">
                        WHAT I WORK WITH
                    </div>

                    <h2>
                        DevOps & Cloud
                    </h2>

                    <p>
                        Technologies and practices I'm exploring
                        to understand modern software delivery.
                    </p>

                </div>


                <div class="service-grid">


                    <div class="service">

                        <div class="service-number">
                            01
                        </div>

                        <h3>
                            Continuous Integration
                        </h3>

                        <p>
                            Automating builds and testing with
                            CI pipelines to make software delivery
                            faster and more reliable.
                        </p>

                    </div>


                    <div class="service">

                        <div class="service-number">
                            02
                        </div>

                        <h3>
                            Continuous Deployment
                        </h3>

                        <p>
                            Deploying applications automatically
                            to servers and environments using
                            modern deployment workflows.
                        </p>

                    </div>


                    <div class="service">

                        <div class="service-number">
                            03
                        </div>

                        <h3>
                            Infrastructure
                        </h3>

                        <p>
                            Working with Linux servers, networking,
                            containers and cloud infrastructure.
                        </p>

                    </div>


                </div>

            </div>

        </section>


        <!-- =========================
             SKILLS
        ========================= -->

        <section id="skills">

            <div class="container">

                <div class="skills-layout">


                    <div class="skills-text">

                        <div class="section-label">
                            TECHNOLOGY STACK
                        </div>

                        <h2>
                            Tools I'm Learning
                        </h2>

                        <p>
                            My current learning journey focuses on
                            understanding the complete path from
                            source code to production deployment.
                        </p>

                        <a href="#projects" class="primary-btn">
                            See My Project
                        </a>

                    </div>


                    <div class="skill-list">

                        <div class="skill">
                            Linux
                        </div>

                        <div class="skill">
                            Git
                        </div>

                        <div class="skill">
                            Jenkins
                        </div>

                        <div class="skill">
                            Docker
                        </div>

                        <div class="skill">
                            Kubernetes
                        </div>

                        <div class="skill">
                            Ansible
                        </div>

                        <div class="skill">
                            AWS / Cloud
                        </div>

                        <div class="skill">
                            Bash
                        </div>

                    </div>

                </div>

            </div>

        </section>


        <!-- =========================
             PROJECT
        ========================= -->

        <section id="projects" class="project-section">

            <div class="container">

                <div class="section-heading">

                    <div class="section-label">
                        FEATURED PROJECT
                    </div>

                    <h2>
                        Application Deployment
                    </h2>

                    <p>
                        A simple project demonstrating application
                        deployment on a Linux server.
                    </p>

                </div>


                <div class="project">


                    <div>

                        <h3>
                            Tomcat Web Deployment
                        </h3>

                        <p>

                            This website is running on Apache Tomcat
                            inside a Linux environment. The project
                            demonstrates how a web application can be
                            deployed and served from a production-style
                            server.

                        </p>

                        <a href="#contact" class="primary-btn">
                            Project Details
                        </a>

                    </div>


                    <div class="project-info">

                        <div class="project-item">

                            <small>
                                SERVER
                            </small>

                            <strong>
                                Linux
                            </strong>

                        </div>


                        <div class="project-item">

                            <small>
                                WEB SERVER
                            </small>

                            <strong>
                                Apache Tomcat
                            </strong>

                        </div>


                        <div class="project-item">

                            <small>
                                FRONTEND
                            </small>

                            <strong>
                                HTML + CSS
                            </strong>

                        </div>


                        <div class="project-item">

                            <small>
                                NEXT STEP
                            </small>

                            <strong>
                                Jenkins CI/CD
                            </strong>

                        </div>

                    </div>


                </div>

            </div>

        </section>


        <!-- =========================
             ABOUT
        ========================= -->

        <section id="about">

            <div class="container">

                <div class="about-layout">


                    <div class="about">

                        <div class="section-label">
                            ABOUT
                        </div>

                        <h2>
                            Always Learning.
                        </h2>

                        <p>

                            Technology changes quickly, and that's
                            exactly what makes it interesting.

                        </p>

                        <p>

                            My focus is on developing practical
                            knowledge rather than simply memorizing
                            commands. Every project is an opportunity
                            to understand how systems actually work.

                        </p>

                    </div>


                    <div class="about-box">

                        <h3>
                            My Approach
                        </h3>

                        <p>

                            Learn the concept → build it →
                            break it → troubleshoot it →
                            automate it.

                        </p>

                    </div>


                </div>

            </div>

        </section>


        <!-- =========================
             CONTACT
        ========================= -->

        <section id="contact" class="contact">

            <div class="container">

                <div class="section-label">
                    GET IN TOUCH
                </div>

                <h2>
                    Let's Build Something.
                </h2>

                <p>
                    Interested in technology, automation and
                    building things that actually work?
                </p>

                <a
                    href="mailto:admin@example.com"
                    class="primary-btn"
                >
                    Contact Me
                </a>

            </div>

        </section>

    </main>


    <!-- =========================
         FOOTER
    ========================= -->

    <footer>

        <div class="container">

            <div class="footer-content">

                <div>
                    © 2026 DevOps. All rights reserved.
                </div>

                <div>
                    Built with HTML & CSS
                </div>

            </div>

        </div>

    </footer>


</body>

</html>
