   M S B A M L   `   `   `  ����E  APreguntame, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Preguntame
Preguntame  5   	       Preguntame.Opciones   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Preguntame     5   	     � Title$  Opciones��5   	   $	��460��6   $	��450��6'   $��12(�63    � 
ResizeMode$ NoResize=�6A    � Icon$ settings.ico��6W   .��5	      � .+�5
   
   �� .@�5      �� -   5        $��QuestionTab��5      $��	Preguntas��6)   $
��Left=�6<   $	��Top=�6W   .��5      �  � RowDefinitions 5      �� 5      $
��350* �6(   �� 5      $	��53* �6(    � ColumnDefinitions 5      �� 5      $
��125* �6+   �� 5      $
��313* �6+   .+�5      �� $
��Left=�6   $	��Top=�69   $	��435��6Q   $��2��6]   .@�5      �� $
��Left=�6&   $	��Top=�6A   .��5      �� $
��Left=�6$   $	��Top=�6?   $	��400��6W   .��6c   Modo de respuesta válida:5      5      �� 5      .��5      �� -   5        $��
OptionName��5   '   $��Right=�69   $	��Top=�6U   .@�5   "   �� -   5        $��Right_MarkAll��5   0   .��6E   -+se seleccionan todas las opciones correctas6r   �� 5   "   -   5        $��Right_MarkOne��5   /   .��6D   ,*se selecciona almenos una opción correcta6o   5      5       �� 5!      6&   �� 5"      .��5#      � $	��420��6#   .+�5$   "   �� .��6(   !Total de opciones por pregunta.6I   �� 5%   "   -   5        $��TotalOpt��5%   *   $��Right=�6:   $��Center=�6V   $��50��6q   $��0,0,20,0q�6|   6�   5&      5'      �� 5(      6&   �� 5)      .��5*      � $	��420��6#   .+�5+   "   �� .��6(   -+Número de opciones correctas por pregunta.6T   �� 5,   "   -   5        $��OptRight��5,   *   $��Right=�6:   $��Center=�6V   $��50��6q   $��0,0,20,0q�6|   .��6�   5-   #   5.      5/      �� 50      6&   �� 51      .��52      �� -   5        $��RandOptRight��52   '   .��6   *(Número aleatorio de opciones correctas.6�   53      �� 54      6&   �� 55      $
��Left=�6&   $	��Top=�6A   .��56      �� $
��Left=�6$   $	��Top=�6?   $	��400��6W   .��6c   Repetir preguntas:58      59      �� 5:      .��5;      �� -   5        $��
RepeatMode��5;   '   $��Right=�6:   $	��Top=�6V   .@�5<   "   �� .��6/   No63   �� 5=   "   .��6/   '%Sólo las respondidas incorrectamente6U   �� 5>   "   .��6/   '%Todas las preguntas se pueden repetir6V   5?      5@      5B      �� 5C      -	   5        $
��Save��5C      $��20��6)   $��Bottom=�65   $��Right=�6P   $	��100��6l   $��	0,0,20,20q�6x   $��1��6�   $��1��6�   .��6�   	Guardar6�   �� 5D      -
   5        $��ErrorSaving��5D       $
��Bold"�63   $	��300��6F   $��Bottom=�6U   $
��Left=�6p   $��WrapWithOverflow=�6�   $��
20,100,0,0q�5E      6-   5F      5G      �� 5H      $��Selección de temas��6   .��5I      �  5J      �� 5K      $	��15* �6+   �� 5L      $	��22* �6+   �� 5M      $
��401* �6+   .+�5O      �� $
��Left=�6    $	��Top=�6;   $��3��6S   <:Marque los temas de los cuales quiere responder preguntas.6�   �� 5P      -   5        $��ThemeSelection��5P   !   $
��0,40q�67   $��3��6E   5Q      �� 5R      -   5        $��SaveThemesSelection��5R      $	��100��68   $��20��6D   $��Right=�6P   $��Bottom=�6l   $��	0,0,20,20q�6�   $��2��6�   .��6�   Save6�   5S      5U      5V      5X      5Y      