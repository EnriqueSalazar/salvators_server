/**
 * ItemMenuAPI.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    precio: {type: 'float'},
    codigo: {type: 'integer'},
    nombre: {type: 'string'},
    id_grupo_menu: {type: 'integer'},
    id_categoria_menu: {type: 'integer'},
    is_inactivo: {type: 'boolean'},
    is_descontable: {type: 'boolean'},
    is_etiqueta: {type: 'boolean'},
    ordenamiento: {type: 'integer'},
    max_partes: {type: 'integer'}
  }
};

