<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
 <html>
      <head>
        <title>Información de Cliente, Detalle del Pedido y Productos</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Información del Cliente</h2>
        <xsl:apply-templates select="//pedido/cliente"/>
        <h2>Detalle del Pedido</h2>
        <xsl:apply-templates select="//pedido/detallePedido"/>
        <h2>Información de Productos</h2>
        <xsl:apply-templates select="//pedido/detallePedido/productos/producto"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cliente">
    <table>
      <tr>
        <th colspan="2">Información del Cliente</th>
      </tr>
      <tr>
        <td>Nombre:</td>
        <td><xsl:value-of select="nombre"/></td>
      </tr>
      <tr>
        <td>Apellidos:</td>
        <td><xsl:value-of select="apellidos"/></td>
      </tr>
      <tr>
        <td>Teléfono:</td>
        <td><xsl:value-of select="telefono"/></td>
      </tr>
      <tr>
        <td>Dirección:</td>
        <td><xsl:value-of select="direccion"/></td>
      </tr>
      <tr>
        <td>Correo Electrónico:</td>
        <td><xsl:value-of select="correoElectronico"/></td>
      </tr>
      <tr>
        <td>Fecha de Inclusión:</td>
        <td><xsl:value-of select="fechaInclusion"/></td>
      </tr>
    </table>
  </xsl:template>

  <xsl:template match="detallePedido">
    <table>
      <tr>
        <th colspan="2">Detalle del Pedido</th>
      </tr>
      <tr>
        <td>Número de Pedido:</td>
        <td><xsl:value-of select="numeroPedido"/></td>
      </tr>
      <tr>
        <td>Fecha de Compra:</td>
        <td><xsl:value-of select="fechaCompra"/></td>
      </tr>
      <tr>
        <td>Fecha de Entrega:</td>
        <td><xsl:value-of select="fechaEntrega"/></td>
      </tr>
      <tr>
        <td>Total Factura:</td>
        <td><xsl:value-of select="totalFactura"/></td>
      </tr>
    </table>
  </xsl:template>

  <xsl:template match="producto">
    <table>
      <tr>
        <th colspan="2">Información de Productos</th>
      </tr>
      <tr>
        <td>Nombre del Producto:</td>
        <td><xsl:value-of select="nombreProducto"/></td>
      </tr>
      <tr>
        <td>Referencia:</td>
        <td><xsl:value-of select="referencia"/></td>
      </tr>
      <tr>
        <td>Precio:</td>
        <td><xsl:value-of select="precio"/></td>
      </tr>
      <tr>
        <td>Unidades:</td>
        <td><xsl:value-of select="unidades"/></td>
      </tr>
    </table>
  </xsl:template>
</xsl:stylesheet>
