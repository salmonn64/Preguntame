   M S B A M L   `   `   `  ���� E  APreguntame, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Preguntame
Preguntame      Preguntame.Opciones   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Preguntame       � Title$  Opciones��$	��460��$	��450��$��12(� � 
ResizeMode$ NoResize=� � Icon$ settings.ico��.��� .+��� .@��� -   $��QuestionTab��$��	Preguntas��$
��Left=�$	��Top=�.���  � RowDefinitions �� $
��350* ��� $	��53* � � ColumnDefinitions �� $
��125* ��� $
��313* �.+��� $
��Left=�$	��Top=�$	��435��$��2��.@��� $
��Left=�$	��Top=�.���� $
��Left=�$	��Top=�$	��400��.��Modo de respuesta válida:�� .���� -   $��
OptionName��$��Right=�$	��Top=�.@��� -   $��Right_MarkAll��.��-+se seleccionan todas las opciones correctas�� -   $��Right_MarkOne��.��,*se selecciona almenos una opción correcta�� �� .��� $	��420��.+��� .��!Total de opciones por pregunta.�� -   $��TotalOpt��$��Right=�$��Center=�$��50��$��0,0,20,0q��� �� .��� $	��420��.+��� .��-+Número de opciones correctas por pregunta.�� -   $��OptRight��$��Right=�$��Center=�$��50��$��0,0,20,0q�.���� �� .���� -   $��RandOptRight��.��*(Número aleatorio de opciones correctas.�� �� $
��Left=�$	��Top=�.���� $
��Left=�$	��Top=�$	��400��.��Repetir preguntas:�� .���� -   $��
RepeatMode��$��Right=�$	��Top=�.@��� .��No�� .��'%Sólo las respondidas incorrectamente�� .��'%Todas las preguntas se pueden repetir�� -	   $
��Save��$��20��$��Bottom=�$��Right=�$	��100��$��	0,0,20,20q�$��1��$��1��.��	Guardar�� -
   $��ErrorSaving��$
��Bold"�$	��300��$��Bottom=�$
��Left=�$��WrapWithOverflow=�$��
20,100,0,0q��� $��Selección de temas��.���  �� $	��15* ��� $	��22* ��� $
��401* �.+��� $
��Left=�$	��Top=�$��3��<:Marque los temas de los cuales quiere responder preguntas.�� -   $��ThemeSelection��$
��0,40q�$��3���� -   $��SaveThemesSelection��$	��100��$��20��$��Right=�$��Bottom=�$��	0,0,20,20q�$��2��.��Save