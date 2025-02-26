document.querySelectorAll('.add-to-list').forEach(button => {
    button.addEventListener('click', function() {
        let card = this.closest('.card');
        let productId = card.getAttribute('data-id');
        let productName = card.getAttribute('data-name');
        let productPrice = card.getAttribute('data-price');
        let productStock = parseInt(card.getAttribute('data-stock'));

        document.getElementById('modalAddProductId').value = productId;
        document.getElementById('modalAddProductName').value = productName;
        document.getElementById('modalAddProductPrice').value = productPrice;

        // Set max quantity to current stock
        let quantityInput = document.getElementById('modalProductQuantity');
        quantityInput.max = productStock;
        quantityInput.value = "1"; // Reset to 1

        document.getElementById('addToListModal').classList.remove('hidden');
    });
});

document.getElementById('closeAddToListModal').addEventListener('click', function() {
    document.getElementById('addToListModal').classList.add('hidden');
});

document.getElementById('addToListForm').addEventListener('submit', function(event) {
    event.preventDefault();

    let productId = document.getElementById('modalAddProductId').value;
    let productName = document.getElementById('modalAddProductName').value;
    let productPrice = parseInt(document.getElementById('modalAddProductPrice').value);
    let quantity = parseInt(document.getElementById('modalProductQuantity').value);
    let card = document.querySelector(`[data-id="${productId}"]`);
    let currentStock = parseInt(card.getAttribute('data-stock'));

    if (quantity > currentStock) {
        alert('Not enough stock available!');
        return;
    }

    let productList = document.getElementById('product-list');
    let listItem = document.createElement('li');
    listItem.className = 'py-2 border-b';
    listItem.textContent = `${productName} - Rp ${(productPrice * quantity).toLocaleString()} (x${quantity})`;
    productList.appendChild(listItem);

    // Update total price
    let totalPriceElement = document.getElementById('total-price');
    let currentTotal = parseInt(totalPriceElement.textContent.replace('Rp ', '').replace(/,/g, ''));
    let newTotal = currentTotal + (productPrice * quantity);
    totalPriceElement.textContent = `Rp ${newTotal.toLocaleString()}`;

    // Add product to hidden input
    let productsInput = document.getElementById('products-input');
    let products = JSON.parse(productsInput.value || '[]');
    products.push({ id: productId, name: productName, price: productPrice, quantity: quantity });
    productsInput.value = JSON.stringify(products);

    // Update total price hidden input
    let totalPriceInput = document.getElementById('total-price-input');
    totalPriceInput.value = newTotal;

    // Reset form and close modal
    event.target.reset();
    document.getElementById('addToListModal').classList.add('hidden');
});