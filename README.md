# Smart Contract - HackMeridian

## Descrição

Este projeto contém smart contracts desenvolvidos para o HackMeridian, um hackathon focado em soluções blockchain e tecnologias descentralizadas.

## Estrutura do Projeto

```
smart-contract-hackmeridian/
├── contracts/          # Smart contracts
├── scripts/           # Scripts de deploy e interação
├── test/              # Testes automatizados
├── hardhat.config.js  # Configuração do Hardhat
└── package.json       # Dependências do projeto
```

## Pré-requisitos

- Node.js (versão 16 ou superior)
- npm ou yarn
- MetaMask ou outra carteira Web3

## Instalação

1. Clone o repositório:
```bash
git clone <url-do-repositorio>
cd smartcontract--hackmeridian
```

2. Instale as dependências:
```bash
npm install
```

3. Configure as variáveis de ambiente:
```bash
cp .env.example .env
# Edite o arquivo .env com suas configurações
```

## Configuração

### Variáveis de Ambiente

Crie um arquivo `.env` na raiz do projeto com as seguintes variáveis:

```env
PRIVATE_KEY=sua_chave_privada_aqui
INFURA_PROJECT_ID=seu_project_id_infura
ETHERSCAN_API_KEY=sua_api_key_etherscan
```

## Uso

### Compilação

```bash
npm run compile
```

### Testes

```bash
npm run test
```

### Deploy

#### Rede Local (Hardhat)
```bash
npm run deploy:local
```

#### Testnet (Sepolia)
```bash
npm run deploy:sepolia
```

#### Mainnet
```bash
npm run deploy:mainnet
```

## Smart Contracts

### Contratos Principais

- **ContractName.sol**: Descrição do contrato principal
- **Token.sol**: Implementação de token ERC-20/ERC-721
- **Governance.sol**: Sistema de governança descentralizada

### Funcionalidades

- [ ] Funcionalidade 1
- [ ] Funcionalidade 2
- [ ] Funcionalidade 3

## Testes

O projeto inclui testes abrangentes para todos os contratos:

```bash
# Executar todos os testes
npm run test

# Executar testes com coverage
npm run test:coverage

# Executar testes específicos
npm run test -- --grep "ContractName"
```

## Deploy e Verificação

### Deploy Automatizado

O projeto utiliza scripts automatizados para deploy:

```bash
# Deploy em rede específica
npx hardhat run scripts/deploy.js --network sepolia
```

### Verificação de Contratos

```bash
# Verificar contrato no Etherscan
npx hardhat verify --network sepolia DEPLOYED_CONTRACT_ADDRESS "Constructor arg 1" "Constructor arg 2"
```

## Segurança

### Auditorias

- [ ] Auditoria interna completa
- [ ] Auditoria externa (se aplicável)
- [ ] Testes de penetração

### Boas Práticas

- Uso de OpenZeppelin para contratos padrão
- Implementação de pausabilidade em contratos críticos
- Validação rigorosa de inputs
- Proteção contra reentrancy attacks

## Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

## Contato

- **Desenvolvedor**: [Seu Nome]
- **Email**: [seu.email@exemplo.com]
- **LinkedIn**: [Seu LinkedIn]
- **Twitter**: [@seutwitter]

## Recursos Adicionais

- [Documentação do Hardhat](https://hardhat.org/docs)
- [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts)
- [Solidity Documentation](https://docs.soliditylang.org)
- [Ethereum Development Documentation](https://ethereum.org/developers)

## Roadmap

- [x] Configuração inicial do projeto
- [ ] Implementação dos contratos principais
- [ ] Testes unitários completos
- [ ] Deploy em testnet
- [ ] Auditoria de segurança
- [ ] Deploy em mainnet
- [ ] Interface web (dApp)

---

**Desenvolvido para o HackMeridian 2024** 🚀