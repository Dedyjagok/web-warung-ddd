document.getElementById('categorySelect').addEventListener('change', filterProducts);

function filterProducts() {
    const category = document.getElementById('categorySelect').value.toLowerCase();
    const searchInput = document.getElementById('searchInput').value.toLowerCase();
    const cards = document.querySelectorAll('.card');
    cards.forEach(card => {
        const name = card.getAttribute('data-name').toLowerCase();
        const cardCategory = card.getAttribute('data-category').toLowerCase();
        if ((category === 'all' || cardCategory === category) && name.includes(searchInput)) {
            card.style.display = 'block';
        } else {
            card.style.display = 'none';
        }
    });
}