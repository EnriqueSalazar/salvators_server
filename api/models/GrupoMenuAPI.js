/**
 * GrupoMenuAPI.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    nombre: { type: 'string' },
    orden: { type: 'integer' },
    is_pizza: { type: 'boolean' },
    is_inactivo: { type: 'boolean' },
  }
};

