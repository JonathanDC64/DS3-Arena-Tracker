   M S B A M L   `   `   `  ����L  HDS3-Arena-Tracker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:DS3_Arena_TrackerDS3_Arena_Tracker  5   	   T PMahApps.Metro, Version=1.3.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5	   	   "    DS3_Arena_Tracker.MainWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:DS3_Arena_Tracker     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5	   	     � Title$   Dark Souls 3 Arena Tracker��5   	   $	��168��6,   $	��317��69   ���	#FF2E2B2B$��0q�5
   	   (  "MahApps.Metro.Controls.MetroWindow   	GlowBrush
 �   � � 
ResizeMode$ NoResize=�5   	      WindowTransitionsEnabled .   � WindowStartupLocation$ CenterScreen=�5   	   .��5      � $��10q�6    J� RenderTransformOrigin$ 0.5,0.5&�6    � ColumnDefinitions 5   
   �� 5      $
��303* �6   �� 5      $
��304* �6   .+�5   
   �� -   5         ��Name$ 	WinButton��5      $	��Win��6$   $��	10,0,6,10q�62   $��Bottom=�6E   $��30��6`      SquareButtonStyle#��[  6l   6�   �� 5   
   -   5        $ 
LoseButton��5      $
��Lose��6%   $��	7,0,10,10q�64   $��30��6G   $��Bottom=�6S   #���   6n   $��1��6�   6�   *  $MahApps.Metro.Controls.NumericUpDown  5   
   -   5          Name$ 	WinUpDown��5   !   $��	10,0,6,45q�64   $��30��6G   $��Bottom=�6S   	   Minimum$	 0Q�6�   
   Value
 6p   �� *Wins+ �� Mode$ TwoWay=�6�     5   
   -   5        $ 
LoseUpDown��5   !   $��	7,0,10,45q�65   $��30��6H   $��Bottom=�6T   $��1��6�   $	 0Q�6�   
 6p   �� *Losses+$ TwoWay=�6�   �� 5   
   -   5         ��Name$ label��5      $��Win% ��6   $��	10,10,0,0q�6/   $	��Top=�6B   $
��Left=�6Z   $��57��6u   �� 5   
   -   5        $ label1��5      $��Total Matches��6    $��1��68   $
��Left=�6H   $��	10,10,0,0q�6c   $	��Top=�6v   �� 5   
   -   5        $ 	WinsLabel��5      $
��Left=�6E   $��	57,10,0,0q�6`   $	��Top=�6s   ��6#   �� *WinPercentage+6s   �� 5   
   -   5        $ 
TotalLabel��5      $��1��6>   $
��Left=�6N   $��	98,10,0,0q�6i   $	��Top=�6|   ��6$   �� *Total+6|   5      5      