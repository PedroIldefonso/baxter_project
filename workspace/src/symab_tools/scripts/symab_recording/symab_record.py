#!/usr/bin/env python

import argparse
import cPickle as pickle
import scipy.io
import rospy
from symab_recording.trajectory_recorder import TrajectoryRecorder


def main():
    # Parse arguments
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '-l',
        dest='limb',
        choices=['left', 'right', 'both'],
        required=True,
        help='Limb to manipulate.')
    parser.add_argument(
        '-cnp',
        dest='custom_neutral_position_file',
        help=('File with the neutral position. (default: ',
              'moves to baxter neutral position)'))
    parser.add_argument(
        '-o',
        dest='output',
        default='traj',
        help='Name of output file. (default: traj)')
    parser.add_argument(
        '-r',
        dest='rate',
        default=100,
        type=int,
        help='Recording rate. (default: 100)')

    args = parser.parse_args()
    custom_neutral_position_file = args.custom_neutral_position_file

    limbs = ['left', 'right'] if args.limb == 'both' else [args.limb]

    # Init ROS stuff
    rospy.init_node('symab_record')
    rospy.loginfo('symab_record: main: Node initialized.')

    tr = TrajectoryRecorder(args.limb, args.rate)
    if custom_neutral_position_file is None:
        for limb in limbs:
            tr.move_to_joint_positions(limb)
    else:
        custom_positions = pickle.load(
            open(custom_neutral_position_file, 'rb'))
        for limb in limbs:
            tr.move_to_joint_positions(limb, custom_positions[limb])

    y = tr.record()

    scipy.io.savemat(args.output, mdict={'y': y, 'limb': args.limb})


if __name__ == '__main__':
    main()
