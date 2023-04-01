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
            
            <a class="gotopbtn" href="issued_books.xml"> <i class="fas fa-arrow-up"></i> </a>

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

           

            <!-- Issued Books Records -->
            <section id = "Issued_Books">
                <div class="content">
                    <h2>ISSUED BOOKS</h2>
                        <input type="text" id="myInput" onkeyup="searchIssuedBooks()" placeholder="Search for borrowers full name..."></input>
                        <table id="content-table">
                            <tr class="header">
                                <th>Borrowers No.</th>
                                <th>Borrowers Full Name</th>
                                <th>User ID</th>
                                <th>Book ID</th>
                                <th>Issued Date</th>
                                <th>Return Date</th>
                                <th>Date Returned</th>
                                <th>Librarian ID</th>
                                <th>Status Code</th>
                            </tr>
                            <xsl:for-each select="//LibraryManagementSystem/Issued_Books/Issued_Book">
                                <tr>
                                    <td><xsl:value-of select="Borrowers_No"/></td>
                                    <td><xsl:value-of select="Borrowers_FullName"/></td>
                                    <td><xsl:value-of select="UserID"/></td>
                                    <td><xsl:value-of select="BookID"/></td>
                                    <td><xsl:value-of select="Issued_Date"/></td>
                                    <td><xsl:value-of select="Return_Date"/></td>
                                    <td><xsl:value-of select="Date_Returned"/></td>
                                    <td><xsl:value-of select="LibrarianID"/></td>
                                    <td><xsl:value-of select="Status_Code"/></td>
                                </tr>
                            </xsl:for-each>
                    </table>
                </div>           
            </section>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>

