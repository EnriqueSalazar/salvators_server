/**
 * ModificadorAPI.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    nombre: { type: 'string' },
    is_inactivo: { type: 'boolean' },
    maximo: { type: 'integer' },
    orden: { type: 'integer' },
    minimo: { type: 'integer' },
  }
};

