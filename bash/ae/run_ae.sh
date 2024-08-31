export PYTHONPATH="${PYTHONPATH}:text_autoencoder"

python text_autoencoder/autoencoder/train.py \
--log_interval 20 --val_interval 200 --batch_size 16 --valid_size 1024 \
--epoch 1 \
--num_feature 16 --sentence_len 128 \
--save_interval 200 \
--train_pt_dir data-bin/delibot_utt_w_empty/parsed/train --dev_pt_dir data-bin/delibot_utt_w_empty/parsed/dev \
--h_noiser vae --h_noiser_ratio 0.3 \
--h_tanh \
--enc_model bert-large-uncased \
--dec_model gpt2-medium \
--load_dec True \
--latent_size 1024 \
--share_gpts True \
--noiser sub --noiser_ratio 0.1 \