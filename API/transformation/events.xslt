<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/festival">
[
    <xsl:for-each select="programme/event">
    {
        "id": "<xsl:value-of select="@id"/>",
        "day": "<xsl:value-of select="@day"/>",
        "venueId": "<xsl:value-of select="@venue"/>",
        "performerId": "<xsl:value-of select="@performer"/>",
        "startTime": "<xsl:value-of select="@start"/>",
        "endTime": "<xsl:value-of select="@end"/>"
    }<xsl:if test="position() != last()">,</xsl:if>
    </xsl:for-each>
]
    </xsl:template>
</xsl:stylesheet>