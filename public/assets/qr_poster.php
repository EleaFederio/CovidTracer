<?php
require ('pdf/fpdf.php');

class PDF extends FPDF
{
// Page header
    function Header()
    {
        // Logo

        // Arial bold 15
        $this->SetFont('Arial','',25);
        // Move to the right
        $this->Cell(80);
        // Title
        $this->Image('CovidTracerPosterTransparent.png', 0, 0, 216, 279);
//        $this->Cell(30,10,'Labanan natin ang',0,1,'C');
//        $this->SetFont('Arial','B',50);
//        $this->SetTextColor(255,0,0);
//        $this->Cell(197,18,'COVID19', 0, 0,'C');
        // Line break
        $this->Ln(20);
    }

// Page footer
    function Footer()
    {
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',20);
        // Page number
//        $this->Cell(0,10,'Scan QR-Code with your smartphone using www.contracovid.com',0,0,'C');
    }
}

$pdf = new PDF('P','mm','Letter');
$pdf->AddPage();

$pdf->SetFont('Arial','B',20);
$pdf->Image("http://127.0.0.1/pdf_test/qr_generator.php?code=".$_GET['id']."", 33.3,23.5,150,150, "png");
$pdf->Cell(197,170,'', 0, 1, 'C');
$pdf->MultiCell(197,18,$_GET['name'], 0, 'C');
$pdf->Output();

