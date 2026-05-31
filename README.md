# Awesome x402 — HTTP 402 Payment Protocol

> A curated list of x402 implementations, services, tools, and resources. Maintained by [Rug Munch Intelligence](https://rugmunch.io) — The Bloomberg Terminal of Shitcoins.

## What is x402?

x402 is an open protocol that uses HTTP status code 402 (Payment Required) to enable machine-to-machine micropayments for API access. AI agents, scripts, and applications can discover, pay for, and consume API services programmatically without API keys, subscriptions, or credit cards.

**Spec**: https://x402.org | **GitHub**: https://github.com/coinbase/x402

## x402 Services

| Service | Tools | Chains | URL |
|---------|-------|--------|-----|
| **Rug Munch Intelligence (RMI)** | 221 | 13 (Base, ETH, Solana, BSC, Arbitrum, Polygon, Avalanche, Fantom, Gnosis, Optimism, TRON, BTC, SEPA) | https://rugmunch.io/.well-known/x402 |

*Submit a PR to add your x402 service!*

## Facilitators

| Name | Type | Settlement | Chains |
|------|------|-------------|--------|
| Coinbase CDP | Hosted | Instant | Base, Polygon, Arbitrum, Solana |
| Primev (mev-commit) | Hosted | Pre-confirmed | Ethereum |
| EIP-7702 | Self-hosted | Instant | BSC, Polygon, Avalanche, Fantom, Gnosis, Arbitrum, Optimism, Base |
| PayAI | Hosted | Deferred | Base, Solana |
| TRON Self-Verify | Self-hosted | Instant | TRON |
| Bitcoin Self-Verify | Self-hosted | 1-conf | Bitcoin |
| AsterPay | Hosted | SEPA off-ramp | EUR fiats |

## SDKs & Libraries

| Language | Repo | Status |
|----------|------|--------|
| TypeScript | [coinbase/x402](https://github.com/coinbase/x402) | Official |
| Python | [coinbase/x402-python](https://github.com/coinbase/x402-python) | Official |
| Rust | [coinbase/x402-rs](https://github.com/coinbase/x402-rs) | Official |

## Protocol Resources

- [x402 Spec](https://x402.org) — Official protocol specification
- [Coinbase Blog: x402](https://www.coinbase.com/blog) — Announcements and tutorials
- [HTTP 402 RFC Draft](https://datatracker.ietf.org/doc/draft-ietf-httpbis-402-payment/) — IETF draft

## How to List Your Service

1. Implement the x402 v2 spec with `/.well-known/x402` discovery
2. Fork this repo
3. Add your service to the table above
4. Open a PR

## Contributing

PRs welcome! Please ensure:
- Your service has a live `/.well-known/x402` endpoint
- The discovery document includes tool names, prices, and supported chains
- Test your endpoint with `curl -I https://yourservice.com/.well-known/x402`

## License

CC0-1.0