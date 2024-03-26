<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
                <title>MicroBlog Posts</title>
            </head>
            <body class="container mb-5">
                
                <div class="text-center display-1 mt-5 mb-5">
                    Blog Posts
                </div>

                <!--XPATH expression to select all blog posts-->
                <div class="row">
                    <div class="col-6">
                        <xsl:apply-templates select="/blog/posts/post"/>
                    </div>

                    <div class="col-6">
                        <!--XPATH expression to select the first blog post-->
                        <xsl:variable name="firstPost" select="/blog/posts/post[1]/content"/>
                        <p><strong>Content of first the blog Post</strong></p>
                        <xsl:value-of select="$firstPost"/>
                
                        <!--XPATH expression to select the second blog post-->
                        <xsl:variable name="secondPost" select="/blog/posts/post[2]/content"/>
                        <p class="mt-2"><strong>Content of second the blog Post</strong></p>
                        <xsl:value-of select="$secondPost"/>

                        <!--XPATH expression to select the third blog post-->
                        <xsl:variable name="thirdPost" select="/blog/posts/post[3]/content"/>
                        <p class="mt-2"><strong>Content of third the blog Post</strong></p>
                        <xsl:value-of select="$thirdPost"/>
                    </div>
                </div>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="post">
        <div>
            <h4><xsl:value-of select="source"/></h4>
            <p><xsl:value-of select="content"/></p>
            <p><i><xsl:value-of select="timestamp"/></i></p>
        </div>
    </xsl:template>
</xsl:stylesheet>
