#!/usr/bin/env python

import rospy
import numpy as np
import scipy.io as sio
import baxter_interface
import argparse
from symab_execution.trajectory_executor import TrajectoryExecutor


def joints_from_vector(limb, vector):
    joints = sorted(['s0', 's1', 'e0', 'e1', 'w0', 'w1', 'w2'])
    joints_names = [limb + '_' + j for j in joints]

    return dict(zip(joints_names, vector))


def main():
    # Parse arguments
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '-i',
        dest='input',
        default='traj',
        required=True,
        help='Name of input file. (default: traj)')
    args = parser.parse_args()

    # Init ROS stuff
    rospy.init_node('symab_execute')
    rospy.loginfo('symab_execute: main: Node initialized.')

    mat = sio.loadmat(args.input)
    limb_name = mat['limb']

    time = mat['y'][:, 0][:, np.newaxis]
    duration = mat['y'][-1, 0]
    left_traj = None
    right_traj = None

    if limb_name == 'left' or limb_name == 'both':
        left_traj = mat['y'][:, 1:7 + 1]
        left_initial_pose = joints_from_vector('left', left_traj[0, :])
        rospy.loginfo('Moving left limb to initial pose')
        baxter_interface.Limb('left').move_to_joint_positions(
            left_initial_pose)
    if limb_name == 'right' or limb_name == 'both':
        right_traj = mat['y'][:, 15:21 + 1]
        right_initial_pose = joints_from_vector('right', right_traj[0, :])
        rospy.loginfo('Moving right limb to initial pose')
        baxter_interface.Limb('right').move_to_joint_positions(
            right_initial_pose)

    rospy.loginfo('Requesting trajectory execution')
    te = TrajectoryExecutor(time, duration, left_traj, right_traj)
    te.execute()


if __name__ == '__main__':
    main()
