document.querySelectorAll('.add-to-list').forEach(button => {
    button.addEventListener('click', function() {
        let card = this.closest('.card');
        let productId = card.getAttribute('data-id');
        let productName = card.getAttribute('data-name');
        let productPrice = card.getAttribute('data-price');

        document.getElementById('modalAddProductId').value = productId;
        document.getElementById('modalAddProductName').value = productName;
        document.getElementById('modalAddProductPrice').value = productPrice;

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

    let productList = document.getElementById('product-list');
    let listItem = document.createElement('li');
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

    document.getElementById('addToListModal').classList.add('hidden');
});