   M S B A M L   `   `   `  ����   
TelerikWpf    TelerikWpf.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     k gTelerik.Windows.Controls.Input, Version=2021.2.511.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2021.2.511.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2021.2.511.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.GridView, Version=2021.2.511.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k	 gTelerik.Windows.Controls.Chart, Version=2021.2.511.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Gtelerik1http://schemas.telerik.com/2008/xaml/presentation     	   � Title$  
MainWindow��$	��350��$	��525��.��� .+�0 	 *Telerik.Windows.Controls.RadCartesianChart  -     Name$ chart1��5 	 /Telerik.Windows.Controls.ChartView.RadChartBase   Palette> 	 8Telerik.Windows.Controls.ChartView.ChartPaletteConverter$ Windows8    HorizontalAxis 8 	 2Telerik.Windows.Controls.ChartView.CategoricalAxis     VerticalAxis 3 	 -Telerik.Windows.Controls.ChartView.LinearAxis  6 	 0Telerik.Windows.Controls.ChartView.NumericalAxis   MinimumA 	 ;Telerik.Windows.Controls.Converters.StringToDoubleConverter$	 -10 - 	 'Telerik.Windows.Controls.ChartView.Axis   ElementBrush
 � ���   
LineStroke
 ��  �   SeriesProvider <	 	 6Telerik.Windows.Controls.ChartView.ChartSeriesProvider	  	 	  Source	 �� *
Interfaces+
 	  SeriesDescriptors
 D
 	 >Telerik.Windows.Controls.ChartView.CategoricalSeriesDescriptor
  > 	 8Telerik.Windows.Controls.ChartView.ChartSeriesDescriptor   ItemsSourcePath$ 
DataPoints�� 
  	ValuePath$
 Rate��H 	 BTelerik.Windows.Controls.ChartView.CategoricalSeriesDescriptorBase   CategoryPath$
 Date��   Style ��  �� 
TargetType3 	 -Telerik.Windows.Controls.ChartView.LineSeries"  