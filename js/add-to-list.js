document.querySelectorAll('.add-to-list').forEach(button => {
    button.addEventListener('click', function(event) {
        event.preventDefault();
        let card = this.closest('.card');
        let productName = card.getAttribute('data-name');
        let productPrice = parseInt(card.getAttribute('data-price'));
        let productId = card.querySelector('input[name="product_id"]').value;
        let productList = document.getElementById('product-list');
        
        let listItem = document.createElement('li');
        listItem.textContent = `${productName} - Rp ${productPrice.toLocaleString()}`;
        productList.appendChild(listItem);

        // Update total price
        let totalPriceElement = document.getElementById('total-price');
        let currentTotal = parseInt(totalPriceElement.textContent.replace('Rp ', '').replace(/,/g, ''));
        let newTotal = currentTotal + productPrice;
        totalPriceElement.textContent = `Rp ${newTotal.toLocaleString()}`;

        // Add product to hidden input
        let productsInput = document.getElementById('products-input');
        let products = JSON.parse(productsInput.value || '[]');
        products.push({ id: productId, name: productName, price: productPrice });
        productsInput.value = JSON.stringify(products);

        // Update total price hidden input
        let totalPriceInput = document.getElementById('total-price-input');
        totalPriceInput.value = newTotal;
    });
});