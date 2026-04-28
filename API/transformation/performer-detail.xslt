<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:param name="targetId" select="'P01'"/>
    <xsl:template match="/festival">
        <xsl:for-each select="performers/performer[@id=$targetId]">
{
    "id": "<xsl:value-of select="@id"/>",
    "name": "<xsl:value-of select="name"/>",
    "genre": "<xsl:value-of select="genre"/>"
}
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>