GDPC                0                                                                         P   res://.godot/exported/133200997/export-13ff16a1a67b7cf74659b874d069e377-Ball.scn�      �      ���������q���bJ    T   res://.godot/exported/133200997/export-2c9d950dbf36f6b202bd27f5743c0241-Brick.scn   P	      ]      �(�!�5 Vm���&R�    T   res://.godot/exported/133200997/export-90e1ff3baa03524a506ff0f7a9d78dcf-Player.scn  �6      �      ��p��VԣK��>�    P   res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scn "      �      RTn��zKw�T�+���    T   res://.godot/exported/133200997/export-eff14ac8542cc062cc6f800989061394-YouWin.scn   @      �      o��^��6�����l�    T   res://.godot/exported/133200997/export-f45b51737a23a43af5655972d9fa97dd-Restart.scn �;      f      ��K�o�#��.XK7�u    ,   res://.godot/global_script_class_cache.cfg  PG             ��Р�8���8~$}P�    T   res://.godot/imported/BreakoutPlattform.png-580de803cd2866f0d9b16cba8293619f.ctex   p      �       7;��GV�42�S�mkC    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �Yz=������������       res://.godot/uid_cache.bin  0K      �       ~#d�Ȗ���]�       res://Ball.gd           �      �g�N�˖Mi7K�       res://Ball.tscn.remap   �D      a       ��c��!�2�ς.    $   res://BreakoutPlattform.png.import        �       �RJ[�C��;�̢�       res://Brick.gd  �      o      ��N*�� �F�� �       res://Brick.tscn.remap   E      b       �c��X[Xh�	;Rv�       res://Main.gd   `      �      ����!k�<��W       res://Main.tscn.remap   �E      a       3 J�M�B�b��}�       res://Player.gd  5      �      �'�{�'n�_պ�N�       res://Player.tscn.remap  F      c       ^����[���:c��&       res://Restart.tscn.remappF      d       e���;�@~�!��)a       res://YouWin.tscn.remap �F      c        P͂K��a�D7"	�       res://icon.svg  pG      �      C��=U���^Qu��U3       res://icon.svg.import   �      �       \8��*p�_Q���       res://project.binary L      j
      vI
;J�Vv�R�g��                extends RigidBody2D

const BALL_SPEED = 200.0
var past_linear_velocity := linear_velocity
var direction = Vector2.ZERO

func _ready():
	randomize()
	StartBall()

func _integrate_forces(state):
	var speed = linear_velocity.length()
	if speed < BALL_SPEED:
		linear_velocity = linear_velocity.normalized() * BALL_SPEED

func StartBall():
	direction = Vector2(randf_range(-1, 1), 1).normalized()
	linear_velocity = direction * BALL_SPEED

            RSRC                    PackedScene            ��������                                            
      resource_local_to_scene    resource_name 	   friction    rough    bounce 
   absorbent    script    custom_solver_bias    radius 	   _bundled       Script    res://Ball.gd ��������
   Texture2D    res://icon.svg ��mXYu�?      local://PhysicsMaterial_uenrj �         local://CircleShape2D_3uecj 
         local://PackedScene_l8sob 4         PhysicsMaterial                      �?         CircleShape2D          :�`A         PackedScene    	      	         names "   
      Ball    physics_material_override    gravity_scale    script    RigidBody2D 	   Sprite2D    scale    texture    CollisionShape2D    shape    	   variants                                  
   ���>���>                        node_count             nodes     !   ��������       ����                                        ����                                 ����   	                conn_count              conns               node_paths              editable_instances              version             RSRC           GST2            ����                        f   RIFF^   WEBPVP8LQ   /�/@�mS�	�D��F����=O�0ۨc8��
