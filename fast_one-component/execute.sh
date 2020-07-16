jupyter nbconvert --to script '1_component.ipynb'
jupyter nbconvert --to script 'analysis_1_component.ipynb'

python3 1_component.py
python3 analysis_1_component.py
