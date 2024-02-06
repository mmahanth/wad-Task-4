<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
          }
          .subject-code {
            color: blue; /* Change color to whatever you prefer */
          }
        </style>
      </head>
      <body>
        <h2>Student Marks</h2>
        <table>
          <tr>
            <th>Subject</th>
            <th>Student Name</th>
            <th>Marks</th>
            <th>Subject Code</th>
          </tr>
          <xsl:for-each select="subjects/subject">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="studentName"/></td>
              <td><xsl:value-of select="marks"/></td>
              <td class="subject-code"><xsl:value-of select="subjectCode"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
