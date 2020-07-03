jupyter nbconvert --to script '2_component.ipynb'
jupyter nbconvert --to script 'analysis_2_component.ipynb'

python3 2_component.py
python3 analysis_2_component.py
