# 🚀 Streamlit Cloud Deployment Guide

Complete guide to deploy your EPR Legal Chatbot to Streamlit Cloud for production use.

---

## 📋 Prerequisites

- ✅ GitHub account
- ✅ Streamlit Cloud account (free at https://streamlit.io/cloud)
- ✅ Your API keys:
  - OpenAI API key
  - Tavily API key
  - LangChain API key (optional)

---

## 🎯 Step 1: Prepare Your Repository

### 1.1 Initialize Git Repository

```bash
cd /Users/jamesgatsby/EPR_PRO_CHATBOT_FIX

# Initialize git if not already done
git init

# Add all files EXCEPT .env (it's already in .gitignore)
git add .

# Create first commit
git commit -m "Initial commit: EPR Legal Chatbot with eco-friendly UI"
```

### 1.2 Create GitHub Repository

1. Go to https://github.com/new
2. Create a new repository:
   - **Name**: `epr-legal-chatbot` (or your preferred name)
   - **Description**: "🌱 EPR Legal Chatbot - Vietnamese Environmental Law Assistant"
   - **Visibility**: Public or Private (your choice)
   - **DO NOT** initialize with README (we already have one)

3. Connect and push:

```bash
# Add GitHub remote (replace with YOUR username)
git remote add origin https://github.com/YOUR_USERNAME/epr-legal-chatbot.git

# Push to GitHub
git branch -M main
git push -u origin main
```

---

## 🔐 Step 2: Set Up Streamlit Cloud

### 2.1 Sign Up / Sign In

1. Go to https://streamlit.io/cloud
2. Click "Sign up" or "Sign in"
3. **Use the SAME GitHub account** you used to push your code

### 2.2 Deploy New App

1. Click "New app" button
2. Fill in the form:
   - **Repository**: Select `YOUR_USERNAME/epr-legal-chatbot`
   - **Branch**: `main`
   - **Main file path**: `app.py`
   - **App URL**: Choose a custom URL (e.g., `epr-chatbot-yourname`)

3. Click "Advanced settings" BEFORE deploying

---

## 🔑 Step 3: Configure Secrets

This is the MOST IMPORTANT step! Your API keys need to be added as secrets.

### 3.1 In Advanced Settings

Click "Secrets" and paste this TOML format with YOUR actual API keys:

```toml
# Streamlit Cloud Secrets
# Replace the values with YOUR actual API keys!

LANGCHAIN_TRACING_V2 = "true"
LANGCHAIN_ENDPOINT = "https://api.smith.langchain.com"
LANGCHAIN_API_KEY = "lsv2_pt_YOUR_ACTUAL_LANGCHAIN_KEY_HERE"

TAVILY_API_KEY = "tvly-dev-YOUR_ACTUAL_TAVILY_KEY_HERE"

OPENAI_API_KEY = "sk-proj-YOUR_ACTUAL_OPENAI_KEY_HERE"
```

**⚠️ IMPORTANT:**
- Replace ALL placeholder values with your REAL API keys
- Keep the quotes around the values
- Don't add extra spaces
- Make sure it's valid TOML format

### 3.2 Get Your API Keys

If you don't have them:

**OpenAI API Key:**
1. Go to https://platform.openai.com/api-keys
2. Create new secret key
3. Copy it immediately (you can't see it again!)

**Tavily API Key:**
1. Go to https://tavily.com
2. Sign up / Sign in
3. Get your API key from dashboard

**LangChain API Key** (optional):
1. Go to https://smith.langchain.com
2. Sign up / Sign in
3. Get API key from settings

---

## 🚀 Step 4: Deploy!

After setting secrets:

1. Click **"Deploy!"** button
2. Wait 2-5 minutes for deployment
3. Watch the logs for any errors

### Expected Deployment Process:

```
Installing requirements...
✓ streamlit
✓ langchain
✓ openai
... (more packages)

Starting app...
✓ All imports successful!
✓ Initializing FAQ system...
✓ Loading legal documents...
✓ Compiling workflow...
✓ App ready!

App URL: https://YOUR-APP-NAME.streamlit.app
```

---

## ✅ Step 5: Verify Deployment

### 5.1 Check Your App

Visit: `https://YOUR-APP-NAME.streamlit.app`

You should see:
- ✅ Green eco-friendly background
- ✅ EPR chatbot header
- ✅ Welcome message
- ✅ Chat input box

### 5.2 Test Functionality

Try these questions:
```
Điều 7 quy định gì?
Quy định về tái chế là gì?
EPR là gì?
```

Expected results:
- ✅ Responses appear
- ✅ Quality badges show
- ✅ Source documents expandable
- ✅ No error messages

---

## 🐛 Troubleshooting

### Problem: "Module not found" errors

**Solution:**
- Check `requirements.txt` is in root directory
- Make sure all packages have version numbers
- Redeploy from Streamlit Cloud dashboard

### Problem: "OpenAI API key not found"

**Solution:**
1. Go to your app settings in Streamlit Cloud
2. Click "Secrets"
3. Verify `OPENAI_API_KEY` is set correctly
4. Check for typos in the key
5. Reboot the app

### Problem: "Vector store errors"

**Solution:**
- This is normal on first run
- The app uses in-memory vector store on cloud
- Wait for initialization to complete (~30 seconds)

### Problem: App is slow to load

**Solution:**
- First load takes 30-60 seconds (normal)
- Subsequent loads are cached and faster
- Consider upgrading to Streamlit Cloud Pro for better performance

### Problem: Dark theme appears

**Solution:**
- Clear browser cache
- Hard refresh (Ctrl+F5 or Cmd+Shift+R)
- Check `.streamlit/config.toml` is in repository

---

## 🔄 Step 6: Update Your App

When you make changes:

```bash
# Make your changes to app.py or other files

# Commit changes
git add .
git commit -m "Description of changes"

# Push to GitHub
git push

# Streamlit Cloud will auto-deploy (2-3 minutes)
```

---

## 🎨 Step 7: Customize Your Deployment

### 7.1 Custom Domain (Pro feature)

With Streamlit Cloud Pro, you can use your own domain:
1. Go to app settings
2. Add custom domain
3. Update DNS records

### 7.2 App Settings

You can configure:
- **App URL**: Change the public URL
- **Python version**: Default is 3.11 (recommended)
- **Resources**: RAM and CPU (Pro feature)
- **Secrets**: Update API keys anytime

### 7.3 Share Your App

Your app URL:
```
https://YOUR-APP-NAME.streamlit.app
```

Share it with:
- ✅ Colleagues
- ✅ Clients
- ✅ Public users (if appropriate)

---

## 📊 Monitoring & Analytics

### Built-in Metrics

Streamlit Cloud provides:
- **Visitors**: Number of unique users
- **App restarts**: How often app restarts
- **Resource usage**: RAM and CPU usage
- **Logs**: Real-time application logs

Access from: App Settings → Analytics

---

## 🔒 Security Best Practices

### ✅ DO:
- Use Streamlit secrets for API keys
- Keep `.env` in `.gitignore`
- Use private repository for sensitive data
- Rotate API keys regularly
- Monitor usage and costs

### ❌ DON'T:
- Commit `.env` file to GitHub
- Share API keys publicly
- Use same keys for dev and production
- Ignore error logs

---

## 💰 Cost Considerations

### Free Tier:
- ✅ 1 private app
- ✅ Unlimited public apps
- ✅ Community support
- ⚠️ Limited resources (1 GB RAM)
- ⚠️ App sleeps after inactivity

### Pro Tier ($20/month per developer):
- ✅ Unlimited private apps
- ✅ More resources (up to 32 GB RAM)
- ✅ Priority support
- ✅ Custom domains
- ✅ No sleep mode

### API Costs:
- **OpenAI**: ~$0.002 per message (GPT-4o-mini)
- **Tavily**: Free tier available
- **LangChain**: Free for basic usage

**Estimate**: ~$10-50/month depending on usage

---

## 🎯 Production Checklist

Before going live:

- [ ] All secrets configured correctly
- [ ] Test all features (FAQ, legal docs, web search)
- [ ] Check error handling works
- [ ] Verify eco-friendly theme loads
- [ ] Test on mobile devices
- [ ] Monitor initial user feedback
- [ ] Set up usage alerts (OpenAI dashboard)
- [ ] Have backup API keys ready
- [ ] Document any issues found
- [ ] Share URL with beta testers first

---

## 📚 Additional Resources

- **Streamlit Docs**: https://docs.streamlit.io
- **Deployment Guide**: https://docs.streamlit.io/streamlit-community-cloud
- **Secrets Management**: https://docs.streamlit.io/streamlit-community-cloud/deploy-your-app/secrets-management
- **Community Forum**: https://discuss.streamlit.io

---

## 🎉 Success!

Your EPR Legal Chatbot is now live and accessible worldwide! 🌍

**Your app is at:**
```
https://YOUR-APP-NAME.streamlit.app
```

Share it with users and promote environmental awareness! 🌱💚

---

## 📝 Quick Command Reference

```bash
# Initialize and deploy
git init
git add .
git commit -m "Initial deployment"
git remote add origin https://github.com/YOUR_USERNAME/epr-legal-chatbot.git
git push -u origin main

# Update app
git add .
git commit -m "Update description"
git push

# Check deployment status
# Visit: https://share.streamlit.io
```

---

**Need help?** Check the troubleshooting section or Streamlit Community Forum!
