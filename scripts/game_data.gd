extends Node

var manual_dict = {
	"Common Cold": "Sneezing, runny nose, sore throat, mild cough.",
	"Influenza (Flu)": "High fever, body aches, chills, extreme tiredness.",
	"Strep Throat": "Severe sore throat, difficulty swallowing, swollen lymph nodes.",
	"Allergies (Seasonal)": "Itchy eyes, sneezing, runny nose, worse during spring.",
	"Food Poisoning": "Nausea, vomiting, diarrhea, and stomach cramps after eating.",
	"Chickenpox": "Itchy red rash with blisters that scab over.",
	"Ear Infection": "Ear pain, trouble hearing, feeling of fullness in ear.",
	"Pink Eye (Conjunctivitis)": "Redness, itchiness, and discharge from the eyes.",
	"Migraine": "Severe throbbing headache, sensitivity to light and sound.",
	"Urinary Tract Infection (UTI)": "Burning during urination, frequent urge to urinate.",
	
	"Mononucleosis (Mono)": "Extreme fatigue, sore throat, swollen lymph nodes, fever.",
	"Lyme Disease": "Bullseye rash, fever, headache after tick bite.",
	"Appendicitis": "Lower right abdominal pain, nausea, fever.",
	"Pneumonia": "Cough with mucus, fever, chills, breathing difficulty.",
	"Tonsillitis": "Sore throat, difficulty swallowing, red swollen tonsils.",
	"Gastroenteritis (Stomach Flu)": "Diarrhea, stomach cramps, vomiting, fever.",
	"Eczema": "Dry, itchy, inflamed patches of skin.",
	"Anemia (Iron Deficiency)": "Fatigue, pale skin, shortness of breath, dizziness.",
	"Sinus Infection (Sinusitis)": "Facial pressure, thick nasal discharge, congestion.",
	"Asthma": "Shortness of breath, wheezing, chest tightness.",
	"Bronchitis": "Persistent cough with mucus, slight fever, chest discomfort.",
	"Kidney Stones": "Severe back/side pain, blood in urine, nausea.",
	"Hypothyroidism": "Fatigue, weight gain, dry skin, cold intolerance.",
	"Migraine Headaches": "Severe headache, nausea, sensitivity to light.",
	"Rheumatoid Arthritis": "Joint pain, swelling, stiffness, and fatigue.",
	"GERD (Acid Reflux Disease)": "Burning chest pain after meals or lying down.",
	"Cellulitis (Skin Infection)": "Red, swollen, painful warm skin area.",
	"Plantar Fasciitis (Foot Pain)": "Heel pain, especially worse in the morning.",
	"Otitis Media (Middle Ear Infection)": "Ear pain, fever, hearing trouble in children.",
	"Shingles (Herpes Zoster)": "Painful blistering rash on one side of the body."
}

var easy_cases = [
	{
		"symptoms": "Patient reports sneezing, runny nose, sore throat, and mild cough.",
		"choices": ["Common Cold", "Flu", "Strep Throat"],
		"answer": "Common Cold"
	},
	{
		"symptoms": "Patient has high fever, body aches, chills, and extreme tiredness.",
		"choices": ["Common Cold", "Influenza (Flu)", "Allergies (Seasonal)"],
		"answer": "Influenza (Flu)"
	},
	{
		"symptoms": "Severe sore throat, difficulty swallowing, and swollen lymph nodes.",
		"choices": ["Migraine", "Strep Throat", "Pink Eye (Conjunctivitis)"],
		"answer": "Strep Throat"
	},
	{
		"symptoms": "Itchy eyes, sneezing, and runny nose especially during springtime.",
		"choices": ["Food Poisoning", "Allergies (Seasonal)", "Ear Infection"],
		"answer": "Allergies (Seasonal)"
	},
	{
		"symptoms": "Nausea, vomiting, diarrhea, and stomach cramps shortly after eating.",
		"choices": ["Urinary Tract Infection (UTI)", "Food Poisoning", "Chickenpox"],
		"answer": "Food Poisoning"
	},
	{
		"symptoms": "Itchy red rash with blisters that scab over, usually in children.",
		"choices": ["Chickenpox", "Allergies (Seasonal)", "Ear Infection"],
		"answer": "Chickenpox"
	},
	{
		"symptoms": "Ear pain, trouble hearing, and a feeling of fullness in the ear.",
		"choices": ["Migraine", "Ear Infection", "Strep Throat"],
		"answer": "Ear Infection"
	},
	{
		"symptoms": "Redness, itchiness, and discharge from the eyes.",
		"choices": ["Pink Eye (Conjunctivitis)", "Common Cold", "Migraine"],
		"answer": "Pink Eye (Conjunctivitis)"
	},
	{
		"symptoms": "Severe throbbing headache, sensitivity to light and sound.",
		"choices": ["Migraine", "Food Poisoning", "Urinary Tract Infection (UTI)"],
		"answer": "Migraine"
	},
	{
		"symptoms": "Burning sensation during urination and frequent urge to urinate.",
		"choices": ["Urinary Tract Infection (UTI)", "Ear Infection", "Influenza (Flu)"],
		"answer": "Urinary Tract Infection (UTI)"
	}
]

