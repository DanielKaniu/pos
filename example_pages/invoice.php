<?php
require('fpdf/fpdf.php');
include_once'connect_db.php';

$pdf = new FPDF('P','mm','A4');

$pdf->AddPage();
$pdf->SetFillColor(123,256,234);
////////////////////////////////////////////////
$pdf->SetFont('Arial','B', 16);
$pdf->Cell(140,10,'Toko Hussein ',1,0,'C',true);
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','B', 12);
$pdf->Cell(50,10,'Laporan Penjualan ',1,1,'C',true);
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(140,5,'Alamat :',1,0);
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(50,5,'No. Laporan :',1,1);
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(140,5,'Operator : ',1,0);
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(50,5,'Tanggal :',1,1);
////////////////////////////////////////////////

$pdf->Ln(5);

////////////////////////////////////////////////
$pdf->SetFont('Arial','', 10);
$pdf->Cell(8,8,'No',1,0);
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 10);
$pdf->Cell(30,8,'Kode Produk',1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 10);
$pdf->Cell(40,8,'Nama Produk',1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 10);
$pdf->Cell(30,8,'Kuantitas Terjual',1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 10);
$pdf->Cell(20,8,'Sisa Stok',1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 10);
$pdf->Cell(62,8,'Total Pendapatan',1,1, 'C');
////////////////////////////////////////////////


$select = $pdo->prepare("SELECT sum(total) as total, count(invoice_id) as invoice FROM tbl_invoice
WHERE order_date BETWEEN :fromdate AND :todate");
$select->bindParam(':fromdate', $_POST['date_1']);
$select->bindParam(':todate', $_POST['date_2']);
$select->execute();

$row = $select->fetch(PDO::FETCH_OBJ);

$total = $row->total;

$invoice = $row->invoice;

////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(8,8,$item->id,1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(30,8,$item->product_code,1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(40,8,$item->product_name,1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(30,8,$item->qty,1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(20,8,'8',1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(62,8,'2000000',1,1, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////

////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(128,8,'Total',1,0, 'C');
////////////////////////////////////////////////
////////////////////////////////////////////////
$pdf->SetFont('Arial','', 8);
$pdf->Cell(62,8,'Rp'.'0',1,1, 'C');
////////////////////////////////////////////////


$pdf->Output();



?>