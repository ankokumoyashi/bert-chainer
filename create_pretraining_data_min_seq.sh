#export BERT_BASE_DIR=/nfs/ai16storage01/sec/akp2/1706nasubi/inatomi/benchmark/cased_L-24_H-1024_A-16
#export BERT_BASE_DIR=/nfs/ai16storage01/sec/akp2/1706nasubi/inatomi/benchmark/uncased_L-24_H-1024_A-16
#export GLUE_DIR=/nfs/ai16storage01/sec/akp2/1706nasubi/inatomi/benchmark/sst/ocs_learner/ocs/learner/layers/bert-chainer/glue_data
#export BERT_BASE_DIR=/nfs/ai16storage01/sec/akp2/1706nasubi/inatomi/benchmark/cased_L-24_H-1024_A-16
export BERT_BASE_DIR=/nfs/ai16storage01/sec/akp2/1706nasubi/inatomi/benchmark/bert-chainer/model
python create_pretraining_data.py \
  --input_file=/work/data/wiki/ \
  --output_file=./data/chainer_recode \
  --model_file=$BERT_BASE_DIR/wiki-ja.model \
  --vocab_file=$BERT_BASE_DIR/wiki-ja.vocab \
  --do_lower_case=True \
  --max_seq_length=128 \
  --max_predictions_per_seq=20 \
  --masked_lm_prob=0.15 \
  --random_seed=12345 \
  --dupe_factor=5
  #--init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  #--train_batch_size=8 \
  #--max_seq_length=128 \
  #--max_predictions_per_seq=20 \
  #--num_train_steps=20 \
  #--num_warmup_steps=10 \
  #--learning_rate=5e-5