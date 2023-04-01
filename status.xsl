<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        
    <xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="Library.css" />
        </head>
        <body>
            
            <header id="home">
                <div class= "container">
                    <div class="navbar">
                        <h2 class="logo"></h2>
                        <nav>
                            <ul class="nav_links">
                                <li><a href="Library.xml" type="button">Home</a></li>
                                <li><a href="books.xml" type="button">Books</a></li>
                                <li><a href="users.xml" type="button">Users</a></li>
                                <li><a href="users_limit.xml" type="button">Users Limitation</a></li>
                                <li><a href="issued_books.xml" type="button">Issued Books</a></li>
                                <li><a href="status.xml" type="button">Status</a></li>
                                <li><a href="librarians.xml" type="button">Librarians</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </header>

             <!-- Statuses Records -->
            <section id = "Statuses">
                <div class="content">
                    <h2>STATUS</h2>
                        <table id="content-table">
                            <tr class="header">
                                


          <th>Status Code</th>
                                <th>Classification</th>
                                <th>Condition</th>
                                <th>Fine</th>
                            </tr>
                            <xsl:for-each select="//LibraryManagementSystem/Statuses/Status">
                                <tr>
                                    <td><xsl:value-of select="Status_Code"/></td>
                                    <td><xsl:value-of select="Classification"/></td>
                                    <td><xsl:value-of select="Condition"/></td>
                                    <td><xsl:value-of select="Fine"/></td>
                                </tr>
                            </xsl:for-each>
                    </table>
                </div>           
            </section>

           
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>