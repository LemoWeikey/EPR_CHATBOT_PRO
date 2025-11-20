# Quick Start Guide

Get your EPR Legal Chatbot running in 3 minutes!

## For Mac/Linux Users

### Option 1: One-Command Setup

```bash
python -m venv venv && source venv/bin/activate && pip install -r requirements.txt && ./run.sh
```

### Option 2: Step-by-Step

```bash
# 1. Create virtual environment
python -m venv venv

# 2. Activate it
source venv/bin/activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Run the app
./run.sh
```

## For Windows Users

### Step-by-Step

```cmd
# 1. Create virtual environment
python -m venv venv

# 2. Activate it
venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Run the app
run.bat
```

Or simply double-click `run.bat` after setup!

## After First Setup

Just run:
- **Mac/Linux**: `./run.sh`
- **Windows**: `run.bat`

## What to Expect

1. **First Run** (~1-2 minutes):
   - Creates FAQ database
   - Generates embeddings
   - Initializes the workflow

2. **Subsequent Runs** (~10 seconds):
   - Loads cached models
   - Ready to chat!

## Using the Chatbot

### Try These Questions

```
Điều 7 quy định gì?
Quy định về tái chế là gì?
Ai chịu trách nhiệm tái chế?
EPR là gì?
```

### Features to Explore

- **Quality Indicators**: Check the colored badges
- **Source Documents**: Expand to see legal references
- **Chat History**: Ask follow-up questions
- **Clear Chat**: Use sidebar button to start fresh

## Troubleshooting

### "Command not found"

Make sure Python 3.8+ is installed:
```bash
python --version
```

### "Module not found"

Reinstall dependencies:
```bash
pip install -r requirements.txt --force-reinstall
```

### Slow Performance

First run is always slow. Wait 1-2 minutes for initialization.

## Need Help?

Check the full [README.md](README.md) for detailed documentation.

---

Enjoy your intelligent legal assistant! ⚖️
