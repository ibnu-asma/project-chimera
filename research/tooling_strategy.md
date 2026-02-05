# Tooling Strategy: Developer & Agent Infrastructure

## 1. Developer Tools (MCP Servers)
To fulfill the "Lead Architect" role, we utilize the following Model Context Protocol (MCP) servers to assist in the development lifecycle:

- **git-mcp:** Used by the IDE Agent to perform atomic commits, ensuring we meet the "Minimum 2x/day" commit requirement and maintain clean history.
- **filesystem-mcp:** Provides the Agent with reliable, structured access to the project directory to prevent "vibe coding" file creation errors.
- **sequential-thinking:** Used to help the Agent reason through complex architectural decisions before writing code, improving the "Distance" metric in assessments.

## 2. Rationale
These tools ensure that the AI Agent (Cursor/Claude) acts as a **controlled extension** of the Lead Architect, adhering to the project's strict governance and traceability rules.