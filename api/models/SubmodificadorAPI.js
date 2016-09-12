/**
 * SubmodificadorAPI.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    nombre: { type: 'string' },
    is_inactivo: { type: 'boolean' },
    codigo: { type: 'integer' },
    maximo: { type: 'integer' },
    minimo: { type: 'integer' },
    orden: { type: 'integer' },
    precio: { type: 'float' },
    is_adicional: { type: 'boolean' },
  }
};

