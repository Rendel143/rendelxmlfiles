<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Specify that the output is HTML -->
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <!-- The DOCTYPE declaration is handled by the browser, so it is not needed in the XSL -->
        <html>
            <head>
                <title>Santos, Rendel D. - Profile</title>
                <style>
                    /* Global Styles */
                    body {
                        font-family: 'Helvetica Neue', sans-serif;
                        margin: 0;
                        padding: 0;
                        background-color: #111;
                        color: #f1f1f1;
                        line-height: 1.6;
                    }

                    /* Header */
                    header {
                        background-color: #2c2c2c;
                        text-align: center;
                        padding: 40px;
                        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                    }

                    header h1 {
                        font-size: 50px;
                        color: #e5c85e;
                        font-weight: bold;
                        letter-spacing: 1px;
                        text-transform: uppercase;
                        margin-bottom: 10px;
                    }

                    header h2 {
                        font-size: 22px;
                        color: #ccc;
                        font-weight: normal;
                        margin-top: 0;
                    }

                    /* Section Styles */
                    section {
                        padding: 50px;
                        max-width: 1200px;
                        margin: 0 auto;
                    }

                    h2 {
                        font-size: 30px;
                        color: #e5c85e;
                        margin-bottom: 20px;
                        font-weight: bold;
                        text-transform: uppercase;
                    }

                    p {
                        font-size: 18px;
                        margin-bottom: 20px;
                        color: #d1d1d1;
                    }

                    /* Bio Section */
                    .bio {
                        background-color: #1e1e1e;
                        border-radius: 12px;
                        padding: 25px;
                        margin-bottom: 30px;
                        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
                    }

                    .bio h3 {
                        font-size: 24px;
                        color: #f5f5f5;
                        font-weight: normal;
                    }

                    .bio p {
                        font-size: 20px;
                        color: #e5c85e;
                        font-weight: normal;
                    }

                    /* Contact Section */
                    .contact {
                        background-color: #2a2a2a;
                        border-radius: 12px;
                        padding: 25px;
                        margin-bottom: 30px;
                        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
                    }

                    .contact p {
                        font-size: 20px;
                        color: #e5c85e;
                    }

                    .contact p span {
                        color: #ccc;
                    }

                    /* Portfolio Section */
                    .portfolio {
                        display: grid;
                        grid-template-columns: 1fr 1fr;
                        gap: 30px;
                    }

                    .project {
                        background-color: #2c2c2c;
                        padding: 20px;
                        border-radius: 10px;
                        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
                    }

                    .project h3 {
                        font-size: 28px;
                        color: #f5c85e;
                        margin-bottom: 10px;
                    }

                    .project p {
                        color: #ccc;
                        font-size: 18px;
                        line-height: 1.5;
                    }

                    /* Footer */
                    footer {
                        background-color: #2c2c2c;
                        text-align: center;
                        padding: 20px;
                        box-shadow: 0 -10px 30px rgba(0, 0, 0, 0.1);
                        margin-top: 50px;
                    }

                    footer p {
                        font-size: 18px;
                        color: #ccc;
                    }

                    footer p a {
                        color: #e5c85e;
                        text-decoration: none;
                    }

                    footer p a:hover {
                        text-decoration: underline;
                    }

                    /* Responsive */
                    @media (max-width: 768px) {
                        .portfolio {
                            grid-template-columns: 1fr;
                        }
                    }
                </style>
            </head>
            <body>
                <!-- Header Section -->
                <header>
                    <h1><xsl:value-of select="profile/name" /></h1>
                    <h2><xsl:value-of select="profile/bio" /></h2>
                </header>

                <!-- Bio Section -->
                <section class="bio">
                    <h3>About Me</h3>
                    <p><xsl:value-of select="profile/bio" /></p>
                </section>

                <!-- Contact Section -->
                <section class="contact">
                    <h3>Contact</h3>
                    <p>Email: <span><xsl:value-of select="profile/contact/email" /></span></p>
                    <p>Phone: <span><xsl:value-of select="profile/contact/phone" /></span></p>
                </section>

                <!-- Portfolio Section -->
                <section class="portfolio">
                    <h2>Portfolio</h2>
                    <xsl:for-each select="profile/portfolio/project">
                        <div class="project">
                            <h3><xsl:value-of select="@name" /></h3>
                            <p><xsl:value-of select="description" /></p>
                            <p><i><xsl:value-of select="@year" /></i></p>
                        </div>
                    </xsl:for-each>
                </section>

                <!-- Footer Section -->
                <!-- Footer Section -->
<footer>
    <p>© 2024 Santos, Rendel D. | <a href="mailto:{profile/contact/email}">Contact Me</a></p>
</footer>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
