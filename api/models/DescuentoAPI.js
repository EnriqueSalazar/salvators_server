/**
 * DescuentoAPI.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    is_inactivo: { type: 'boolean' },
    valor_maximo: { type: 'float' },
    nombre: { type: 'string' },
    id_tipo_descuento: { type: 'integer' },
    cantidad: { type: 'string' },
    is_excluido_bar: { type: 'boolean' },
    fecha_inicio: { type: 'datetime' },
    fecha_fin: { type: 'datetime' },
    codigo: { type: 'integer' },
  }
};

