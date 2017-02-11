/**
 * PedidosAPI.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    id: {
      type: 'integer',
      unique: true,
      primaryKey: true,
      autoIncrement: true
    },
    fecha: {
      type: 'datetime'
    },
    factura: {
      type: 'integer'
    },
    h_inicio: {
      type: 'datetime'
    },
    h_fin: {
      type: 'datetime'
    },
    id_cliente: {
      type: 'integer'
    },
    id_direccion: {
      type: 'integer'
    },
    id_estado: {
      type: 'integer'
    },
    h_digitado: {
      type: 'datetime'
    },
    h_cocina: {
      type: 'datetime'
    },
    h_barra: {
      type: 'datetime'
    },
    h_domiciliario: {
      type: 'datetime'
    },
    h_entregado: {
      type: 'datetime'
    },
    id_forma_pago: {
      type: 'integer'
    },
    nota_pedido: {
      type: 'text'
    },
    id_domiciliario: {
      type: 'integer'
    },
    id_operario: {
      type: 'integer'
    },
    nota_forma_pago: {
      type: 'text'
    },
    id_restaurante: {
      type: 'integer'
    },
    items:{
      type: 'text'
    },
    is_pickup:{
      type: 'boolean'
    }
  }
};
