<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/festival">
[
    <xsl:for-each select="venues/venue">
    {
        "id": "<xsl:value-of select="@id"/>",
        "name": "<xsl:value-of select="name"/>",
        "capacity": <xsl:value-of select="capacity"/>,
        "type": "<xsl:value-of select="type"/>"
    }<xsl:if test="position() != last()">,</xsl:if>
    </xsl:for-each>
]
    </xsl:template>
</xsl:stylesheet>