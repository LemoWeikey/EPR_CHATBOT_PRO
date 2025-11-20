# 🚀 Quick Start - Deploy in 10 Minutes!

## Step 1: Run Setup Script (2 min)

```bash
./deploy_setup.sh
```

This will:
- Initialize Git
- Create initial commit
- Show next steps

## Step 2: Create GitHub Repo (2 min)

1. Go to https://github.com/new
2. Name: `epr-legal-chatbot`
3. Click "Create repository"
4. Run these commands (replace YOUR_USERNAME):

```bash
git remote add origin https://github.com/YOUR_USERNAME/epr-legal-chatbot.git
git branch -M main
git push -u origin main
```

## Step 3: Deploy to Streamlit Cloud (5 min)

1. Go to https://streamlit.io/cloud
2. Sign in with GitHub
3. Click "New app"
4. Select:
   - Repository: `YOUR_USERNAME/epr-legal-chatbot`
   - Branch: `main`
   - Main file: `app.py`

5. Click "Advanced settings" → "Secrets"
6. Paste this (with YOUR actual keys):

```toml
LANGCHAIN_TRACING_V2 = "true"
LANGCHAIN_ENDPOINT = "https://api.smith.langchain.com"
LANGCHAIN_API_KEY = "your-langchain-key"
TAVILY_API_KEY = "your-tavily-key"
OPENAI_API_KEY = "your-openai-key"
```

7. Click "Deploy!"

## Step 4: Test Your App (1 min)

Visit: `https://YOUR-APP-NAME.streamlit.app`

Try: "Điều 7 quy định gì?"

## ✅ Done!

Your chatbot is live! 🌱🌍💚

---

**Need help?** See [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) for detailed instructions.

**Get API Keys:**
- OpenAI: https://platform.openai.com/api-keys
- Tavily: https://tavily.com
- LangChain: https://smith.langchain.com
