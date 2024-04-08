# 使用方法

## 環境構築

```bash
python -m venv venv 
pip install -r requirements.txt
```

### 環境変数の設定
`eval.sh` スクリプトで使用する環境変数を設定します。あなたのWeights & Biases APIキー、Azure OpenAIエンドポイント、そしてAzure OpenAIキーを以下のようにエクスポートしてください。

```bash
export WANDB_API_KEY=<YOUR_WANDB_API>
export AZURE_OPENAI_ENDPOINT=<YOUR_AZURE_OPENAI_ENDPOINT>
export AZURE_OPENAI_KEY=<YOUR_AZURE_OPENAI_KEY>
```

- AZURE_OPENAI_ENDPOINT: `https://`から`.openai.azure.com/`までの部分を指定してください。

## モデルの評価
llm-jpモデルを評価するには、configs/config.yamlファイル内の以下の項目を変更します。
ただし、chat templateを変えて指示チューニングを行った場合適切に設定をする必要があります。

- `pretrained_model_name_or_path`: 使用する事前訓練済みモデルのパス
- `run_name`: ロギング目的の実行名（任意）
- `basemodel_name`: ベースモデルの名前（任意）

事前訓練済みモデルの指定には`pretrained_model_name_or_path`の変更のみが必要ですが、ロギングのために`run_name`と`basemodel_name`も変更することが推奨されます。

評価を開始するには、以下のコマンドを実行します。

```bash
bash eval.sh
```

## 注意事項
現在、モデルはAzure gpt-4-0613で固定しています。
詳細はこの[コミット](https://github.com/llm-jp/FastChat/commit/6a725994c7808aaed0c21ebde5befe14ff9ac8b1)を参照してください。