��-������m�Q��@���?��	D�?�^�Ԧ�d2G9�   [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bjpogs8k0jxmp"
path="res://.godot/imported/BreakoutPlattform.png-580de803cd2866f0d9b16cba8293619f.ctex"
metadata={
"vram_texture": false
}
   extends StaticBody2D

signal brick_hit
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Brick_body_entered(body):
	if body.name == "Ball":
		emit_signal("brick_hit")  
		queue_free()  # This will remove the brick
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Brick.gd ��������
   Texture2D    res://icon.svg ��mXYu�?      local://RectangleShape2D_0c4my z         local://PackedScene_e4f6p �         RectangleShape2D       
     �B  0B         PackedScene          	         names "         Brick    script    StaticBody2D    CollisionShape2D    shape 	   Sprite2D    scale    texture    Area2D    _on_Brick_body_entered    body_entered    	   variants                           
   fff?33�>               node_count             nodes     -   ��������       ����                            ����                           ����                                 ����                     ����                   conn_count             conns               
   	                    node_paths              editable_instances              version             RSRC   GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b6pjhwwqjkoxg"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                extends Node2D

var score = 0
var totalBricks = 0
var totalHits = 0
var restartButtonScene = preload("res://Restart.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Score.text = str(score)
	$Ball.StartBall()
	for brick in get_tree().get_nodes_in_group("bricks"):
		brick.connect("brick_hit", Callable(self, "_on_Brick_Hit"))
		totalBricks += 1 		## Add all the bricks to the count.

func _on_Brick_Hit():
	totalHits += 1
	score += totalHits * (1 + (totalHits % 4)) 			#Adds point to score
	$Score.text = str(score) 	# Updates score display
	totalBricks -= 1 		# Decrement total bicks
	if (totalBricks == 0):
		StageComplete()

func StageComplete():
	var winButton = preload("res://YouWin.tscn").instantiate()
	add_child(winButton)
	winButton.get_node("RestartButton").connect("pressed", Callable(self, "_on_WinButton_pressed"))
	get_tree().paused = true

func _on_Game_Over(body):
	ShowRestartButton() 		# Show restart Scene
	get_tree().paused = true 	# Stop simulation

func ShowRestartButton():
	var restartButton = restartButtonScene.instantiate() 	# Creates instance of Restart scene
	add_child(restartButton) 
	# Get the child node "RestartButton" of the Restart scene
	# and connect the pressed signal to the on_RestartButton_pressed function.
	restartButton.get_node("RestartButton").connect("pressed", Callable(self, "_on_RestartButton_pressed"))

func _on_WinButton_pressed():
	get_tree().reload_current_scene() 	# Restart the scene
	get_tree().paused = false 			#Unpause scene so things can move again

func _on_RestartButton_pressed():
	get_tree().reload_current_scene() 	# Restart the scene
	get_tree().paused = false 			#Unpause scene so things can move again
              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Main.gd ��������   PackedScene    res://Player.tscn x�iF�I   PackedScene    res://Ball.tscn ��-P   PackedScene    res://Brick.tscn $n�k�ib      local://RectangleShape2D_6n8nw -         local://RectangleShape2D_jab7q ^         local://RectangleShape2D_1m4b3          local://PackedScene_c4s5l �         RectangleShape2D       
     `B  �B         RectangleShape2D             RectangleShape2D       
    ��D  4B         PackedScene          	         names "   B      Main    script    Node2D 
   ColorRect    offset_right    offset_bottom    color    Score    offset_left    offset_top    metadata/_edit_use_anchors_    Label    Player 	   position    Ball    Brick21    bricks    Brick22    Brick23    Brick24    Brick25    Brick26    Brick27    Brick28    Brick29    Brick30    Brick31    Brick32    Brick33    Brick34    Brick35    Brick36    Brick37    Brick38    Brick39    Brick40    Brick9    Brick10    Brick11    Brick12    Brick13    Brick14    Brick15    Brick16    Brick17    Brick18    Brick19    Brick20    Brick5    Brick6    Brick7    Brick8    Brick3    Brick4    Brick    Brick2    Area2D    StaticBody2D    CollisionShape2D    scale    shape    Area2D2    StaticBody2D2    BottomArea2D    _on_Game_Over    body_entered    	   variants    A                  �D    �"D                 �?    ��D     �A    ��D     4B               
     D  D         
     D  �C         
    ��D  TC
    ��D  &C
    ��D  �C
    ��D  �C
    �tD  TC
    �tD  &C
    �tD  �C
    �tD  �C
     XD  TC
     XD  &C
     XD  �C
     XD  �C
    �D  TC
    �D  &C
    �D  �C
    �D  �C
    @;D  SC
    @;D  %C
    @;D  �C
    @;D ��C
    �D  TC
    �D  &C
    �D  �C
    �D  �C
     �C  TC
     �C  &C
     �C  �C
     �C  �C
    ��C  TC
    ��C  &C
    ��C  �C
    ��C  �C
     lB  TC
     lB  &C
     lB  �C
     lB  �C
     .C  TC
     .C  &C
     .C  �C
     .C  �C
     0� ��C
   ���>  �@          
    ��D    
    �D   �
     pB  �?         
    �D  %D
         D
     D  �A               node_count    7         nodes     /  ��������       ����                            ����                                       ����         	                  
                  ���   	         
               ���                           ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                             ���                              ���!                             ���"                              ���#            !                 ���$            "                 ���%            #                 ���&            $                 ���'            %                 ���(            &                 ���)            '                 ���*            (                 ���+            )                 ���,            *                 ���-            +                 ���.            ,                 ���/            -                 ���0            .                 ���1            /                 ���2            0                 ���3            1                 ���4            2                 ���5            3                 ���6            4                 ���7            5                 9   8   ����        -       :   :   ����      6   ;   7   <   8               9   =   ����      9       /       :   :   ����      6   ;   7   <   8               9   >   ����      :       1       :   :   ����   ;   ;   <   <               9   9   ����      =       3       :   :   ����   ;   ;   <   <               8   ?   ����      >       5       :   :   ����      ?   <   @             conn_count             conns        5       A   @                    node_paths              editable_instances              version             RSRC       extends StaticBody2D

const SPEED = 300.0
const RIGHT_EDGE = 995
const LEFT_EDGE = 155

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	position.x += direction * SPEED * delta
	if (position.x > RIGHT_EDGE):
		position.x = RIGHT_EDGE
	if (position.x < LEFT_EDGE):
		position.x = LEFT_EDGE
        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Player.gd ��������
   Texture2D    res://icon.svg ��mXYu�?      local://RectangleShape2D_yr7xk {         local://PackedScene_6q48a �         RectangleShape2D       
     �A  �A         PackedScene          	         names "         Player    script     metadata/_edit_vertical_guides_    StaticBody2D 	   Sprite2D    scale    texture    CollisionShape2D 	   position    shape    CollisionPolygon2D    polygon    	   variants    	                       �ED
      @��L>         
         �?
     �A���?          
         �?%        B  ��  �  ��  �  @�   �   �   C   �  C  @�      node_count             nodes     .   ��������       ����                                  ����                                 ����               	                  
   
   ����                         conn_count              conns               node_paths              editable_instances              version             RSRCRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_i677l �          PackedScene          	         names "         Restart    process_mode    Node2D    ColouredOverlay    offset_left    offset_right    offset_bottom    color 
   ColorRect    RestartButton    offset_top    text    Button    gameOverText    scale    Label    	   variants                  ��     �D     !D   ���>���>���>��Q?    @ D    ��C    �D    ��C      Restart      �C     nC    �D     �C
     @@  @@   
   Game Over       node_count             nodes     <   ��������       ����                            ����                                          	   ����         
                     	                     ����      
   
                                        conn_count              conns               node_paths              editable_instances              version             RSRC          RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_f12gw �          PackedScene          	         names "         Restart    process_mode    Node2D    ColouredOverlay    offset_left    offset_right    offset_bottom    color 
   ColorRect    RestartButton    offset_top    text    Button    WinText    scale    horizontal_alignment    Label    	   variants                  ��     �D     !D   ���>���>�l>���>    @ D    ��C    �D    ��C      Restart      �C     nC    �D     �C
     @@  @@   	   You win!             node_count             nodes     >   ��������       ����                            ����                                          	   ����         
                     	                     ����      
   
                                              conn_count              conns               node_paths              editable_instances              version             RSRC       [remap]

path="res://.godot/exported/133200997/export-13ff16a1a67b7cf74659b874d069e377-Ball.scn"
               [remap]

path="res://.godot/exported/133200997/export-2c9d950dbf36f6b202bd27f5743c0241-Brick.scn"
              [remap]

path="res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scn"
               [remap]

path="res://.godot/exported/133200997/export-90e1ff3baa03524a506ff0f7a9d78dcf-Player.scn"
             [remap]

path="res://.godot/exported/133200997/export-f45b51737a23a43af5655972d9fa97dd-Restart.scn"
            [remap]

path="res://.godot/exported/133200997/export-eff14ac8542cc062cc6f800989061394-YouWin.scn"
             list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             ��-P   res://Ball.tscn$n�k�ib   res://Brick.tscn��mXYu�?   res://icon.svg��H�:}�   res://Main.tscnx�iF�I   res://Player.tscn��]��}C   res://Restart.tscn���g��G   res://YouWin.tscn[��ND�S*   res://BreakoutPlattform.png ECFG      application/config/name         breakout   application/run/main_scene         res://Main.tscn    application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg     input/ui_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       ��   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/ui_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script            