<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>My Library Books</title>
                <style>
                    body {
                        font-family: 'Times New Roman', serif;
                        margin: 0;
                        padding: 0;
                        background: linear-gradient(135deg, #f5f5f5, #d7e1ec);
                        color: #444;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        min-height: 100vh;
                        flex-direction: column;
                    }

                    .container {
                        width: 80%;
                        max-width: 1200px;
                        background: white;
                        border-radius: 15px;
                        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
                        padding: 30px;
                        margin-bottom: 50px;
                    }

                    h1 {
                        text-align: center;
                        font-size: 3em;
                        color: #2c3e50;
                        margin-bottom: 30px;
                        font-weight: bold;
                        text-transform: uppercase;
                        letter-spacing: 2px;
                        border-bottom: 2px solid #d1d1d1;
                        padding-bottom: 10px;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                        border-radius: 10px;
                        overflow: hidden;
                        background: #fafafa;
                    }

                    th, td {
                        padding: 15px;
                        text-align: center;
                        font-size: 1.1em;
                    }

                    th {
                        background: linear-gradient(135deg, #3498db, #2980b9);
                        color: white;
                        font-weight: bold;
                        text-transform: uppercase;
                    }

                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }

                    tr:nth-child(odd) {
                        background-color: #ffffff;
                    }

                    tr:hover {
                        background-color: #f1f1f1;
                        cursor: pointer;
                        transition: background-color 0.3s ease;
                    }

                    td {
                        border-bottom: 1px solid #ddd;
                    }

                    table {
                        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
                    }

                    .footer {
                        text-align: center;
                        font-size: 1.1em;
                        color: #333;
                        margin-top: 30px;
                    }

                    .footer p {
                        margin: 5px 0;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>My Library Books</h1>
                    <table>
                        <tr>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Year</th>
                            <th>Genre</th>
                        </tr>
                        <xsl:for-each select="library/book">
                            <tr>
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="author"/></td>
                                <td><xsl:value-of select="year"/></td>
                                <td><xsl:value-of select="genre"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
<div class="footer">
    <p>Name: Santos, Rendel D.</p>
    <p>Year &amp; Section: BSIT - 3C</p>
</div>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
