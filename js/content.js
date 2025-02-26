document.addEventListener('DOMContentLoaded', function() {
    const urlParams = new URLSearchParams(window.location.search);
    const status = urlParams.get('status');
    if (status === 'success') {
        alert('Checkout successful!');
    } else if (status === 'error') {
        alert('Checkout failed!');
    }
});