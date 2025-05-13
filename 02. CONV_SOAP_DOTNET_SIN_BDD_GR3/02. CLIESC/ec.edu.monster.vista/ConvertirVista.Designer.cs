namespace _02._CLIESC.ec.edu.monster.vista
{
    partial class ConvertirVista
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ConvertirVista));
            panel1 = new Panel();
            label3 = new Label();
            label2 = new Label();
            label1 = new Label();
            btnConvertir = new Button();
            combDestino = new ComboBox();
            combOrigen = new ComboBox();
            txtConvertir = new TextBox();
            panel1.SuspendLayout();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.BackColor = Color.Transparent;
            panel1.Controls.Add(label3);
            panel1.Controls.Add(label2);
            panel1.Controls.Add(label1);
            panel1.Controls.Add(btnConvertir);
            panel1.Controls.Add(combDestino);
            panel1.Controls.Add(combOrigen);
            panel1.Controls.Add(txtConvertir);
            panel1.Location = new Point(13, 478);
            panel1.Margin = new Padding(4, 3, 4, 3);
            panel1.Name = "panel1";
            panel1.Size = new Size(821, 467);
            panel1.TabIndex = 0;
            panel1.Paint += panel1_Paint;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.BackColor = Color.Transparent;
            label3.Font = new Font("Segoe UI", 16.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label3.ForeColor = Color.DarkSlateGray;
            label3.Location = new Point(251, 331);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(174, 45);
            label3.TabIndex = 6;
            label3.Text = "Resultado";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.BackColor = Color.Transparent;
            label2.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label2.ForeColor = Color.IndianRed;
            label2.Location = new Point(337, 156);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(179, 32);
            label2.TabIndex = 5;
            label2.Text = "Unidad Destino";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BackColor = Color.Transparent;
            label1.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label1.ForeColor = Color.IndianRed;
            label1.Location = new Point(337, 96);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(170, 32);
            label1.TabIndex = 4;
            label1.Text = "Unidad Origen";
            // 
            // btnConvertir
            // 
            btnConvertir.BackColor = Color.Orange;
            btnConvertir.Font = new Font("Segoe UI", 13.8F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnConvertir.ForeColor = Color.GhostWhite;
            btnConvertir.Location = new Point(300, 225);
            btnConvertir.Margin = new Padding(4, 3, 4, 3);
            btnConvertir.Name = "btnConvertir";
            btnConvertir.Size = new Size(433, 67);
            btnConvertir.TabIndex = 3;
            btnConvertir.Text = "Convertir";
            btnConvertir.UseVisualStyleBackColor = false;
            btnConvertir.Click += btnConvertir_Click;
            // 
            // combDestino
            // 
            combDestino.BackColor = SystemColors.ScrollBar;
            combDestino.FlatStyle = FlatStyle.Flat;
            combDestino.ForeColor = SystemColors.Window;
            combDestino.FormattingEnabled = true;
            combDestino.Items.AddRange(new object[] { "Celsius", "Farenheith", "Kelvin" });
            combDestino.Location = new Point(544, 156);
            combDestino.Margin = new Padding(4, 3, 4, 3);
            combDestino.Name = "combDestino";
            combDestino.Size = new Size(188, 33);
            combDestino.TabIndex = 2;
            // 
            // combOrigen
            // 
            combOrigen.BackColor = SystemColors.ScrollBar;
            combOrigen.FlatStyle = FlatStyle.Flat;
            combOrigen.ForeColor = SystemColors.Window;
            combOrigen.FormattingEnabled = true;
            combOrigen.Items.AddRange(new object[] { "Celsius", "Farenheith", "Kelvin" });
            combOrigen.Location = new Point(544, 96);
            combOrigen.Margin = new Padding(4, 3, 4, 3);
            combOrigen.Name = "combOrigen";
            combOrigen.Size = new Size(188, 33);
            combOrigen.TabIndex = 1;
            // 
            // txtConvertir
            // 
            txtConvertir.BackColor = Color.Bisque;
            txtConvertir.Font = new Font("Segoe UI", 18F, FontStyle.Bold, GraphicsUnit.Point, 0);
            txtConvertir.ForeColor = Color.DarkOrchid;
            txtConvertir.Location = new Point(300, 12);
            txtConvertir.Margin = new Padding(4, 3, 4, 3);
            txtConvertir.Multiline = true;
            txtConvertir.Name = "txtConvertir";
            txtConvertir.RightToLeft = RightToLeft.No;
            txtConvertir.Size = new Size(431, 64);
            txtConvertir.TabIndex = 0;
            txtConvertir.TextAlign = HorizontalAlignment.Center;
            txtConvertir.TextChanged += textBox1_TextChanged;
            // 
            // ConvertirVista
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            BackgroundImage = (Image)resources.GetObject("$this.BackgroundImage");
            BackgroundImageLayout = ImageLayout.Stretch;
            ClientSize = new Size(1047, 1050);
            Controls.Add(panel1);
            DoubleBuffered = true;
            Margin = new Padding(4, 3, 4, 3);
            Name = "ConvertirVista";
            Text = "ConvertirVista";
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private TextBox txtConvertir;
        private ComboBox combDestino;
        private ComboBox combOrigen;
        private Button btnConvertir;
        private Label label1;
        private Label label3;
        private Label label2;
    }
}