using MahApps.Metro.Controls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DS3_Arena_Tracker
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : MetroWindow
	{
		public event EventHandler DataChanged;
		private static readonly string FILE_NAME = "data.ds3";
		public DS3Data data;

		public int Wins
		{
			get
			{
				return data.wins;
			}

			set
			{
				data.wins = value;
				OnDataChanged();
			}
		}

		public int Losses
		{
			get
			{
				return data.losses;
			}

			set
			{
				data.losses = value;
				OnDataChanged();
			}
		}

		public double Total
		{
			get
			{
				return Wins + Losses;
			}
		}


		public string WinPercentage
		{
			get
			{
				return Convert.ToString(Math.Round(((double)Wins / (Total)) * 100.0, 2)) + "%";
			}
		}


		public MainWindow()
		{
			InitializeComponent();
			Initialize();
		}

		private void Initialize()
		{
			if (!FileManager.FileExists(FILE_NAME))
			{
				data = new DS3Data();
				Wins = 0;
				Losses = 0;
				WriteData();
			}
			else
			{
				data = FileManager.ReadObjectFile<DS3Data>(FILE_NAME);
			}
			
			WinUpDown.DataContext = this;
			LoseUpDown.DataContext = this;
			WinsLabel.DataContext = this;
			TotalLabel.DataContext = this;

			DataChanged += MainWindow_DataChanged;
		}

		protected virtual void OnDataChanged()
		{
			if (DataChanged != null) DataChanged(this, EventArgs.Empty);
		}

		private void MainWindow_DataChanged(object sender, EventArgs e)
		{
			BindingOperations.GetBindingExpressionBase(WinUpDown,	NumericUpDown.ValueProperty).UpdateTarget();
			BindingOperations.GetBindingExpressionBase(LoseUpDown,	NumericUpDown.ValueProperty).UpdateTarget();
			BindingOperations.GetBindingExpressionBase(WinsLabel,	Label.ContentProperty).UpdateTarget();
			BindingOperations.GetBindingExpressionBase(TotalLabel,	Label.ContentProperty).UpdateTarget();
			WriteData();
		}

		private void WriteData()
		{
			FileManager.WriteObjectFile<DS3Data>(data,FILE_NAME);
		}

		private void WinButton_Click(object sender, RoutedEventArgs e)
		{
			OnDataChanged();
			Wins += 1;
		}

		private void LoseButton_Click(object sender, RoutedEventArgs e)
		{
			OnDataChanged();
			Losses += 1;
		}
	}
}
