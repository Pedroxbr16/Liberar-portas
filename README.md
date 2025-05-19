
# README - Script para Liberar Portas TCP no Firewall do Windows

Este script PowerShell automatiza a criação de regras no firewall do Windows para liberar portas TCP específicas na entrada (inbound), facilitando o acesso de aplicações que precisam dessas portas abertas.

---

## Conteúdo

- `liberar-portas.ps1` — Script PowerShell para liberar portas TCP.

---

## Como usar

### Pré-requisitos

- Executar o PowerShell **como Administrador** para permitir alterações no firewall.
- Permissão para criar regras de firewall.

### Passos

1. Salve o arquivo `liberar-portas.ps1` no seu computador.

2. Abra o **PowerShell como Administrador**:

   - Clique no menu Iniciar.
   - Digite `PowerShell`.
   - Clique com o botão direito em `Windows PowerShell`.
   - Escolha **Executar como administrador**.

3. Navegue até o diretório onde o script está salvo, por exemplo:

   ```powershell
   cd C:\caminho\para\o\script
   ```

4. Execute o script:

   ```powershell
   .\liberar-portas.ps1
   ```

5. O script vai verificar se as regras para as portas especificadas já existem. Caso não existam, elas serão criadas.

---

## Personalização

No script, você pode editar a lista de portas TCP para liberar alterando a variável `$portas`. Exemplo:

```powershell
$portas = @(3000, 5000, 3306, 8080)
```

Adicione ou remova portas conforme necessário.

---

## Importante

- Liberar portas no firewall pode expor seu sistema a riscos de segurança. Use com cuidado e preferencialmente em ambientes controlados ou de desenvolvimento.
- Em ambientes de produção, limite as portas abertas e as origens autorizadas.

---

Se precisar de ajuda para criar scripts adicionais ou automatizar outras tarefas, é só avisar!

---
