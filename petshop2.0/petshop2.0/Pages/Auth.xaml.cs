﻿using System;
using System.Collections.Generic;
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

namespace petshop2._0.Pages
{
    /// <summary>
    /// Логика взаимодействия для Auth.xaml
    /// </summary>
    public partial class Auth : Page
    {
        public Auth()
        {
            InitializeComponent();
        }

        private void button_1_Click(object sender, RoutedEventArgs e)
        {
            Classes.Navigation.ActiveMain.Navigate(new Pages.ListView());
        }

        private void button_3_Click(object sender, RoutedEventArgs e)
        {
            Classes.Navigation.ActiveMain.Navigate(new Pages.ListView());

        }
    }
}
