# Script: tong_hop.ps1
# Tac gia: Trần Đức Long
# Ngay tao: 2026-11-11

Write-Host "Dang tao bao cao..."

"=== BAO CAO SU CO WEBSITE ===" | Set-Content .\logs\tong_hop.txt

Select-String 'status=404' .\logs\access.log | % Line >> .\logs\tong_hop.txt

(Select-String 'status=500' .\logs\access.log | Measure-Object).Count >> .\logs\tong_hop.txt

Write-Host "Hoan thanh!"