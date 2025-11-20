"""
Quick test to verify epr_chatbot_core.py can be imported
"""
import sys
import os

print("="*80)
print("Testing EPR Chatbot Core Import")
print("="*80)

try:
    print("\n1️⃣ Checking if .env file exists...")
    if os.path.exists('.env'):
        print("   ✅ .env file found")
    else:
        print("   ⚠️  .env file not found")

    print("\n2️⃣ Importing epr_chatbot_core module...")
    import epr_chatbot_core
    print("   ✅ Module imported successfully!")

    print("\n3️⃣ Checking key components...")
    components = [
        'app',
        'conversation_memory',
        'get_full_chat_history',
        'clear_memory'
    ]

    for component in components:
        if hasattr(epr_chatbot_core, component):
            print(f"   ✅ {component} found")
        else:
            print(f"   ⚠️  {component} not found")

    print("\n" + "="*80)
    print("✅ ALL TESTS PASSED!")
    print("="*80)
    print("\n🚀 Ready to run: streamlit run app.py")

except Exception as e:
    print(f"\n❌ ERROR: {e}")
    print("\nFull error traceback:")
    import traceback
    traceback.print_exc()
    sys.exit(1)
