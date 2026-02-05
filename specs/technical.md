# Technical Specification: Contracts & Schemas

## 1. API Contracts (JSON)
All tasks passed between the Planner and Worker must follow this schema:

```json
{
  "task_id": "uuid-v4",
  "task_type": "generate_content | execute_transaction",
  "priority": "high | medium | low",
  "context": {
    "goal": "string",
    "persona_constraints": ["string"],
    "required_resources":  [
    "mcp://twitter/mentions", 
    "mcp://news/ethiopia/trends", 
    "mcp://memory/long_term"
]
  },
  "status": "pending | in_progress | review | complete"
}