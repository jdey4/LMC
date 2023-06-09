 slot = 1
 shift = 1

 for shift in {1..6}
 do 
    for slot in {0..9}
    do
        echo $slot
        echo $shift
        python main_transfer_multitask.py --activate_after_str_oh=0 --activation_structural=sigmoid --deviation_threshold=4 --epochs=100 --init_oh=none --keep_bn_in_eval_after_freeze=1 --lr=0.001 --module_init=most_likely --momentum_bn_decoder=0.1 --multihead=gated_linear --n_tasks=10 --normalize_oh=1 --optmize_structure_only_free_modules=1 --projection_layer_oh=0 --projection_phase_length=5 --reg_factor=1 --running_stats_steps=50 --seed=180 --str_prior_factor=1 --str_prior_temp=0.01 --structure_inv_oh=linear_no_act --task_agnostic_test=0 --task_sequence=s_long --temp=1 --pr_name s_long_cr --wdecay=0 --slot=$slot --shift=$shift
    done 
done