# Lista de portas que você quer liberar
$portas = @(3000, 5000, 3306, 8080)

foreach ($porta in $portas) {
    # Verifica se a regra já existe para evitar duplicação
    $existe = Get-NetFirewallRule -DisplayName "Liberar porta TCP $porta" -ErrorAction SilentlyContinue
    if (-not $existe) {
        New-NetFirewallRule -DisplayName "Liberar porta TCP $porta" `
                            -Direction Inbound `
                            -Protocol TCP `
                            -LocalPort $porta `
                            -Action Allow `
                            -Profile Domain,Private,Public
        Write-Host "Regra criada para porta TCP $porta"
    } else {
        Write-Host "Regra para porta TCP $porta já existe"
    }
}
