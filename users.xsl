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
            
            <a class="gotopbtn" href="users.xml"> <i class="fas fa-arrow-up"></i> </a>

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

             <!-- Users Record -->
            <section id = "users">
                

     <div class="content">
                    <h2>USERS</h2>
                        <input type="text" id="myInput" onkeyup="searchUsers()" placeholder="Search for full name..."></input>
                        <table id="content-table">
                            <tr class="header">
                                <th>User ID</th>
                                <th>Type No</th>
                                <th>Full Name</th>
                                <th>Department</th>
                                <th>Address</th>
                                <th>Contact Number</th>
                                <th>Email Address</th>
                            </tr>
                            <xsl:for-each select="//LibraryManagementSystem/Users/User">
                                <tr>
                                    <td><xsl:value-of select="UserID"/></td>
                                    <td><xsl:value-of select="Type_No"/></td>
                                    <td><xsl:value-of select="FullName"/></td>
                                    <td><xsl:value-of select="Department"/></td>
                                    <td><xsl:value-of select="Address"/></td>
                                    <td><xsl:value-of select="Contact_Number"/></td>
                                    <td><xsl:value-of select="Email_Address"/></td>
                                </tr>
                            </xsl:for-each>
                    </table>
                </div>
            </section>
           
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>

