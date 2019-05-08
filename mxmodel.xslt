<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="workflow">
        <mxGraphModel dx="1394" dy="747" grid="1" gridSize="10" guides="1" tooltips="1" connect="1"
            arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0"
            shadow="0">
            <root>
                <mxCell id="0"/>
                <mxCell id="1" parent="0"/>
                <xsl:apply-templates select="//step"/>
            </root>
        </mxGraphModel>
    </xsl:template>

    <xsl:template match="step">
        <mxCell style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
            <xsl:attribute name="id">
                <xsl:value-of select="@id"/>
            </xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="@name"/>
            </xsl:attribute>
            <mxGeometry x="0" y="0" width="120" height="60" as="geometry"/>
        </mxCell>
        <xsl:apply-templates select="actions/common-action">
            <xsl:with-param name="source" select="@id"/>
        </xsl:apply-templates>
        <xsl:apply-templates select="actions/action">
            <xsl:with-param name="source" select="@id"/>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="common-action">
        <xsl:param name="source"/>
        <xsl:variable name="id" select="@id"/>
        <xsl:variable name="target">
            <xsl:value-of
                select="/workflow/common-actions/action[@id = $id]/results/unconditional-result/@step"
            />
        </xsl:variable>
        <mxCell
            style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1"
            edge="1" parent="1">
            <xsl:attribute name="id">
                <xsl:value-of select="concat($id, '_', $source, '_', $target)"/>
            </xsl:attribute>
            <xsl:attribute name="source">
                <xsl:value-of select="$source"/>
            </xsl:attribute>
            <xsl:attribute name="target" select="$target"/>
            <xsl:attribute name="value">
                <xsl:value-of select="/workflow/common-actions/action[@id = $id]/@name"/>
            </xsl:attribute>
            <mxGeometry relative="1" as="geometry"/>
        </mxCell>
    </xsl:template>
    <xsl:template match="actions/action">
        <xsl:param name="source"/>
        <xsl:variable name="target">
            <xsl:value-of select="results/unconditional-result/@step"/>
        </xsl:variable>
        <mxCell
            style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1"
            edge="1" parent="1">
            <xsl:attribute name="id">
                <xsl:value-of select="concat(@id, '_', $source, '_', $target)"/>
            </xsl:attribute>
            <xsl:attribute name="source">
                <xsl:value-of select="$source"/>
            </xsl:attribute>
            <xsl:attribute name="target" select="results/unconditional-result/@step"/>
            <xsl:attribute name="value" select="@name"/>
            <mxGeometry relative="1" as="geometry"/>
        </mxCell>
    </xsl:template>
</xsl:stylesheet>
