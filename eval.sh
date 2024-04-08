
source venv/bin/activate
export WANDB_API_KEY=<YOUR_WANDB_API>


export AZURE_OPENAI_ENDPOINT=<YOUR_AZURE_OPENAI_ENDPOINT>
export AZURE_OPENAI_KEY=<YOUR_AZURE_OPENAI_KEY>
export LANG=ja_JP.UTF-8

python scripts/run_eval.py 
