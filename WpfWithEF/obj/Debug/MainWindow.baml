   M S B A M L   `   `   `  ����D  @WpfWithEF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:WpfWithEF	WpfWithEF  5   �       WpfWithEF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F   )localclr-namespace:WpfWithEF     6�   -   5          � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5         alunosViewSource��%   &	        �� 5   
   6   5      .��5	      �  � DataContext# [  6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ alunosDataGrid��5         RowDetailsVisibilityMode$ VisibleWhenSelected=�6+   $��10,10,10,109q�6Z      EnableRowVirtualization .    AutoGenerateColumns .     CanUserDeleteRows . ��6p   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        iDColumn��,  &System.Windows.Controls.DataGridColumn	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 SizeToHeader 5   7   
   Header$
 ID��6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6X   �� *ID+  5      -   5        idadeColumn��$	 SizeToHeader 5   :   $
 Idade��6O    6^   �� *Idade+  5      -   5        
nomeColumn��$	 SizeToHeader 5   9   $

 Nome��6N    6\   �� *Nome+5      �� 5   
   -   5         ��Name$ 
buttonSave��5      $
��Save��6%   $
��Left=�64   $��
10,215,0,0q�6O   $	��Top=�6c   $��75��6{   6�   5      5      