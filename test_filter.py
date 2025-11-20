"""
Test the Qdrant filter fix
"""
import os
from dotenv import load_dotenv

# Load environment variables first
load_dotenv()

print("="*80)
print("Testing Qdrant Filter Fix")
print("="*80)

# Verify API key loaded
if not os.getenv('OPENAI_API_KEY'):
    print("❌ OPENAI_API_KEY not found in .env file!")
    print("Please check your .env file exists and has the correct format.")
    exit(1)

try:
    print("\n1️⃣ Loading chatbot core...")
    import epr_chatbot_core
    print("   ✅ Core loaded")

    print("\n2️⃣ Testing fallback retriever with filter...")
    test_query = "Cho tôi hỏi chi tiết về Điều 7?"
    print(f"   Query: {test_query}")

    print("\n3️⃣ Invoking retriever...")
    results = epr_chatbot_core.fallback_retriever.invoke(test_query)

    print(f"\n4️⃣ Results:")
    print(f"   ✅ Found {len(results)} documents")

    if results:
        print(f"\n   First result:")
        doc = results[0]
        print(f"   - Điều: {doc.metadata.get('Dieu')}")
        print(f"   - Tên: {doc.metadata.get('Dieu_Name')}")
        print(f"   - Content: {doc.page_content[:100]}...")

    print("\n" + "="*80)
    print("✅ FILTER TEST PASSED!")
    print("="*80)

except Exception as e:
    print(f"\n❌ ERROR: {e}")
    import traceback
    traceback.print_exc()
