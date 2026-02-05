# Project Chimera: Agent Skills (Runtime)

This directory houses the core capabilities (Skills) of the Autonomous Influencer. 

## Skill Architecture
As per `specs/technical.md`, every skill in this directory must implement a standard `handler` interface:
- **Function:** `handler(input_data: dict) -> dict`
- **Error Handling:** Must return a `status: "error"` key if execution fails.

---

## 1. Skill: `skill_trend_fetcher`
**Purpose:** Scans the web and social media for trending topics relevant to the persona.

### Input Contract (JSON)
```json
{
  "category": "fashion | crypto | tech",
  "min_relevance_score": 0.75
}

### Output Contract (JSON)
```json
{
  "trends": [
    {
      "topic": "string",
      "source": "string",
      "viral_velocity": "high | medium | low"
    }
  ],
  "timestamp": "ISO-8601"
}
```

## 2. Skill: `skill_content_generator`
**Purpose:** Purpose: Generates high-fidelity text and image prompts that align with the SOUL.md persona.

### Input Contract (JSON)
```json
{
  "target_trend": "string",
  "platform": "twitter | instagram",
  "mood": "witty | technical | hype"
}
```

### Output Contract (JSON)
```json
{
  "post_body": "string",
  "image_prompt": "string",
  "character_consistency_id": "string"
}
```


## 3. Skill: `skill_commerce_manager`
**Purpose:** Handles all financial transactions, including balance checks and transfers.

### Input Contract (JSON)
```json
{
  "action": "check_balance | transfer_funds",
  "amount_usdc": 0.0,
  "destination_address": "string (optional)"
}
```


### Output Contract (JSON)
```json
{
  "transaction_hash": "string | null",
  "current_balance": "float",
  "cfo_approval_required": "boolean"
}
```

## 4. Skill: `skill_self_healer`




