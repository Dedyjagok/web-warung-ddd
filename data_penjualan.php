<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}
include 'service/database.php';

// Fetch transaction history
$result = $db->query("SELECT p.id_penjualan, p.id_produk, pr.nama_produk, pr.harga, p.total_pembelian, p.tanggal FROM penjualan p JOIN produk pr ON p.id_produk = pr.id_produk ORDER BY p.tanggal DESC");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.14/dist/full.min.css" rel="stylesheet" type="text/css" />
    <title>Transaction History</title>
</head>
<body>
    <div class="flex justify-between items-center p-4 bg-gray-800 text-white">
        <h1 class="text-2xl font-bold">Transaction History</h1>
        <a href="warung.php" class="bg-blue-500 text-white p-2 rounded">Back to Warung</a>
    </div>
    <div class="p-4">
        <table class="min-w-full bg-white">
            <thead>
                <tr>
                    <th class="py-2 px-4 border-b">Transaction ID</th>
                    <th class="py-2 px-4 border-b">Product ID</th>
                    <th class="py-2 px-4 border-b">Product Name</th>
                    <th class="py-2 px-4 border-b">Product Price</th>
                    <th class="py-2 px-4 border-b">Quantity</th>
                    <th class="py-2 px-4 border-b">Total Price</th>
                    <th class="py-2 px-4 border-b">Date</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr>
                    <td class="py-2 px-4 border-b"><?php echo $row['id_penjualan']; ?></td>
                    <td class="py-2 px-4 border-b"><?php echo $row['id_produk']; ?></td>
                    <td class="py-2 px-4 border-b"><?php echo $row['nama_produk']; ?></td>
                    <td class="py-2 px-4 border-b">Rp <?php echo number_format($row['harga'], 0, ',', '.'); ?></td>
                    <td class="py-2 px-4 border-b"><?php echo $row['total_pembelian']; ?></td>
                    <td class="py-2 px-4 border-b">Rp <?php echo number_format($row['harga'] * $row['total_pembelian'], 0, ',', '.'); ?></td>
                    <td class="py-2 px-4 border-b"><?php echo $row['tanggal']; ?></td>
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
</body>
</html>