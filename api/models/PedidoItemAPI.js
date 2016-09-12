/**
 * PedidoItemAPI.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    id_item: { type: 'integer' },
    id_pedido: { type: 'integer' },
    nota: { type: 'text' },
  }
};

