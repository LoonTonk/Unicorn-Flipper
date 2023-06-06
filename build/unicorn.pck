GDPC                 �                                                                         `   res://.godot/exported/133200997/export-42a2dc8dbfd03b805a8e3218c8b555f8-multiplier upgrade.scn  �      �      �@��_8�uʧ��/    T   res://.godot/exported/133200997/export-46201db2724ffcb96e28b830ef7a9754-timer.scn   �=      2      	�z)�w̠�����    \   res://.godot/exported/133200997/export-5f1e7306f3c051fbf9d1310c8807423f-unicorn flipper.scn �D      #      ;����
oܼ�Ȭx    `   res://.godot/exported/133200997/export-bdb73b738f6e353fd584357a224e7e98-unicorn_flipper_v_2.scn  L      �      �Nhw���RP��e�    T   res://.godot/exported/133200997/export-d0bc7f5d8df845080607a2ffb0973731-green.res   �      y      �X���s�>���W��    T   res://.godot/exported/133200997/export-e66311c87c39ec8c25379305b5ae724b-control.scn         �      ��S��U}2�D�j�)�    ,   res://.godot/global_script_class_cache.cfg                 ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex`      \      6(4�d=EQ�ǮVj,       res://.godot/uid_cache.bin  o      �       �P���E��|�#o�       res://control.tscn.remap \      d       e��G,(�9k2��p�       res://flipper.gd      �      ~6�O,���:��)��       res://green.tres.remap  �\      b       g����Z���Rd;$�F       res://icon.svg  �^      N      ]��s�9^w/�����       res://icon.svg.import   �      �       �-�㲫0��c\��6    $   res://multiplier upgrade.tscn.remap  ]      o       �P��\qOc+���B�&       res://project.binary p      ?      �0.�`hcl|�n�W       res://scrollpanel.gdP7      {       ���X���魭���\I       res://things.gd �7      D      �����y=��҈IL�&       res://timer.gd   9      �      R�.�r.u*VoO�       res://timer.tscn.remap  p]      b       <�}������peտ%�        res://unicorn flipper.tscn.remap�]      l       _I�#F���b2Ch�%    $   res://unicorn_flipper_v_2.tscn.remapP^      p       r�,��-N�V��.�       res://upgrades.gd    T      �      뼦��,�{�����al    =��:	pO�"glist=Array[Dictionary]([])
s70y�RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://things.gd ��������   PackedScene    res://unicorn flipper.tscn bF C��   PackedScene    res://unicorn_flipper_v_2.tscn $�9��tI   PackedScene    res://multiplier upgrade.tscn .�ң:�^      local://PackedScene_0kg5o �         PackedScene          	         names "         Control    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    Button    anchor_left    anchor_top    offset_left    offset_top    offset_right    offset_bottom    text    Unicorn num    vertical_alignment    script    prefix    Label    Unicorn flipper    Unicorn flipper V2 	   Upgrades    _on_button_pressed    pressed    	   variants                         �?               ����      ?     ��     ��     �B   ���A      Brutally murder a Unicorn      ��     B     |B     lB      Dead unicorns: 0                 Dead unicorns:                ��     �B     X�     gC              R�     SC     ��     �C                     lC      node_count             nodes     �   ��������        ����                                                          ����                     	                  
               	      
                           ����                     	                  
                                                            ���                                 
                                    ���                                 
                                    ���                               conn_count             conns                                     node_paths              editable_instances              version             RSRC m�extends Panel

@export var prefix: String = "Things: "
@export var prob: float = 0.5
@export var baseCost: int = 5
@export var multiply: bool = false
@onready var cost: int = baseCost
@export var flippers: int = 0
@onready var text: Node = get_node("Label2")
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var box: Node = get_node("VScrollBar/VBoxContainer")
@onready var button: Node = get_node("Button")
var timer = preload("res://timer.tscn")
@onready var flipMultiplier: int = 1
var insurance: float = 0

func _on_button_pressed():
	if unicorns.things >= cost:
		unicorns.change_things(-cost)
		flippers += 1
		text.text = prefix + str(flippers)
		box.add_child(timer.instantiate())
		cost = baseCost * pow(1.15, flippers)
		button.text = "Cost: " + str(cost) + "\ndead Unicorns"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things == baseCost:
		visible = true

