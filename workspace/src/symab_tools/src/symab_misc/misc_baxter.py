def move_to_neutral(limbs_to_move):
    import baxter_interface

    if limbs_to_move not in ['both', 'left', 'right']:
        raise ValueError('limbs must be "both", "right" or "left"')

    limbs = {}
    if limbs_to_move == 'both':
        limbs['left'] = baxter_interface.Limb('left')
        limbs['right'] = baxter_interface.Limb('right')
    else:
        limbs[limbs_to_move] = baxter_interface.Limb(limbs_to_move)

    neutral_joints = {
        'left': {
            'left_s0': -0.08, 'left_s1': -1.0,
            'left_w0':  0.67, 'left_w1':  1.03, 'left_w2': -0.5,
            'left_e0': -1.19, 'left_e1':  1.94
        },
        'right': {
            'right_s0':  0.08, 'right_s1': -1.0,
            'right_w0': -0.67, 'right_w1':  1.03, 'right_w2':  0.5,
            'right_e0':  1.19, 'right_e1':  1.94
        }
    }

    for limb_name, limb in limbs.iteritems():
        limb.move_to_joint_positions(neutral_joints[limb_name])


def move_away(limbs_to_move):
    import baxter_interface

    if limbs_to_move not in ['both', 'left', 'right']:
        raise ValueError('limbs must be "both", "right" or "left"')

    limbs = {}
    if limbs_to_move == 'both':
        limbs['left'] = baxter_interface.Limb('left')
        limbs['right'] = baxter_interface.Limb('right')
    else:
        limbs[limbs_to_move] = baxter_interface.Limb(limbs_to_move)

    neutral_joints = {
        'left': {
            'left_s0': -0.08, 'left_s1': -1.0,
            'left_w0':  0.67, 'left_w1':  1.03, 'left_w2': -0.5,
            'left_e0': -1.19, 'left_e1':  1.94
        },
        'right': {
            'right_s0':  0.08, 'right_s1': -1.0,
            'right_w0': -0.67, 'right_w1':  1.03, 'right_w2':  0.5,
            'right_e0':  1.19, 'right_e1':  1.94
        }
    }

    #Final away movement of Baxter's right arm, after putting backpack on human


    away1_joints = {
         'left': {
            'left_s0': 0.01, 'left_s1': -1.37,
            'left_w0':  -0.1, 'left_w1':  2.1, 'left_w2': 0.04,
            'left_e0': -1.2, 'left_e1':  0.6
         },
         'right': {
            'right_s0':  -0.01, 'right_s1': -1.37,
            'right_w0': 0.10, 'right_w1':  2.1, 'right_w2':  -0.04,
            'right_e0':  1.2, 'right_e1':  0.6
         }

    }

    away2_joints = {
         'left': {
            'left_s0': 0.7, 'left_s1': -1.42,
            'left_w0':  -0.32, 'left_w1':  2.1, 'left_w2': 0.32,
            'left_e0': -1.17, 'left_e1':  1.2
         },
         'right': {
            'right_s0':  -0.7, 'right_s1': -1.42,
            'right_w0': 0.32, 'right_w1':  2.1, 'right_w2':  -0.32,
            'right_e0':  1.17, 'right_e1':  1.2
         }

    }

    away3_joints = {
         'left': {
            'left_s0': 0.64, 'left_s1': -1.42,
            'left_w0':  0.15, 'left_w1':  1.32, 'left_w2': 0.5,
            'left_e0': -1.0, 'left_e1':  1.73
         },
         'right': {
            'right_s0':  -0.64, 'right_s1': -1.42,
            'right_w0': -0.15, 'right_w1':  1.32, 'right_w2':  -0.5,
            'right_e0':  1.00, 'right_e1': 1.73  
         }

    }

    for limb_name, limb in limbs.iteritems():
        #limb.move_to_joint_positions(neutral_joints[limb_name])
        limb.move_to_joint_positions(away1_joints[limb_name])
        limb.move_to_joint_positions(away2_joints[limb_name])
        limb.move_to_joint_positions(away3_joints[limb_name])