var medium_cases = [
	{
		"symptoms": "Extreme fatigue, sore throat, swollen lymph nodes, and fever.",
		"choices": ["Mononucleosis (Mono)", "Migraine Headaches", "Bronchitis"],
		"answer": "Mononucleosis (Mono)"
	},
	{
		"symptoms": "Bullseye-shaped rash, fever, headache after a tick bite.",
		"choices": ["Cellulitis (Skin Infection)", "Lyme Disease", "Sinus Infection (Sinusitis)"],
		"answer": "Lyme Disease"
	},
	{
		"symptoms": "Severe lower right abdominal pain, nausea, and fever.",
		"choices": ["Appendicitis", "Gastroenteritis (Stomach Flu)", "GERD (Acid Reflux Disease)"],
		"answer": "Appendicitis"
	},
	{
		"symptoms": "Cough with mucus, fever, chills, and difficulty breathing.",
		"choices": ["Asthma", "Pneumonia", "Common Cold"],
		"answer": "Pneumonia"
	},
	{
		"symptoms": "Sore throat, difficulty swallowing, and red, swollen tonsils.",
		"choices": ["Tonsillitis", "Strep Throat", "Sinus Infection (Sinusitis)"],
		"answer": "Tonsillitis"
	},
	{
		"symptoms": "Watery diarrhea, stomach cramps, vomiting, and fever.",
		"choices": ["Gastroenteritis (Stomach Flu)", "Food Poisoning", "Urinary Tract Infection (UTI)"],
		"answer": "Gastroenteritis (Stomach Flu)"
	},
	{
		"symptoms": "Dry, itchy, inflamed patches of skin on the body.",
		"choices": ["Cellulitis (Skin Infection)", "Eczema", "Allergies (Seasonal)"],
		"answer": "Eczema"
	},
	{
		"symptoms": "Fatigue, pale skin, shortness of breath, and dizziness.",
		"choices": ["Anemia (Iron Deficiency)", "GERD (Acid Reflux Disease)", "Hypothyroidism"],
		"answer": "Anemia (Iron Deficiency)"
	},
	{
		"symptoms": "Facial pressure, nasal congestion, and thick nasal discharge.",
		"choices": ["Sinus Infection (Sinusitis)", "Allergies (Seasonal)", "Bronchitis"],
		"answer": "Sinus Infection (Sinusitis)"
	},
	{
		"symptoms": "Shortness of breath, wheezing, and chest tightness.",
		"choices": ["Asthma", "Pneumonia", "Migraine Headaches"],
		"answer": "Asthma"
	},
	{
		"symptoms": "Persistent cough with mucus, chest discomfort, and slight fever.",
		"choices": ["Bronchitis", "Asthma", "Pneumonia"],
		"answer": "Bronchitis"
	},
	{
		"symptoms": "Severe lower back or side pain, blood in urine, and nausea.",
		"choices": ["Kidney Stones", "Urinary Tract Infection (UTI)", "Appendicitis"],
		"answer": "Kidney Stones"
	},
	{
		"symptoms": "Fatigue, weight gain, dry skin, and cold intolerance.",
		"choices": ["Hypothyroidism", "Anemia (Iron Deficiency)", "Sinus Infection (Sinusitis)"],
		"answer": "Hypothyroidism"
	},
	{
		"symptoms": "Severe throbbing headache, nausea, and sensitivity to light.",
		"choices": ["Migraine Headaches", "Common Cold", "Eczema"],
		"answer": "Migraine Headaches"
	},
	{
		"symptoms": "Joint pain, swelling, stiffness, and fatigue.",
		"choices": ["Rheumatoid Arthritis", "Osteoarthritis", "Tendonitis"],
		"answer": "Rheumatoid Arthritis"
	},
	{
		"symptoms": "Burning chest pain after eating or lying down.",
		"choices": ["GERD (Acid Reflux Disease)", "Appendicitis", "Anemia (Iron Deficiency)"],
		"answer": "GERD (Acid Reflux Disease)"
	},
	{
		"symptoms": "Red, swollen, painful area of skin, often with warmth.",
		"choices": ["Cellulitis (Skin Infection)", "Eczema", "Lyme Disease"],
		"answer": "Cellulitis (Skin Infection)"
	},
	{
		"symptoms": "Heel pain, especially worse in the morning.",
		"choices": ["Plantar Fasciitis (Foot Pain)", "Kidney Stones", "Hypothyroidism"],
		"answer": "Plantar Fasciitis (Foot Pain)"
	},
	{
		"symptoms": "Ear pain, fever, trouble hearing, especially in children.",
		"choices": ["Otitis Media (Middle Ear Infection)", "Pink Eye (Conjunctivitis)", "Migraine Headaches"],
		"answer": "Otitis Media (Middle Ear Infection)"
	},
	{
		"symptoms": "Painful rash with blisters, usually on one side of the body.",
		"choices": ["Shingles (Herpes Zoster)", "Chickenpox", "Cellulitis (Skin Infection)"],
		"answer": "Shingles (Herpes Zoster)"
	}
]