func flip(multiplier: int = 1, insured: bool = false) -> bool:
		print((prob + insurance) if insured else prob)
		if randf() < ((prob + insurance) if insured else prob):
			unicorns.change_things(flipMultiplier * multiplier)
			return true
		else:
			return false

,Q�RSRC                     Theme            ��������                                            #      resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script    default_base_scale    default_font    default_font_size    ProgressBar/styles/background    ProgressBar/styles/fill           local://StyleBoxFlat_tqs6m �         local://StyleBoxFlat_tys03 
         local://Theme_3dbce ?         StyleBoxFlat            �?���>      �?         StyleBoxFlat                �?      �?         Theme    !             "                  RSRC��& ��GST2   �   �      ����               � �        $  RIFF  WEBPVP8L  /������!"2�H�l�m�l�H�Q/H^��޷������d��g�(9�$E�Z��ߓ���'3���ض�U�j��$�՜ʝI۶c��3� [���5v�ɶ�=�Ԯ�m���mG�����j�m�m�_�XV����r*snZ'eS�����]n�w�Z:G9�>B�m�It��R#�^�6��($Ɓm+q�h��6�5��I��'���F�"ɹ{�p����	"+d������M�q��� .^>и��6��a�q��gD�h:L��A�\D�
�\=k�(���_d2W��dV#w�o�	����I]�q5�*$8Ѡ$G9��lH]��c�LX���ZӞ3֌����r�2�2ؽL��d��l��1�.��u�5�!�]2�E��`+�H&�T�D�ި7P��&I�<�ng5�O!��͙������n�
ؚѠ:��W��J�+�����6��ɒ�HD�S�z�����8�&�kF�j7N�;YK�$R�����]�VٶHm���)�rh+���ɮ�d�Q��
����]	SU�9�B��fQm]��~Z�x.�/��2q���R���,snV{�7c,���p�I�kSg�[cNP=��b���74pf��)w<:Ŋ��7j0���{4�R_��K܅1�����<߁����Vs)�j�c8���L�Um% �*m/�*+ �<����S��ɩ��a��?��F�w��"�`���BrV�����4�1�*��F^���IKJg`��MK������!iVem�9�IN3;#cL��n/�i����q+������trʈkJI-����R��H�O�ܕ����2
���1&���v�ֳ+Q4蝁U
���m�c�����v% J!��+��v%�M�Z��ꚺ���0N��Q2�9e�qä�U��ZL��䜁�u_(���I؛j+0Ɩ�Z��}�s*�]���Kܙ����SG��+�3p�Ei�,n&���>lgC���!qյ�(_e����2ic3iڦ�U��j�q�RsUi����)w��Rt�=c,if:2ɛ�1�6I�����^^UVx*e��1�8%��DzR1�R'u]Q�	�rs��]���"���lW���a7]o�����~P���W��lZ�+��>�j^c�+a��4���jDNὗ�-��8'n�?e��hҴ�iA�QH)J�R�D�̰oX?ؿ�i�#�?����g�к�@�e�=C{���&��ށ�+ڕ��|h\��'Ч_G�F��U^u2T��ӁQ%�e|���p ���������k	V����eq3���8 � �K�w|�Ɗ����oz-V���s ����"�H%* �	z��xl�4��u�"�Hk�L��P���i��������0�H!�g�Ɲ&��|bn�������]4�"}�"���9;K���s��"c. 8�6�&��N3R"p�pI}��*G��3@�`��ok}��9?"@<�����sv� ���Ԣ��Q@,�A��P8��2��B��r��X��3�= n$�^ ������<ܽ�r"�1 �^��i��a �(��~dp-V�rB�eB8��]
�p ZA$\3U�~B�O ��;��-|��
{�V��6���o��D��D0\R��k����8��!�I�-���-<��/<JhN��W�1���H�#2:E(*�H���{��>��&!��$| �~�\#��8�> �H??�	E#��VY���t7���> 6�"�&ZJ��p�C_j���	P:�a�G0 �J��$�M���@�Q��[z��i��~q�1?�E�p�������7i���<*�,b�е���Z����N-
��>/.�g�'R�e��K�)"}��K�U�ƹ�>��#�rw߶ȑqF�l�Ο�ͧ�e�3�[䴻o�L~���EN�N�U9�������w��G����B���t��~�����qk-ί�#��Ξ����κ���Z��u����;{�ȴ<������N�~���hA+�r ���/����~o�9>3.3�s������}^^�_�����8���S@s%��]K�\�)��B�w�Uc۽��X�ǧ�;M<*)�ȝ&����~$#%�q����������Q�4ytz�S]�Y9���ޡ$-5���.���S_��?�O/���]�7�;��L��Zb�����8���Guo�[''�،E%���;����#Ɲ&f��_1�߃fw�!E�BX���v��+�p�DjG��j�4�G�Wr����� 3�7��� ������(����"=�NY!<l��	mr�՚���Jk�mpga�;��\)6�*k�'b�;	�V^ݨ�mN�f�S���ն�a���ϡq�[f|#U����^����jO/���9͑Z��������.ɫ�/���������I�D��R�8�5��+��H4�N����J��l�'�כ�������H����%"��Z�� ����`"��̃��L���>ij~Z,qWXo�}{�y�i�G���sz�Q�?�����������lZdF?�]FXm�-r�m����Ф:�З���:}|x���>e������{�0���v��Gş�������u{�^��}hR���f�"����2�:=��)�X\[���Ů=�Qg��Y&�q�6-,P3�{�vI�}��f��}�~��r�r�k�8�{���υ����O�֌ӹ�/�>�}�t	��|���Úq&���ݟW����ᓟwk�9���c̊l��Ui�̸~��f��i���_�j�S-|��w�R�<Lծd�ٞ,9�8��I�Ү�6 *3�ey�[�Ԗ�k��R���<������
g�R���~��a��
��ʾiI9u����*ۏ�ü�<mԤ���T��Amf�B���ĝq��iS��4��yqm-w�j��̝qc�3�j�˝mqm]P��4���8i�d�u�΄ݿ���X���KG.�?l�<�����!��Z�V�\8��ʡ�@����mK�l���p0/$R�����X�	Z��B�]=Vq �R�bk�U�r�[�� ���d�9-�:g I<2�Oy�k���������H�8����Z�<t��A�i��#�ӧ0"�m�:X�1X���GҖ@n�I�겦�CM��@������G"f���A$�t�oyJ{θxOi�-7�F�n"�eS����=ɞ���A��Aq�V��e����↨�����U3�c�*�*44C��V�:4�ĳ%�xr2V�_)^�a]\dZEZ�C 
�*V#��	NP��\�(�4^sh8T�H��P�_��}�M��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bus07iks1q6q3"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �CN��/�bZ9:0�RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name    line_spacing    font 
   font_size    font_color    outline_size    outline_color    shadow_size    shadow_color    shadow_offset    script 	   _bundled       Script    res://upgrades.gd ��������      local://LabelSettings_ae3ok �         local://PackedScene_n4c40 �         LabelSettings                      PackedScene          	         names "   %   	   Upgrades    custom_minimum_size    offset_right    offset_bottom    Panel    upgrade    layout_mode    offset_left    offset_top    text    horizontal_alignment    autowrap_mode    Label    vertical_alignment    Label2    Label3    Label4    Label5    Label6    VScrollBar    ScrollContainer    VBoxContainer    GridContainer    Probincrease1    visible    script 	   baseCost    Button    Probincrease2    upgradeType    Probincrease3    Probincrease4    Probincrease5    Probincrease6    label_settings    _on_button_pressed    pressed    	   variants    o   
     *C  �B     �C     pC
     C               �?      @    ��C     �A   
   Upgrades:                  HB     �B   .   Current Unicorn Flipper V1 fatality rate: 50% 
     C  �A     �B     �B   .   Current Unicorn Flipper V2 fatality rate: 50%      C   1   Current Unicorns killed on Flipper V1 Success: 1      *C   1   Current Unicorns killed on Flipper V2 Success: 1      +C     IC   $   Current Unicorns killed on click: 1      KC     �C     iC   (   Current success boost after failure: 0% 
    ��C                �C    ��C    @"D
     �C  �C       
    ��C  C                     `A     �C      B      Add thrusters      �B     :C   (   Increases Flipper V1 success rate by 2%      �B     (B    ��C     �B      Cost: 15
dead Unicorns             A     �@    ��C     B      lgnore safety guidelines      �A     �B    ��C   (   Increases Flipper V2 success rate by 2%      �B     B    ��C     �B      Cost: 30
dead Unicorns    <         Wider Flipper      ��     �B     �C     9C   5   Increases Unicorns killed on Flipper V1 success by 1      �B     $B    ��C     �B      Cost: 60
dead Unicorns    d               A     �C      Increased air time     ��C     =C   5   Increases Unicorns killed on Flipper V2 success by 1      C     �C      Cost: 100
dead Unicorns            >C     �@     eC     �A      PETA    3   Increases Unicorns manually flipped at a time by 1      �B     B     �C     �B     A    ��C      Unicorn Flipping Insurance      @@    ��C     DC   H   If a flipper fails, increase probability of next flip succeeding by 10%                 C     �C      node_count    "         nodes     �  ��������       ����                                        ����	                                       	   	   
   
                           ����	                                 	      
   
      
                           ����
                                       	      
   
      
                           ����
                                       	      
   
      
                           ����
                                       	      
   
      
                           ����
                                       	      
   
      
                           ����	                                 	      
   
      
                           ����                               !      "                    ����      #             	             ����      $      %            &      '       
             ����                  (      )      *   	   +   
   
       
             ����                  ,            -   	   .   
   
             
             ����            /      0      1      2   	   3       	             ����      $      %            &      4      
                    ����            5      6      7      8   	   9   
   
                    ����            :      ;      <      -   	   =   
   
                          ����            >      ?      @      A   	   B       	             ����      $      %            &      C                          ����                  (            *   	   D   
   
                    ����            E      F      G      H   	   I   
   
                          ����            J      K      L      M   	   N       	             ����      $      %            &      O      P                    ����            Q      (      R      *   	   S   
   
                    ����            E      ;      T      U   	   V   
   
                          ����            W      K      X      M   	   Y       	              ����      $      %            &      O      Z                    ����            [      \      ]      ^   	   _                    ����            E      F            H   	   `   
   
                          ����            a      b      c      d   	   Y       	          !   ����      $      %            &      4                          ����            6      e      f      b   	   g   
   
                    ����	            h      ;      i      j   	   k   "   l   
   
                          ����            m      0      n      2   	   B             conn_count             conns     *      
   $   #                    $   #                    $   #                    $   #                    $   #              !      $   #                    node_paths              editable_instances              version             RSRC98 ^�extends VBoxContainer

var scene = preload("res://timer.tscn")

func _on_button_pressed():
	add_child(scene.instantiate())
�LFextends Label

@export var prefix: String = "Things: "
@export var things: int = 0
@export var clickMultiplier: int = 1
#@export var prob: float = 0.5
#var rand=RandomNumberGenerator.new()

func _on_button_pressed():
	change_things(clickMultiplier)

func change_things(num: int):
	things += num
	text = prefix + str(things)
�I�f�Tvn�7�extends Timer

@onready var bar = get_node("..")
@onready var flipper = get_node("../../../..")
@onready var mult = get_node("../M")
var multiplier: int = 1
var insured: bool = false

var success = StyleBoxFlat.new()
var failure = StyleBoxFlat.new()
var default = StyleBoxFlat.new()
func _ready():
	success.set_bg_color(Color(0,0.5,0,1))
	failure.set_bg_color(Color(0.5,0,0,1))
	default.set_bg_color(Color(0,0,0,0.5))
	if flipper.multiply:
		mult.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	bar.value = (wait_time - time_left)*bar.max_value/wait_time
	var color = StyleBoxFlat.new()
	color.set_bg_color(bar.get("theme_override_styles/background").get_bg_color().lerp(default.get_bg_color(), delta))
	bar.set("theme_override_styles/background", color)


func _on_timeout():
	if flipper.flip(multiplier, insured):
		bar.set("theme_override_styles/background", success)
		if flipper.multiply:
			multiplier += 1
		insured = false
	else:
		bar.set("theme_override_styles/background", failure)
		multiplier = 1
		if flipper.insurance > 0:
			insured = true
	mult.text = "x" + str(multiplier)
�s�q��n{iRSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script 	   _bundled       Script    res://timer.gd ��������      local://StyleBoxFlat_8orvi q         local://PackedScene_knceh �         StyleBoxFlat                         ?         PackedScene          	         names "         ProgressBar    custom_minimum_size    offset_right    offset_bottom !   theme_override_styles/background    Timer 
   wait_time 
   autostart    script    M    visible    layout_mode    text    horizontal_alignment    vertical_alignment    Label    _on_timeout    timeout    	   variants       
     aC  B     ;C     �A               @@                                   `B     B      x1             node_count             nodes     1   ��������        ����                                              ����                                    	   ����   
               	      
                               conn_count             conns                                     node_paths              editable_instances              version             RSRC*�4mK��XKH7|�nRSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://flipper.gd ��������      local://PackedScene_cglln          PackedScene          	         names "         Unicorn flipper    custom_minimum_size    offset_left    offset_top    offset_right    offset_bottom    script    prefix    Panel    Label    layout_mode    text    Label2    Button    Label3    autowrap_mode    VScrollBar    ScrollContainer    VBoxContainer    _on_button_pressed    pressed    	   variants    #   
     *C  �B     A     �B     gC     nC                Flippers:              LB     �@     (C      B      Unicorn flipper      �B     �B     C     �B      Flippers: 0      �A     B     JC     �B      Cost: 5
dead Unicorns       @     ��     ]C     �?   S   Each flipper flips 1 Unicorn(s) every 3 seconds. If it lands on its head, it dies.             �     C     bC    ��C
     aC  �C            node_count             nodes        ��������       ����                                                          	   	   ����   
               	      
                           	      ����   
                                                      ����   
                                                	      ����   
                                                            ����   
                                                ����      !   
   "             conn_count             conns                                      node_paths              editable_instances              version             RSRC�Yެ]����r</RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://flipper.gd ��������      local://PackedScene_muw10          PackedScene          	         names "         Unicorn flipper V2    offset_left    offset_top    offset_right    offset_bottom    script    prefix 	   baseCost 	   multiply    Panel    Label3    custom_minimum_size    layout_mode    text    autowrap_mode    Label    Label2    Button    VScrollBar    horizontal_scroll_mode    ScrollContainer    VBoxContainer    _on_button_pressed    pressed    	   variants    %         A     TC     VC    ��C                Flipper V2s:              
     4C                @@     Q�     PC     ��   �   Each flipper flips 1 Unicorn(s) every 3 seconds. If it lands on its head, it dies. Every success will increase the yield by another 100%, until it fails, where it will reset back to x1.            �A     �@     .C     �A      Unicorn Flipper V2      DB     �B     !C     �B      Flipper V2s: 0      �A     B     6C     �B      Cost: 20
dead Unicorns      �?     �B     NC    ��C
     aC  �C            node_count             nodes     �   ��������	       ����                                                                   
   ����            	      
                                                   ����      	                                                   ����      	                                                   ����      	                                                   ����      	                   !      "      	                    ����      #      $             conn_count             conns                                      node_paths              editable_instances              version             RSRC�@a��L�.�extends Panel

@export var prefix: String = "Probability: "
@export var baseCost: int = 5
@onready var cost: int = baseCost
@export var count: int = 0
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var flipper1 : Node = get_node("/root/Control/Unicorn flipper")
@onready var flipper2 : Node = get_node("/root/Control/Unicorn flipper V2")
@onready var label1: Node = get_node("../../../Label")
@onready var label2: Node = get_node("../../../Label2")
@onready var label3: Node = get_node("../../../Label3")
@onready var label4: Node = get_node("../../../Label4")
@onready var label5: Node = get_node("../../../Label5")
@onready var label6: Node = get_node("../../../Label6")
@onready var button: Node = get_node("Button")
enum type {PROB1, PROB2, MULTV1, INSUR, MULTV2, MULTC}
@export var upgradeType: type = type.PROB1
var timer = preload("res://timer.tscn")

func _on_button_pressed():
	if unicorns.things >= cost:
		unicorns.change_things(-cost)
		count += 1
		cost = baseCost * pow(1.5, count)
		button.text = "Cost: " + str(cost) + "\ndead Unicorns"
		match upgradeType:
			type.PROB1:
				flipper1.prob += 0.02
				label1.text = "Current Unicorn Flipper V1 fatality rate: " + str(50+count*2) +"%"
			type.PROB2:
				flipper2.prob += 0.02
				label2.text = "Current Unicorn Flipper V2 fatality rate: " + str(50+count*2) +"%"
			type.MULTV1:
				flipper1.flipMultiplier += 1
				label3.text = "Current Unicorns killed on Flipper V1 Success: " + str(1+count)
			type.MULTV2:
				flipper2.flipMultiplier += 1
				label4.text = "Current Unicorns killed on Flipper V2 Success: " + str(1+count)
			type.MULTC:
				unicorns.clickMultiplier += 1
				label5.text = "Current Unicorns killed on click: " + str(1+count)
			type.INSUR:
				flipper2.insurance += .10
				label6.text = "Current success boost on flip failure: " + str(10 * count) + "%"
		visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things >= cost/2:
		visible = true
jo��m�!'�	�0�[remap]

path="res://.godot/exported/133200997/export-e66311c87c39ec8c25379305b5ae724b-control.scn"
D&�ť��Ш�[remap]

path="res://.godot/exported/133200997/export-d0bc7f5d8df845080607a2ffb0973731-green.res"
�K�������f��[remap]

path="res://.godot/exported/133200997/export-42a2dc8dbfd03b805a8e3218c8b555f8-multiplier upgrade.scn"
�[remap]

path="res://.godot/exported/133200997/export-46201db2724ffcb96e28b830ef7a9754-timer.scn"
1�n�1�D7�_r�j�[remap]

path="res://.godot/exported/133200997/export-5f1e7306f3c051fbf9d1310c8807423f-unicorn flipper.scn"
���[remap]

path="res://.godot/exported/133200997/export-bdb73b738f6e353fd584357a224e7e98-unicorn_flipper_v_2.scn"
<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><g transform="translate(32 32)"><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99z" fill="#363d52"/><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99zm0 4h96c6.64 0 12 5.35 12 11.99v95.98c0 6.64-5.35 11.99-12 11.99h-96c-6.64 0-12-5.35-12-11.99v-95.98c0-6.64 5.36-11.99 12-11.99z" fill-opacity=".4"/></g><g stroke-width="9.92746" transform="matrix(.10073078 0 0 .10073078 12.425923 2.256365)"><path d="m0 0s-.325 1.994-.515 1.976l-36.182-3.491c-2.879-.278-5.115-2.574-5.317-5.459l-.994-14.247-27.992-1.997-1.904 12.912c-.424 2.872-2.932 5.037-5.835 5.037h-38.188c-2.902 0-5.41-2.165-5.834-5.037l-1.905-12.912-27.992 1.997-.994 14.247c-.202 2.886-2.438 5.182-5.317 5.46l-36.2 3.49c-.187.018-.324-1.978-.511-1.978l-.049-7.83 30.658-4.944 1.004-14.374c.203-2.91 2.551-5.263 5.463-5.472l38.551-2.75c.146-.01.29-.016.434-.016 2.897 0 5.401 2.166 5.825 5.038l1.959 13.286h28.005l1.959-13.286c.423-2.871 2.93-5.037 5.831-5.037.142 0 .284.005.423.015l38.556 2.75c2.911.209 5.26 2.562 5.463 5.472l1.003 14.374 30.645 4.966z" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 919.24059 771.67186)"/><path d="m0 0v-47.514-6.035-5.492c.108-.001.216-.005.323-.015l36.196-3.49c1.896-.183 3.382-1.709 3.514-3.609l1.116-15.978 31.574-2.253 2.175 14.747c.282 1.912 1.922 3.329 3.856 3.329h38.188c1.933 0 3.573-1.417 3.855-3.329l2.175-14.747 31.575 2.253 1.115 15.978c.133 1.9 1.618 3.425 3.514 3.609l36.182 3.49c.107.01.214.014.322.015v4.711l.015.005v54.325c5.09692 6.4164715 9.92323 13.494208 13.621 19.449-5.651 9.62-12.575 18.217-19.976 26.182-6.864-3.455-13.531-7.369-19.828-11.534-3.151 3.132-6.7 5.694-10.186 8.372-3.425 2.751-7.285 4.768-10.946 7.118 1.09 8.117 1.629 16.108 1.846 24.448-9.446 4.754-19.519 7.906-29.708 10.17-4.068-6.837-7.788-14.241-11.028-21.479-3.842.642-7.702.88-11.567.926v.006c-.027 0-.052-.006-.075-.006-.024 0-.049.006-.073.006v-.006c-3.872-.046-7.729-.284-11.572-.926-3.238 7.238-6.956 14.642-11.03 21.479-10.184-2.264-20.258-5.416-29.703-10.17.216-8.34.755-16.331 1.848-24.448-3.668-2.35-7.523-4.367-10.949-7.118-3.481-2.678-7.036-5.24-10.188-8.372-6.297 4.165-12.962 8.079-19.828 11.534-7.401-7.965-14.321-16.562-19.974-26.182 4.4426579-6.973692 9.2079702-13.9828876 13.621-19.449z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 104.69892 525.90697)"/><path d="m0 0-1.121-16.063c-.135-1.936-1.675-3.477-3.611-3.616l-38.555-2.751c-.094-.007-.188-.01-.281-.01-1.916 0-3.569 1.406-3.852 3.33l-2.211 14.994h-31.459l-2.211-14.994c-.297-2.018-2.101-3.469-4.133-3.32l-38.555 2.751c-1.936.139-3.476 1.68-3.611 3.616l-1.121 16.063-32.547 3.138c.015-3.498.06-7.33.06-8.093 0-34.374 43.605-50.896 97.781-51.086h.066.067c54.176.19 97.766 16.712 97.766 51.086 0 .777.047 4.593.063 8.093z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 784.07144 817.24284)"/><path d="m0 0c0-12.052-9.765-21.815-21.813-21.815-12.042 0-21.81 9.763-21.81 21.815 0 12.044 9.768 21.802 21.81 21.802 12.048 0 21.813-9.758 21.813-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 389.21484 625.67104)"/><path d="m0 0c0-7.994-6.479-14.473-14.479-14.473-7.996 0-14.479 6.479-14.479 14.473s6.483 14.479 14.479 14.479c8 0 14.479-6.485 14.479-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 367.36686 631.05679)"/><path d="m0 0c-3.878 0-7.021 2.858-7.021 6.381v20.081c0 3.52 3.143 6.381 7.021 6.381s7.028-2.861 7.028-6.381v-20.081c0-3.523-3.15-6.381-7.028-6.381" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 511.99336 724.73954)"/><path d="m0 0c0-12.052 9.765-21.815 21.815-21.815 12.041 0 21.808 9.763 21.808 21.815 0 12.044-9.767 21.802-21.808 21.802-12.05 0-21.815-9.758-21.815-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 634.78706 625.67104)"/><path d="m0 0c0-7.994 6.477-14.473 14.471-14.473 8.002 0 14.479 6.479 14.479 14.473s-6.477 14.479-14.479 14.479c-7.994 0-14.471-6.485-14.471-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 656.64056 631.05679)"/></g></svg>
8�   �wND�S�M   res://control.tscnԴ��bw�|   res://green.tres'�>#5   res://icon.svg.�ң:�^   res://multiplier upgrade.tscnF��5�Y�   res://timer.tscnbF C��   res://unicorn flipper.tscn$�9��tI   res://unicorn_flipper_v_2.tscn�EECFG      application/config/name         Horse statistics   application/run/main_scene         res://control.tscn     application/config/features$   "         4.0    Forward Plus       application/config/icon         res://icon.svg  4   rendering/textures/vram_compression/import_etc2_astc         