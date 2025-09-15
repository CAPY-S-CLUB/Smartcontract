#!/bin/bash

# Stellar Testnet Deployment Script for Bob NFT Contract

set -e

echo "🚀 Starting deployment to Stellar Testnet..."

# Check if soroban CLI is installed
if ! command -v soroban &> /dev/null; then
    echo "❌ Soroban CLI not found. Please install it first:"
    echo "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
    echo "cargo install --locked soroban-cli"
    exit 1
fi

# Check if stellar CLI is installed
if ! command -v stellar &> /dev/null; then
    echo "❌ Stellar CLI not found. Please install it first:"
    echo "cargo install --locked stellar-cli"
    exit 1
fi

# Set testnet configuration
echo "📡 Configuring for Stellar Testnet..."
soroban network add testnet \
    --rpc-url https://soroban-testnet.stellar.org:443 \
    --network-passphrase "Test SDF Network ; September 2015"

# Set default network to testnet
soroban network use testnet

# Generate a new keypair for deployment (if not exists)
if ! stellar keys ls | grep -q "deployer"; then
    echo "🔑 Generating new keypair for deployment..."
    stellar keys generate deployer --network testnet --fund
    echo "📝 New keypair 'deployer' created and funded!"
    echo "✅ Account is ready for deployment."
else
    echo "📋 Using existing 'deployer' keypair..."
fi

# Get account address
ACCOUNT_ADDRESS=$(stellar keys public-key deployer)
echo "📋 Using account: $ACCOUNT_ADDRESS"

# Account should be funded automatically when created with --fund flag
echo "💰 Account should be funded automatically..."

# Build the contract
echo "🔨 Building contract..."
soroban contract build

# Deploy the contract
echo "🚀 Deploying contract to testnet..."
CONTRACT_ID=$(soroban contract deploy \
    --wasm target/wasm32v1-none/release/bob_nft.wasm \
    --source-account deployer \
    --network testnet)

echo "✅ Contract deployed successfully!"
echo "📋 Contract ID: $CONTRACT_ID"

# Initialize the contract
echo "🔧 Initializing contract..."
soroban contract invoke \
    --id $CONTRACT_ID \
    --source-account deployer \
    --network testnet \
    -- \
    __constructor \
    --owner $ACCOUNT_ADDRESS

echo "🎉 Contract initialized successfully!"
echo ""
echo "📊 Deployment Summary:"
echo "   Contract ID: $CONTRACT_ID"
echo "   Owner: $ACCOUNT_ADDRESS"
echo "   Network: Stellar Testnet"
echo ""
echo "🔗 View on Stellar Explorer:"
echo "   https://testnet.steexp.com/contract/$CONTRACT_ID"
echo ""
echo "📝 Contract functions available:"
echo "   - mint(to: Address): Mint a new NFT (owner only)"
echo "   - burn(id: u256): Burn an NFT"
echo "   - transfer(from: Address, to: Address, id: u256): Transfer NFT"
echo "   - approve(from: Address, spender: Address, id: u256): Approve transfer"
echo "   - set_approval_for_all(owner: Address, operator: Address, approved: bool): Set approval for all"
echo ""
echo "💡 Example usage:"
echo "   # Mint a new NFT"
echo "   soroban contract invoke --id $CONTRACT_ID --source-account $ACCOUNT_ADDRESS --network testnet -- mint --to $ACCOUNT_ADDRESS"
