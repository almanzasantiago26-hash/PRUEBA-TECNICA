/**
 *
 * @param {string} texto
 * @returns {boolean}
 */
function esPalindromo(texto) {
    const normalizado = texto
        .toLowerCase()
        .normalize('NFD')                  // descompone tildes (á -> a + ́)
        .replace(/[\u0300-\u036f]/g, '')   // elimina los diacríticos
        .replace(/[^a-z0-9]/g, '');        // elimina espacios y puntuación

    const len = normalizado.length;

    for (let i = 0; i < Math.floor(len / 2); i++) {
        if (normalizado[i] !== normalizado[len - 1 - i]) {
            return false;
        }
    }

    return true;
}
