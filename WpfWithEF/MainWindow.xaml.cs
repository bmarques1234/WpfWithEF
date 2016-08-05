using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
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

namespace WpfWithEF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private TesteEntities _context = new TesteEntities();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource alunosViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("alunosViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // alunosViewSource.Source = [generic data source]
            _context.Alunos.Load();
            alunosViewSource.Source = _context.Alunos.Local; 
        }

        private void buttonSave_Click(object sender, RoutedEventArgs e)
        {
            foreach (var aluno in _context.Alunos.Local.ToList())
            {
                if (aluno.ID == null)
                {
                    _context.Alunos.Remove(aluno);
                }
            }

            _context.SaveChanges();
            // Refresh the grids so the database generated values show up. 
            this.alunosDataGrid.Items.Refresh();
        }
    }
}
