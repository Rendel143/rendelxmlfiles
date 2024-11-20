<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Santos, Rendel D. - Profile</title>
                <style>
                    body {
                        font-family: 'Arial', sans-serif;
                        background-color: #0d0d0d;
                        color: #f5f5f5;
                        margin: 0;
                        padding: 0;
                    }
                    header {
                        background-color: #1a1a1a;
                        padding: 20px;
                        text-align: center;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                    }
                    header h1 {
                        font-size: 40px;
                        color: #e5c85e;
                        font-weight: bold;
                    }
                    section {
                        margin: 40px;
                    }
                    h2 {
                        font-size: 30px;
                        color: #f0e4d7;
                    }
                    p {
                        font-size: 18px;
                        line-height: 1.6;
                    }
                    .project {
                        margin: 20px 0;
                        background-color: #2b2b2b;
                        padding: 15px;
                        border-radius: 10px;
                        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
                    }
                    .project h3 {
                        font-size: 25px;
                        color: #c1a300;
                    }
                    footer {
                        text-align: center;
                        padding: 10px;
                        background-color: #1a1a1a;
                        color: #b8b8b8;
                        font-size: 14px;
                        box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.2);
                    }
                </style>
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="profile/name" /></h1>
                </header>
                <section>
                    <h2>About Me</h2>
                    <p><xsl:value-of select="profile/bio" /></p>
                    
                    <h2>Contact</h2>
                    <p>Email: <xsl:value-of select="profile/contact/email" /></p>
                    <p>Phone: <xsl:value-of select="profile/contact/phone" /></p>
                    
                    <h2>Portfolio</h2>
                    <xsl:for-each select="profile/portfolio/project">
                        <div class="project">
                            <h3><xsl:value-of select="@name" /></h3>
                            <p><xsl:value-of select="description" /></p>
                            <p><i><xsl:value-of select="@year" /></i></p>
                        </div>
                    </xsl:for-each>
                </section>
                <footer>
                    <p>&copy; <xsl:value-of select="current-date()" /> Santos, Rendel D.</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
