#!/bin/bash
BERT_BASE_DIR="/Users/stdo/iCloud/models/BERT/BERT-Base"
GLUE_DIR="/Users/stdo/iCloud/models/BERT/glue/glue_data"

python run_classifier.py \
  --task_name=SST5 \
  --do_train=true \
  --do_eval=true \
  --do_predict=true \
  --data_dir=$GLUE_DIR/SST-5 \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=8 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0 \
  --output_dir=/Users/stdo/iCloud/models/BERT/output/SST5_output