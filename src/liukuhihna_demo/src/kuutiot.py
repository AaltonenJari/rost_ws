#!/usr/bin/env python3
import rospy, tf, random
from gazebo_msgs.srv import DeleteModel, SpawnModel, GetModelState
from geometry_msgs.msg import Quaternion, Pose, Point

class CubeSpawner():
    
    def __init__(self) -> None:
        self.cubes = []
    
        self.cubes.append(rospy.get_param('kuutiot/pun'))
        self.cubes.append(rospy.get_param('kuutiot/vih'))
        self.cubes.append(rospy.get_param('kuutiot/sininen'))
        self.cubes.append(rospy.get_param('kuutiot/val'))


        self.sm = rospy.ServiceProxy('/gazebo/spawn_urdf_model', SpawnModel)
        self.dm = rospy.ServiceProxy('/gazebo/delete_model', DeleteModel)
        self.ms = rospy.ServiceProxy('/gazebo/get_model_state', GetModelState)
    
    def checkModel(self):
        return self.ms('kuutio', 'world').success
        
    def getPosition(self):
        return self.ms('kuutio','world').pose.position.z
        
    def deleteModel(self):
        self.dm('kuutio')
        rospy.sleep(0.5)
        
    def spawnModel(self):
        quat = tf.transformations.quaternion_from_euler(0,0,0)
        orient = Quaternion(quat[0],quat[1],quat[2],quat[3])
        pose = Pose(Point(x=0,y=0,z=3), orient)
        i = random.randint(0,len(self.cubes)-1)
        self.sm('kuutio', self.cubes[i], None, pose, None)
        
    def shutdown_hook(self):
        self.deleteModel()
        print('Shutting down')


if __name__ == '__main__':
    print('Waiting for gazebo services...')
    rospy.init_node('spawn_cubes')
    rospy.wait_for_service('/gazebo/delete_model')
    rospy.wait_for_service('/gazebo/spawn_urdf_model')
    rospy.wait_for_service('/gazebo/get_model_state')
    r = rospy.Rate(100)cs = CubeSpawner()
    rospy.on_shutdown(cs.shutdown_hook)
    while not rospy.is_shutdown():
        if cs.checkModel()==False:
            cs.spawnModel()
        elif cs.getPosition()<0.05:
            cs.deleteModel()
        r.sleep()
