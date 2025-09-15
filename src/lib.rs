// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Stellar Soroban Contracts ^0.4.1
#![no_std]

use soroban_sdk::{Address, contract, contractimpl, Env, String};
use stellar_access::ownable::{self as ownable, Ownable};
use stellar_macros::{default_impl, only_owner};
use stellar_tokens::non_fungible::{Base, burnable::NonFungibleBurnable, NonFungibleToken};

#[contract]
pub struct Bob;

#[contractimpl]
impl Bob {
    pub fn __constructor(e: &Env, owner: Address) {
        let uri = String::from_str(e, "www.mytoken.com");
        let name = String::from_str(e, "Bob");
        let symbol = String::from_str(e, "Bob");
        Base::set_metadata(e, uri, name, symbol);
        ownable::set_owner(e, &owner);
    }

    #[only_owner]
    pub fn mint(e: &Env, to: Address) {
        Base::sequential_mint(e, &to);
    }
}

#[default_impl]
#[contractimpl]
impl NonFungibleToken for Bob {
    type ContractType = Base;

}

//
// Extensions
//

#[default_impl]
#[contractimpl]
impl NonFungibleBurnable for Bob {}

//
// Utils
//

#[default_impl]
#[contractimpl]
impl Ownable for Bob {}

