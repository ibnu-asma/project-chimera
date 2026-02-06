# Project Chimera: Autonomous Influencer Infrastructure

[![CI/CD Pipeline](https://github.com/ibnu-asma/project-chimera/actions/workflows/main.yml/badge.svg)](https://github.com/ibnu-asma/project-chimera/actions)
[![Architecture: FastRender Swarm](https://img.shields.io/badge/Architecture-FastRender_Swarm-blue)](https://github.com/ibnu-asma/project-chimera/blob/main/research/architecture_strategy.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-green)](LICENSE)

## 1. Executive Overview
Project Chimera is an agentic infrastructure "factory" designed to architect and govern **Autonomous AI Influencers**. These are sovereign digital entities capable of researching market trends, synthesizing multimodal content, and participating in the on-chain economy without human intervention.

This repository acts as the **Lead Architect's Blueprint**. It transitions from traditional "vibe coding" to **Spec-Driven Development (SDD)**, ensuring that all agentic behavior is governed by ratified specifications, standardized interfaces (MCP), and a robust TDD safety net.

## 2. Core Architectural Pillars

### A. FastRender Swarm Pattern
The system utilizes a hierarchical role-based swarm to ensure high-fidelity output and error recovery:
*   **The Planner:** Decomposes abstract business goals into executable Task DAGs.
*   **The Worker:** Stateless, ephemeral agents executing atomic skills (Trend Analysis, Content Gen).
*   **The Judge:** A quality assurance layer that validates output against the persona's `SOUL.md`.

### B. Model Context Protocol (MCP) Integration
All external connectivity (Social Media APIs, Vector Databases, On-chain tools) is decoupled via **MCP**. This ensures:
*   **Universal Standardization:** A "USB-C" interface for AI tools.
*   **Security:** Decoupling core reasoning from sensitive implementation details.

### C. Agentic Commerce
Integrated with **Coinbase AgentKit**, Project Chimera endows agents with economic agency. Each influencer manages a non-custodial wallet on the Base network, enabling autonomous P&L management and micro-transactions.

---

## 3. Project Structure

| Directory | Content |
| :--- | :--- |
| [`/specs`](./specs) | **Source of Truth:** Meta, Functional, Technical, and SOUL (Persona) specifications. |
| [`/research`](./research) | Architecture strategy, market analysis, and tooling rationale. |
| [`/skills`](./skills) | Runtime capability contracts for Worker agents. |
| [`/tests`](./tests) | TDD suite defining the "Empty Slots" for agent implementation. |
| [`.cursor/rules`](./.cursor/rules) | **The Prime Directive:** AI-enforced governance and developer constraints. |

---

## 4. Getting Started

### Prerequisites
*   [uv](https://github.com/astral-sh/uv) (Python package manager)
*   [Docker Desktop](https://www.docker.com/products/docker-desktop/)
*   [Tenx MCP Sense](https://tenx.sh/) (For traceability/telemetry)

### Local Setup & Development
Standardized commands are managed via the `Makefile`:

```bash
# 1. Initialize environment and install dependencies
make setup

# 2. Run the TDD safety net (Failing tests define the roadmap)
make test

# 3. Build the containerized infrastructure
make docker-build

# 4. Run tests within the Docker environment
make docker-test
```

---

## 5. Governance & Traceability

### The Prime Directive
This repository is protected by a **Prime Directive** enforced via `.cursorrules`. The IDE Agent is prohibited from:
1.  Generating implementation code without referencing ratified specs.
2.  Using direct API libraries (e.g., Tweepy, requests) instead of MCP abstraction.
3.  Violating the persona constraints defined in `SOUL.md`.

### Traceability
All development activity is recorded via the **Tenx MCP Sense** flight recorder, providing full transparency into the agentic intent, context coverage, and architectural decision-making process.

---

## 6. Author & Role
**FDE Trainee:** Abdulhamid Hayredin 
**Project Role:** Lead Architect & Governor  


---

