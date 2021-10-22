#!/usr/bin/env python3

import sys, rospy, moveit_commander, geometry_msgs, math, tf

rospy.init_node('robotiq_mover')

moveit_commander.roscpp_initialize(sys.argv)
robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()
groups = robot.get_group_names()
print(groups)

# Määritetään käsi ja tarttuja
arm = moveit_commander.MoveGroupCommander('elfin_arm')
gripper = moveit_commander.MoveGroupCommander('robotiq_gripper')

arm.set_max_acceleration_scaling_factor(1.0)
arm.set_max_velocity_scaling_factor(1.0)

gripper.set_max_acceleration_scaling_factor(1.0)
gripper.set_max_velocity_scaling_factor(1.0)

# Haetaan valmiit asennot ja tulostetaan nimet
print(arm.get_named_targets())
print(gripper.get_named_targets())

joint_pickup = arm.get_named_target_values('pre_pickup')
joint_place = arm.get_named_target_values('pre_place')
joint_open = gripper.get_named_target_values('open')
joint_closed = gripper.get_named_target_values('close')


# Nämä kommenttiin, kun suunnitelma
for i in range(10):
    arm.go(joint_pickup, wait=True)
    arm.stop()
    gripper.go(joint_closed, wait=True)
    gripper.stop()
    arm.go(joint_place, wait=True)
    arm.stop()
    gripper.go(joint_open, wait=True)
    gripper.stop()
# tähän saakka

def hae_ja_laita_kappale():
    pass

# Nämä kommenttiin, kun liikutellaan
gripper.set_joint_value_target(joint_closed)

onnistui,suunnitelma,_,_ = gripper.plan()
if onnistui:
    gripper.execute(suunnitelma)
    gripper.stop()
# tähän saakka