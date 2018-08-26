param
(
    [Parameter(Mandatory=$false)]
    [String] $testname = "runbook"
)

Write-Host -NoNewLine $testname 'test ok'
