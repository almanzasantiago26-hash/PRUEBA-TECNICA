/**
 *
 * @param {number[]} precios   - Lista de precios originales
 * @param {number}   descuento - Porcentaje de descuento (0-100)
 * @returns {number[]}
 */
function calcularDescuento(precios, descuento) {
    if (typeof descuento !== 'number' || descuento < 0 || descuento > 100) {
        throw new Error('El descuento debe ser un número entre 0 y 100.');
    }

    const factor = 1 - descuento / 100;

    return precios.map(precio => {
        const precioConDescuento = precio * factor;
        return Math.round(precioConDescuento * 100) / 100;
    });
}
