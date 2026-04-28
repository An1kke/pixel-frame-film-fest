<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/festival">
{
    "id": "<xsl:value-of select="@id"/>",
    "name": "<xsl:value-of select="@name"/>",
    "edition": <xsl:value-of select="@edition"/>,
    "year": <xsl:value-of select="@year"/>,
    "description": "<xsl:value-of select="description"/>",
    "location": {
        "city": "<xsl:value-of select="location/city"/>",
        "country": "<xsl:value-of select="location/country"/>"
    },
    "dates": {
        "start": "<xsl:value-of select="dateRange/@start"/>",
        "end": "<xsl:value-of select="dateRange/@end"/>"
    },
    "tickets": {
        "available": <xsl:value-of select="tickets/@available"/>,
        "currency": "<xsl:value-of select="tickets/@currency"/>",
        "startingPrice": <xsl:value-of select="tickets/startingPrice"/>
    },
    "links": {
        "website": "<xsl:value-of select="links/website"/>"
    }
}
    </xsl:template>
</xsl:stylesheet>