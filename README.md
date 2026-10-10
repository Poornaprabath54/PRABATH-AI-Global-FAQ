# PRABATH AI — Global FAQ Chatbot

An AI-powered, general-purpose FAQ chatbot that can answer questions across many subjects. Frontend: HTML/CSS/JavaScript. Backend: Node.js/Express. AI provider: Groq API.

## Features
- Ask in natural language across subjects; topic links are suggestions, not restrictions.
- Follow-up questions use recent conversation context.
- Responsive polished dark UI with light-theme toggle, suggested prompts, copy-answer control, and new chat.
- API key remains on the server in `.env`, never in browser JavaScript.

## Run in VS Code (Windows) — important

**Do not double-click `public/index.html` and do not use the Live Server extension.** This is a full-stack app; the browser needs the Node.js backend. Opening it as a static page is the most common cause of the browser error `Failed to fetch`.

### Easiest setup
1. Install Node.js 18 or newer from the official Node.js website if it is not already installed.
2. Extract the ZIP and open the `PRABATH_AI_Global_FAQ` folder in VS Code.
3. Double-click `start-prabath-ai.bat` in File Explorer. It installs the required packages the first time and starts the server. If `.env` is new, it opens the file in Notepad so you can add your key.
4. In `.env`, set `GROQ_API_KEY=your_real_key_here`, save it, close Notepad, then press Enter in the launcher window if it is waiting.
5. Open **http://localhost:3000**. Keep the command window open while using the chatbot.

### Manual setup (alternative)
1. Open a terminal in the `PRABATH_AI_Global_FAQ` project folder.
2. Run `npm install`.
3. Copy `.env.example` to `.env`, and add your key to `GROQ_API_KEY=your_real_key_here`.
4. Run `npm start` and keep the terminal open.
5. Visit **http://localhost:3000**.

The app now shows a specific setup message when it detects a `file://` or Live Server page instead of the Node.js server.

## Configuration
`GROQ_MODEL` defaults to `openai/gpt-oss-120b`. Older `llama-3.3-70b-versatile` and `llama-3.1-8b-instant` values left in an existing `.env` are automatically replaced with this default because Groq retired them for standard developer-tier usage in August 2026. You can change the model to another currently supported chat model in your Groq dashboard. API availability, limits, and any costs depend on the provider/account.

## Notes and limitations
This is a general-purpose model-backed FAQ assistant, not a literal database of every fact and not a live web search engine. It may make mistakes or lack up-to-date information, so verify important claims with reliable sources. Chat history is held in the current browser session and is not saved to a database. If an API key is exposed, revoke it and create a replacement.
