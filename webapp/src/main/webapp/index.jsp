```html
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NEXORA — Technology & Innovation</title>

    <style>

        /* ==============================
           RESET
        ============================== */

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
            background: #f7f8fc;
            color: #111827;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            width: 90%;
            max-width: 1180px;
            margin: auto;
        }


        /* ==============================
           NAVBAR
        ============================== */

        header {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;

            background: rgba(247, 248, 252, 0.90);
            backdrop-filter: blur(15px);

            border-bottom: 1px solid #e5e7eb;
        }

        nav {
            height: 76px;

            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            font-size: 24px;
            font-weight: 800;
            letter-spacing: -1px;
        }

        .logo span {
            color: #635bff;
        }

        .nav-links {
            display: flex;
            gap: 30px;
            list-style: none;
        }

        .nav-links a {
            color: #596273;
            font-size: 14px;
            font-weight: 600;

            transition: 0.25s;
        }

        .nav-links a:hover {
            color: #635bff;
        }

        .nav-cta {
            padding: 10px 18px;

            background: #111827;
            color: white !important;

            border-radius: 7px;
        }

        .nav-cta:hover {
            background: #635bff;
        }


        /* ==============================
           HERO
        ============================== */

        .hero {
            min-height: 100vh;

            padding-top: 76px;

            display: flex;
            align-items: center;

            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: "";

            position: absolute;

            width: 500px;
            height: 500px;

            background: #dcd8ff;

            border-radius: 50%;

            filter: blur(100px);

            top: 10%;
            right: -150px;

            opacity: 0.55;
        }

        .hero-content {
            max-width: 800px;

            position: relative;
            z-index: 2;
        }

        .badge {
            display: inline-block;

            padding: 8px 14px;

            background: white;

            border: 1px solid #e5e7eb;

            border-radius: 30px;

            color: #635bff;

            font-size: 13px;
            font-weight: 700;

            margin-bottom: 25px;

            box-shadow: 0 5px 20px rgba(0,0,0,0.04);
        }

        .hero h1 {
            font-size: clamp(48px, 7vw, 82px);

            line-height: 1.02;

            letter-spacing: -4px;

            margin-bottom: 25px;
        }

        .gradient-text {
            background: linear-gradient(
                90deg,
                #635bff,
                #a855f7,
                #ec4899
            );

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-description {
            max-width: 650px;

            font-size: 19px;

            color: #667085;

            margin-bottom: 35px;
        }

        .hero-buttons {
            display: flex;
            gap: 14px;

            flex-wrap: wrap;
        }

        .btn-primary {
            padding: 14px 24px;

            background: #111827;

            color: white;

            border-radius: 8px;

            font-weight: 700;

            transition: 0.25s;
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            background: #635bff;
        }

        .btn-secondary {
            padding: 14px 24px;

            border: 1px solid #d7dbe3;

            background: white;

            border-radius: 8px;

            font-weight: 700;

            transition: 0.25s;
        }

        .btn-secondary:hover {
            border-color: #635bff;
            color: #635bff;
        }


        /* ==============================
           TRUST BAR
        ============================== */

        .trust {
            padding: 30px 0;

            border-top: 1px solid #e5e7eb;
            border-bottom: 1px solid #e5e7eb;

            background: white;
        }

        .trust-content {
            display: flex;

            justify-content: space-between;
            align-items: center;

            gap: 30px;

            flex-wrap: wrap;
        }

        .trust p {
            color: #9aa3b2;

            font-size: 13px;

            font-weight: 700;

            text-transform: uppercase;

            letter-spacing: 1px;
        }

        .trust-items {
            display: flex;
            gap: 40px;

            flex-wrap: wrap;
        }

        .trust-items span {
            font-size: 17px;

            font-weight: 800;

            color: #a1a8b3;
        }


        /* ==============================
           SECTIONS
        ============================== */

        section {
            padding: 110px 0;
        }

        .section-title {
            max-width: 700px;

            margin-bottom: 55px;
        }

        .section-title small {
            color: #635bff;

            font-weight: 800;

            letter-spacing: 2px;

            text-transform: uppercase;
        }

        .section-title h2 {
            font-size: 45px;

            letter-spacing: -2px;

            margin: 10px 0 15px;
        }

        .section-title p {
            color: #667085;

            font-size: 17px;
        }


        /* ==============================
           FEATURES
        ============================== */

        .features {
            background: white;
        }

        .feature-grid {
            display: grid;

            grid-template-columns: repeat(3, 1fr);

            gap: 22px;
        }

        .feature {
            padding: 35px;

            border: 1px solid #e7e9ee;

            border-radius: 14px;

            background: #fff;

            transition: 0.3s;
        }

        .feature:hover {
            transform: translateY(-8px);

            box-shadow:
                0 20px 50px rgba(17,24,39,0.08);

            border-color: #c9c5ff;
        }

        .feature-icon {
            width: 50px;
            height: 50px;

            display: flex;
            align-items: center;
            justify-content: center;

            background: #eeecff;

            color: #635bff;

            border-radius: 10px;

            font-size: 22px;

            margin-bottom: 22px;
        }

        .feature h3 {
            font-size: 21px;

            margin-bottom: 10px;
        }

        .feature p {
            color: #667085;

            font-size: 15px;
        }


        /* ==============================
           STATS
        ============================== */

        .stats {
            background: #111827;

            color: white;
        }

        .stats-grid {
            display: grid;

            grid-template-columns: repeat(4, 1fr);

            gap: 30px;
        }

        .stat {
            text-align: center;
        }

        .stat h3 {
            font-size: 42px;

            letter-spacing: -2px;

            color: #c4b5fd;
        }

        .stat p {
            color: #9ca3af;

            font-size: 14px;
        }


        /* ==============================
           WORKFLOW
        ============================== */

        .workflow {
            background: #f7f8fc;
        }

        .workflow-grid {
            display: grid;

            grid-template-columns: repeat(4, 1fr);

            gap: 20px;
        }

        .step {
            position: relative;

            padding: 30px;

            background: white;

            border-radius: 12px;

            border: 1px solid #e5e7eb;
        }

        .step-number {
            color: #635bff;

            font-size: 13px;

            font-weight: 800;

            margin-bottom: 18px;
        }

        .step h3 {
            margin-bottom: 10px;
        }

        .step p {
            color: #667085;

            font-size: 14px;
        }


        /* ==============================
           TECH STACK
        ============================== */

        .stack {
            background: white;
        }

        .stack-layout {
            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 70px;

            align-items: center;
        }

        .stack-text h2 {
            font-size: 44px;

            letter-spacing: -2px;

            margin-bottom: 18px;
        }

        .stack-text p {
            color: #667085;

            margin-bottom: 25px;
        }

        .tags {
            display: flex;

            gap: 10px;

            flex-wrap: wrap;
        }

        .tag {
            padding: 10px 15px;

            background: #f4f4f7;

            border: 1px solid #e2e4e9;

            border-radius: 6px;

            font-size: 14px;

            font-weight: 700;
        }

        .terminal {
            background: #111827;

            color: #d1d5db;

            border-radius: 14px;

            padding: 25px;

            box-shadow:
                0 25px 60px rgba(17,24,39,0.18);
        }

        .terminal-top {
            display: flex;

            gap: 7px;

            margin-bottom: 25px;
        }

        .terminal-dot {
            width: 10px;
            height: 10px;

            border-radius: 50%;

            background: #4b5563;
        }

        .terminal-line {
            margin: 9px 0;

            font-family: monospace;

            font-size: 14px;
        }

        .terminal-green {
            color: #34d399;
        }

        .terminal-purple {
            color: #a78bfa;
        }

        .terminal-blue {
            color: #60a5fa;
        }


        /* ==============================
           PRICING STYLE CARDS
        ============================== */

        .plans {
            background: #f7f8fc;
        }

        .plan-grid {
            display: grid;

            grid-template-columns: repeat(3, 1fr);

            gap: 22px;
        }

        .plan {
            background: white;

            border: 1px solid #e5e7eb;

            border-radius: 14px;

            padding: 35px;
        }

        .plan.featured {
            border: 2px solid #635bff;

            transform: translateY(-10px);

            box-shadow:
                0 20px 50px rgba(99,91,255,0.12);
        }

        .plan-label {
            color: #635bff;

            font-size: 12px;

            font-weight: 800;

            letter-spacing: 1px;

            margin-bottom: 18px;
        }

        .plan h3 {
            font-size: 25px;

            margin-bottom: 10px;
        }

        .plan p {
            color: #667085;

            font-size: 14px;

            margin-bottom: 25px;
        }

        .plan ul {
            list-style: none;
        }

        .plan li {
            padding: 9px 0;

            border-bottom: 1px solid #eef0f3;

            font-size: 14px;
        }

        .plan li::before {
            content: "✓";

            color: #635bff;

            font-weight: bold;

            margin-right: 10px;
        }


        /* ==============================
           CTA
        ============================== */

        .cta {
            padding: 110px 0;

            background: #111827;

            color: white;

            text-align: center;
        }

        .cta h2 {
            font-size: 52px;

            letter-spacing: -2px;

            margin-bottom: 15px;
        }

        .cta p {
            color: #9ca3af;

            max-width: 600px;

            margin: auto auto 30px;
        }


        /* ==============================
           FOOTER
        ============================== */

        footer {
            background: #0b111c;

            color: #9ca3af;

            padding: 30px 0;
        }

        .footer-content {
            display: flex;

            justify-content: space-between;

            align-items: center;
        }

        .footer-logo {
            color: white;

            font-size: 20px;

            font-weight: 800;
        }

        .footer-logo span {
            color: #8b5cf6;
        }


        /* ==============================
           RESPONSIVE
        ============================== */

        @media (max-width: 900px) {

            .nav-links {
                display: none;
            }

            .feature-grid,
            .plan-grid {
                grid-template-columns: 1fr;
            }

            .stats-grid {
                grid-template-columns: 1fr 1fr;
            }

            .workflow-grid {
                grid-template-columns: 1fr 1fr;
            }

            .stack-layout {
                grid-template-columns: 1fr;
            }

            .project {
                grid-template-columns: 1fr;
            }

        }


        @media (max-width: 600px) {

            .hero h1 {
                font-size: 48px;

                letter-spacing: -2px;
            }

            .section-title h2,
            .stack-text h2 {
                font-size: 35px;
            }

            .stats-grid,
            .workflow-grid {
                grid-template-columns: 1fr;
            }

            .cta h2 {
                font-size: 38px;
            }

            .footer-content {
                flex-direction: column;

                gap: 12px;
            }

        }

    </style>

</head>


<body>


    <!-- ==============================
         NAVBAR
    ============================== -->

    <header>

        <div class="container">

            <nav>

                <a href="#home" class="logo">
                    NEXORA<span>.</span>
                </a>

                <ul class="nav-links">

                    <li>
                        <a href="#features">Features</a>
                    </li>

                    <li>
                        <a href="#workflow">Process</a>
                    </li>

                    <li>
                        <a href="#technology">Technology</a>
                    </li>

                    <li>
                        <a href="#plans">Solutions</a>
                    </li>

                    <li>
                        <a href="#contact" class="nav-cta">
                            Get Started
                        </a>
                    </li>

                </ul>

            </nav>

        </div>

    </header>


    <!-- ==============================
         HERO
    ============================== -->

    <section id="home" class="hero">

        <div class="container">

            <div class="hero-content">

                <div class="badge">
                    ✦ BUILDING THE NEXT GENERATION OF SOFTWARE
                </div>

                <h1>

                    Technology that
                    <span class="gradient-text">
                        moves you forward.
                    </span>

                </h1>

                <p class="hero-description">

                    We design reliable systems, automate complex
                    workflows and help teams move from idea to
                    production with confidence.

                </p>

                <div class="hero-buttons">

                    <a href="#features" class="btn-primary">
                        Explore Platform →
                    </a>

                    <a href="#technology" class="btn-secondary">
                        View Technology
                    </a>

                </div>

            </div>

        </div>

    </section>


    <!-- ==============================
         TRUST
    ============================== -->

    <div class="trust">

        <div class="container">

            <div class="trust-content">

                <p>
                    Built around modern technology
                </p>

                <div class="trust-items">

                    <span>LINUX</span>
                    <span>DOCKER</span>
                    <span>JENKINS</span>
                    <span>CLOUD</span>
                    <span>KUBERNETES</span>

                </div>

            </div>

        </div>

    </div>


    <!-- ==============================
         FEATURES
    ============================== -->

    <section id="features" class="features">

        <div class="container">

            <div class="section-title">

                <small>
                    WHAT WE DO
                </small>

                <h2>
                    Everything you need to build better.
                </h2>

                <p>
                    A modern approach to software infrastructure,
                    automation and continuous delivery.
                </p>

            </div>


            <div class="feature-grid">


                <div class="feature">

                    <div class="feature-icon">
                        ⚡
                    </div>

                    <h3>
                        Automation
                    </h3>

                    <p>
                        Replace repetitive manual processes with
                        reliable automated workflows.
                    </p>

                </div>


                <div class="feature">

                    <div class="feature-icon">
                        ◈
                    </div>

                    <h3>
                        Scalability
                    </h3>

                    <p>
                        Design infrastructure that can grow as
                        applications and teams grow.
                    </p>

                </div>


                <div class="feature">

                    <div class="feature-icon">
                        ✓
                    </div>

                    <h3>
                        Reliability
                    </h3>

                    <p>
                        Build repeatable deployments and systems
                        that are easier to monitor and maintain.
                    </p>

                </div>


            </div>

        </div>

    </section>


    <!-- ==============================
         STATS
    ============================== -->

    <section class="stats">

        <div class="container">

            <div class="stats-grid">

                <div class="stat">

                    <h3>99.9%</h3>

                    <p>
                        Target Availability
                    </p>

                </div>

                <div class="stat">

                    <h3>10x</h3>

                    <p>
                        Faster Automation
                    </p>

                </div>

                <div class="stat">

                    <h3>24/7</h3>

                    <p>
                        Infrastructure
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

    </section>


    <!-- ==============================
         WORKFLOW
    ============================== -->

    <section id="workflow" class="workflow">

        <div class="container">

            <div class="section-title">

                <small>
                    OUR PROCESS
                </small>

                <h2>
                    From code to production.
                </h2>

                <p>
                    A simple workflow for delivering software
                    efficiently.
                </p>

            </div>


            <div class="workflow-grid">


                <div class="step">

                    <div class="step-number">
                        01 / PLAN
                    </div>

                    <h3>
                        Plan
                    </h3>

                    <p>
                        Understand requirements and design the
                        architecture.
                    </p>

                </div>


                <div class="step">

                    <div class="step-number">
                        02 / BUILD
                    </div>

                    <h3>
                        Build
                    </h3>

                    <p>
                        Develop the application and manage source
                        code with Git.
                    </p>

                </div>


                <div class="step">

                    <div class="step-number">
                        03 / AUTOMATE
                    </div>

                    <h3>
                        Automate
                    </h3>

                    <p>
                        Create CI/CD pipelines that test and
                        package applications.
                    </p>

                </div>


                <div class="step">

                    <div class="step-number">
                        04 / DEPLOY
                    </div>

                    <h3>
                        Deploy
                    </h3>

                    <p>
                        Release applications to production and
                        monitor the environment.
                    </p>

                </div>


            </div>

        </div>

    </section>


    <!-- ==============================
         TECHNOLOGY
    ============================== -->

    <section id="technology" class="stack">

        <div class="container">

            <div class="stack-layout">


                <div class="stack-text">

                    <small style="
                        color:#635bff;
                        font-weight:800;
                        letter-spacing:2px;
                    ">
                        TECHNOLOGY STACK
                    </small>

                    <h2>
                        Built with tools that developers trust.
                    </h2>

                    <p>

                        Explore the technologies behind modern
                        application delivery and infrastructure
                        automation.

                    </p>


                    <div class="tags">

                        <span class="tag">
                            Linux
                        </span>

                        <span class="tag">
                            Git
                        </span>

                        <span class="tag">
                            Jenkins
                        </span>

                        <span class="tag">
                            Docker
                        </span>

                        <span class="tag">
                            Kubernetes
                        </span>

                        <span class="tag">
                            Ansible
                        </span>

                        <span class="tag">
                            AWS
                        </span>

                        <span class="tag">
                            Bash
                        </span>

                    </div>

                </div>


                <div class="terminal">

                    <div class="terminal-top">

                        <span class="terminal-dot"></span>
                        <span class="terminal-dot"></span>
                        <span class="terminal-dot"></span>

                    </div>


                    <div class="terminal-line">

                        <span class="terminal-purple">
                            $
                        </span>

                        git push origin main

                    </div>


                    <div class="terminal-line terminal-green">

                        ✓ Code pushed successfully

                    </div>


                    <div class="terminal-line">

                        <span class="terminal-purple">
                            $
                        </span>

                        docker build -t application .

                    </div>


                    <div class="terminal-line terminal-green">

                        ✓ Docker image created

                    </div>


                    <div class="terminal-line">

                        <span class="terminal-purple">
                            $
                        </span>

                        kubectl apply -f deployment.yml

                    </div>


                    <div class="terminal-line terminal-blue">

                        deployment.apps/application configured

                    </div>


                    <div class="terminal-line terminal-green">

                        ✓ Deployment successful

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- ==============================
         SOLUTIONS
    ============================== -->

    <section id="plans" class="plans">

        <div class="container">

            <div class="section-title">

                <small>
                    SOLUTIONS
                </small>

                <h2>
                    Choose your path.
                </h2>

                <p>
                    Different approaches for different stages
                    of your technology journey.
                </p>

            </div>


            <div class="plan-grid">


                <div class="plan">

                    <div class="plan-label">
                        START
                    </div>

                    <h3>
                        Foundation
                    </h3>

                    <p>
                        Build the fundamentals required for
                        modern infrastructure.
                    </p>

                    <ul>

                        <li>
                            Linux fundamentals
                        </li>

                        <li>
                            Git & GitHub
                        </li>

                        <li>
                            Bash scripting
                        </li>

                        <li>
                            Server administration
                        </li>

                    </ul>

                </div>


                <div class="plan featured">

                    <div class="plan-label">
                        MOST POPULAR
                    </div>

                    <h3>
                        Automation
                    </h3>

                    <p>
                        Connect development and operations
                        through automation.
                    </p>

                    <ul>

                        <li>
                            Jenkins CI/CD
                        </li>

                        <li>
                            Docker
                        </li>

                        <li>
                            Ansible
                        </li>

                        <li>
                            Automated deployments
                        </li>

                    </ul>

                </div>


                <div class="plan">

                    <div class="plan-label">
                        ADVANCED
                    </div>

                    <h3>
                        Scale
                    </h3>

                    <p>
                        Manage distributed applications and
                        cloud infrastructure.
                    </p>

                    <ul>

                        <li>
                            Kubernetes
                        </li>

                        <li>
                            Cloud infrastructure
                        </li>

                        <li>
                            Monitoring
                        </li>

                        <li>
                            Production systems
                        </li>

                    </ul>

                </div>


            </div>

        </div>

    </section>


    <!-- ==============================
         CTA
    ============================== -->

    <section id="contact" class="cta">

        <div class="container">

            <h2>
                Ready to build?
            </h2>

            <p>
                Start with an idea. Turn it into code.
                Automate it. Deploy it. Keep improving.
            </p>

            <a href="mailto:admin@example.com"
               class="btn-primary">

                Let's Connect →

            </a>

        </div>

    </section>


    <!-- ==============================
         FOOTER
    ============================== -->

    <footer>

        <div class="container">

            <div class="footer-content">

                <div class="footer-logo">
                    NEXORA<span>.</span>
                </div>

                <div>
                    © 2026 Nexora. Built with HTML & CSS.
                </div>

            </div>

        </div>

    </footer>


</body>

</html>
```

