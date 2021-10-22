#! /usr/bin/python3
# importit
from os import truncate
from icim_robot.srv import ICIM_action, icim_actionresponse
import rospy, argparse
from std_msgs.msg import float64
from control_msgs.msg import JointControllerState

# Luodaan luokka
class IcimServer:
    # Objektin alustus metodi
    def __init__(self, args):
        rospy.init_node('icim_action_server')
        s = rospy.service('icim_action', ICIM_action, self.handle_action)
        self.x_pub = rospy.Publisher("/icim/io_ctrl/command", float64, queue_size=1)
        self.y_pub = rospy.Publisher("/icim/io_ctrl/command", float64, queue_size=1)
        self.zpub = rospy.Publisher("/icim/io_ctrl/command", float64, queue_size=1)
        self.build_indexes(args)
        print("Ready for action")

    #  toleranssi metodi
    def in_limits(self, margin=0.001):
        x_state = rospy.wait_for_message('/icim/io_ctrl/state', 
            JointControllerState, timeout=10)
        y_state = rospy.wait_for_message('/icim/lr_ctrl/state', 
            JointControllerState, timeout=10)
        z_state = rospy.wait_for_message('/icim/ud_ctrl/state', 
            JointControllerState, timeout=10)

        xerr = x_state.error
        yerr = y_state.error
        zerr = x_state.error

        if ((-margin <= xerr <= margin) and (-margin <= yerr <= margin)
        and (-margin <= zerr <= margin)):
            return True
        else:
            return False

    # liiku paikkaan 
    def move_to(self, index):
        y_msg = float64()
        z_msg = float64()
        if self.in_limits():
            y_msg.data = self.indexes[index-1]['y']
            z_msg.data = self.indexes[index-1]['z']
            self.y_pub.publish(y_msg)
            self.z_pub.publish(z_msg)
            return icim_actionresponse(True,"Moving to index (:d".format(index))
        else:
            return icim_actionresponse(False,"Pallet sled movong or not in limits")

    # rakennetaan tavoite paikat
    def build_indexes(self, args):
        rows = args.rows
        columns = args.columns
        width = args.width
        height = args.height
        self.indexes = []
        rospy.set_param('grid', {'rows': rows, 'columns': columns})
        i=0
        for r in range(rows):
            for c in range(columns):
                i+=1
                coordinate = {'y': round(c*width, 3), 'z': round(r*height,3)}
                self.indexes.append(coordinate)
    
    # hallitaan tehtävät
    def handle_action(self, req):
        if not req.pickup and not req.place and not req.home:
            return self.move_to(req.index)
        else:
            return icim_actionresponse(False, "Unknown boolean value combination")

# main
if __name__ == "__main__":
    # parsitaan argumentit, annetaan oletusarvot niille
    parser = argparse.ArgumentParser()
    parser.add_argument('-r','--rows', type=int, default=5)
    parser.add_argument('-c','--columns', type=int, default=8)
    parser.add_argument('-w','--width', type=float, default=8.214)
    parser.add_argument('-t','--heigth', type=float, default=8.240)
    parser.add_argument('-d','--depth', type=float, default=8.2619)
    args, unknown = parser.parse_known_args()

    # luodaan luokasta objecti
    server = IcimServer(args)

    # laitetaan rospy kierto päälle
    rospy.spin()
