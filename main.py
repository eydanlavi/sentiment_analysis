from transformers import pipeline

general_classifier = pipeline("text-classification", model="j-hartmann/emotion-english-distilroberta-base", top_k=None)
suicide_classifier = pipeline("text-classification", model="vibhorag101/roberta-base-suicide-prediction-phr", top_k=None)

text = ""
res1 = general_classifier(text)
res2 = suicide_classifier(text)

print(res1[0]+res2[0])
