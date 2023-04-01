<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        
    <xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="Library.css" />
            <script src="https://kit.fontawesome.com/b5d70ea355.js" crossorigin="anonymous"></script>
            <script src="searchFunc.js"></script>
        </head>
        <body>
            
            <a class="gotopbtn" href="books.xml"> <i class="fas fa-arrow-up"></i> </a>

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

             <!-- Books Record --> 
            <section id = "Books">
                <div class="content">
                    <h2>BOOKS</h2>
                    <input type="text" id="myInput" onkeyup="searchBooks()" placeholder="Search for titles..."></input>
                        <table id="content-table">
                            <tr class="header">
                                <th>Book ID</th>
                                <th>Title</th>
                                <th>Genre</th>
                                <th>Author</th>
                                <th>Publisher</th>
                                <th>Year Published</th>
                            </tr>
                            <xsl:for-each select="//LibraryManagementSystem/Books/Book">
                                <tr>
                                    <td><xsl:value-of select="BookID"/></td>
                                    <td><xsl:value-of select="Title"/></td>
                                    <td><xsl:value-of select="Genre"/></td>
                                    <td><xsl:value-of select="Author"/></td>
                                    <td><xsl:value-of select="Publisher"/></td>
                                    <td><xsl:value-of select="Year_Published"/></td>
                                </tr>
                            </xsl:for-each>
                    </table>
                </div>           
            </section>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
