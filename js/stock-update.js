document.querySelectorAll('.update-stock').forEach(button => {
    button.addEventListener('click', function() {
        let card = this.closest('.card');
        let productId = card.getAttribute('data-id');
        let productStock = card.getAttribute('data-stock');
        
        document.getElementById('modalProductId').value = productId;
        document.getElementById('modalProductStock').value = productStock;
        
        document.getElementById('stockModal').classList.remove('hidden');
    });
});

document.getElementById('closeModal').addEventListener('click', function() {
    document.getElementById('stockModal').classList.add('hidden');
});