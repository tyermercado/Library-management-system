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
                    <div class = "card">
                        <div class="gradient">
                            <div class="slide-right">
                                <div class="content">
                                    <h2>For the readers  <span>of the future</span></h2>
                                    <div class="desc">
                                        <h3>Nothing is pleasanter than exploring a library.</h3>
                                    </div>                       
                                </div>
                            </div>
                       </div>
                    </div>
            </header>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>

