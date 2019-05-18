<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>Sales Records</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
                <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml"></link>
                <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css"></link>
                 <link rel="stylesheet" type="text/css" href="/media/css/site-examples.css?_=8ffc0b31bc8d9ff82fbb94689dd1d7ff"></link>
                <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></link>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
                  <script type="text/javascript" class="init">
    $(document).ready(function () {
        $('#example').DataTable({
            "paging": false // false to disable pagination (or any other option)
        });
         $('.dataTables_length').addClass('bs-select');
    });
  </script>
            </head>
            <body>
                <div class="container">
                    <div class="row">
                        <div class="box clearfix">
                            <h3>Sales Records extraxting from XML</h3>
                            <p>CBD Project</p>
                            <input class="form-control" id="myInput" type="text" placeholder="Search.."></input>
                            <br></br>
                            <table class="table table-hover" id="bootstrap-table">
                                <thead>
                                    <tr>
                                        <th>Region</th>
                                        <th>Country</th>
                                        <th>ItemType</th>
                                        <th>OrderDate</th>
                                        <th>ShipDate</th>
                                        <th>UnitPrice</th>
                                        <th>UnitCost</th>
                                        <th>TotalRevenue</th>
                                        <th>UnitsSold</th>
                                        <th>TotalProfit</th>
                                    </tr>
                                </thead>
                                <tbody id="myTable">
                                    <xsl:for-each select="root/row">
                                        <tr>
                                            <td>
                                                <xsl:value-of select="Region" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="Country" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="ItemType" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="OrderDate" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="ShipDate" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="UnitPrice" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="UnitCost" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="TotalRevenue" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="UnitsSold" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="TotalProfit" />
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </tbody>
                            </table>
                        </div>
                                       <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
                    </div>
                </div>
                                <script src="http://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
                <script src="js/vendor/bootstrap.min.js" type="text/javascript"></script>
                <script src="js/vendor/jquery.sortelements.js" type="text/javascript"></script>
                <script src="js/jquery.bdt.min.js" type="text/javascript"></script>
                                <script>
    $(document).ready( function () {
        $('#bootstrap-table').bdt({
            showSearchForm: 0,
            showEntriesPerPageField: 0
        });
    });
</script>
 
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>