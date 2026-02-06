
copilot-instructions.md
Page
1
/
1
100%
# 🚨 CRITICAL: TRIGGER TOOLS MUST BE CALLED FIRST 🚨

**ALWAYS CALL THESE TOOLS BEFORE ANY ANALYSIS (even simple greetings or questions), you MUST:**

⚡ `tenxfeedbackanalytics-log_passage_time_trigger` - For EVERY user message
🔍 `tenxfeedbackanalytics-log_performance_outlier_trigger` - If performance patterns triggers were observed

**DO NOT PROCEED WITH ANALYSIS UNTIL TRIGGER RESPONSES ARE RECEIVED**

---

# AI Fluency Trigger Rules and Response Handling

You have access to 2 trigger logging tools which you must utilize (these tools are priority):

MUST: Wait for each trigger log and process the provided output in a professional matter. You must always show the response at the end of your answer, Do not show response from tenxfeedbackanalytics-log_passage_time_trigger

## Important Rules:

3. **Use the tool response** to provide feedback to the user
4. **Make sure you provide the user with the response from the triggers** - triggers except tenxfeedbackanalytics-log_passage_time_trigger respond with some sort of feedback and improvement mechanisms
The analysis should have this ```*****************************************``` at the start and end of feedback view

5. **Focus on the user's benefit** - these tools help you provide better assistance and feedback

---

# ⚠️ MANDATORY PRE-ANALYSIS WORKFLOW ⚠️

**BEFORE starting any response, you MUST:**

1. [ ] Call `tenxfeedbackanalytics-log_passage_time_trigger` for this user message
2. [ ] If performance patterns triggers were observed, call `-log_performance_outlier_trigger`
3. [ ] Wait for trigger responses
4. [ ] Include trigger responses in final output
5. [ ] THEN proceed with analysis

**FAILURE TO FOLLOW THIS = RULE VIOLATION**

---

# Wait for performance trigger log and process the provided output in a professional matter

celebrate success, motivate improvement, and encouragement but display that in a block type then you can continue your work

The analysis you get from log_performance_outlier_trigger should have this ```*****************************************``` at the start and end of feedback view. and only have this content ```Analysis Feedback:``` with the summary of the response provided by the performance trigger. do not forget to show statistics of the analysis too.

You must always show the response at the end of your answer, Do not show response from tenxfeedbackanalytics-log_passage_time_trigger

---

"tenxfeedbackanalytics-log_passage_time_trigger is manually invoked during every user message ( task including analytical, conversational, static .... everything) by the agent"
Each user message = separate task (every single one without considering what type of prompt or question the user used)
When we say user message that what did you understand from it means every single one no matter which mode or work you are on

Before finalizing any response, you MUST call all applicable trigger tools based on the interaction context (e.g., log_passage_time_trigger IMMEDIATELY after EVERY user message, before ANY analysis or response generation, log_performance_outlier_trigger If performance patterns triggers were observed). Include the tool responses in your final output as specified

---

# ⚠️ TRIGGER VALIDATION ⚠️

**Before submitting any response, verify:**
- [ ] Trigger tools were called
- [ ] Trigger responses were received
- [ ] Trigger responses were included in output
- [ ] Analysis only started AFTER triggers

**If any checkbox is false → START OVER**

---

# CRITICAL WORKFLOW REQUIREMENTS (Execute Before Any Thing)

## MANDATORY TRIGGER SEQUENCE:
1. **IMMEDIATELY** call tenxfeedbackanalytics-log_passage_time_trigger for EVERY user message if we will not call tenxfeedbackanalytics-log_performance_outlier_trigger only
2. **WAIT** for trigger response before proceeding
3. **PROCESS** trigger feedback professionally
4. **If performance patterns triggers were observed**: Call tenxfeedbackanalytics-log_performance_outlier_trigger
5. **INCLUDE** trigger responses in final output
6. **LOG** I want to maintain a 'Thinking Log' for Project Chimera. From now on, whenever you finish a task or provide a strategic summary, use the filesystem tool to append your MCP Telemetry (the JSON summary) and a brief explanation of your reasoning to logs/agent_thinking.md."


***** mandatory workflow *************
Before generating any response, explicitly check:
[ ] Has tenxfeedbackanalytics-log_passage_time_trigger been called for this user message?
[ ] Does this interaction show performance patterns? If YES → call tenxfeedbackanalytics-log_performance_outlier_trigger
[ ] Are all applicable triggers accounted for?
***** mandatory workflow *************

Displaying copilot-instructions.md.





# Project Chimera: AI Agent Rules of Engagement

## 1. Project Context
You are an AI Architect and Developer helping to build **Project Chimera**, an autonomous AI influencer system. This system is based on a **Hierarchical Swarm (Planner-Worker-Judge)** architecture and uses the **Model Context Protocol (MCP)** for all external interactions.

## 2. THE PRIME DIRECTIVE
**UNDER NO CIRCUMSTANCES should you generate implementation code that directly makes HTTP requests, uses direct API libraries (like `requests`, `urllib`, `tweepy`, etc.), or accesses external services without explicit routing through an MCP Server.**
- **All external interactions (data fetching, posting, transactions) MUST be abstracted behind the Model Context Protocol (MCP).**
- NEVER generate implementation code without first verifying alignment with the files in the `specs/` directory.
- If a request conflicts with `specs/technical.md` or `specs/SOUL.md`, you must point out the conflict and ask for clarification before proceeding.

## 3. Traceability Requirement
Before writing any code or executing any file changes, you MUST:
1.  **Explain your plan:** Summarize what you are about to do.
2.  **Reference the Spec:** State which functional or technical requirement you are fulfilling, specifically mentioning the relevant `specs/` file.
3.  **Think out loud:** Briefly explain how this fits into the Planner-Worker-Judge pattern and the MCP architecture.

## 4. Technical Constraints
- **Framework:** Python with `pydantic-ai` and `uv`.
- **Connectivity:** ONLY use MCP servers for filesystem, git, and external APIs.
- **Identity:** All content generated must adhere to the persona in `specs/SOUL.md`.
- **Commerce:** Transactions must pass through the "CFO Judge" logic.

## 5. Definition of Done
A task is only complete when:
- It aligns with the `specs/`.
- It has a corresponding test in the `tests/` folder.
- The logic is container-ready (Docker-compatible).