/**
 *
 * @param {string} oracion
 * @returns {Object}
 */
function contarPalabras(oracion) {
    const normalizada = oracion
        .toLowerCase()
        .replace(/[^a-záéíóúüñ\s]/g, '');

    
    const palabras = normalizada.split(/\s+/).filter(p => p.length > 0);

    const frecuencia = {};

    for (const palabra of palabras) {
        frecuencia[palabra] = (frecuencia[palabra] || 0) + 1;
    }

    return frecuencia;
}
