/**
 * QuejaAPI.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    id_pedido: { type: 'integer' },
    nota_cliente: { type: 'text' },
    nota_operador: { type: 'text' },
  }
};

