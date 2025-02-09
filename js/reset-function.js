document.getElementById('reset-button').addEventListener('click', function() {
    document.getElementById('product-list').innerHTML = '';
    document.getElementById('total-price').textContent = 'Rp 0';
    document.getElementById('products-input').value = '[]';
    document.getElementById('total-price-input').value = '0';
});