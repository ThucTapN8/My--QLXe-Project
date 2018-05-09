namespace QLBDX.GUI
{
    partial class frmThongkeXeVao
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtThongkeNgay = new System.Windows.Forms.TextBox();
            this.txtThongkeLoaive = new System.Windows.Forms.TextBox();
            this.btnThongKeXeVao = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(44, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Ngày";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(277, 13);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(71, 20);
            this.label2.TabIndex = 1;
            this.label2.Text = "Loại Vé ";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // txtThongkeNgay
            // 
            this.txtThongkeNgay.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtThongkeNgay.Location = new System.Drawing.Point(25, 59);
            this.txtThongkeNgay.Name = "txtThongkeNgay";
            this.txtThongkeNgay.Size = new System.Drawing.Size(137, 27);
            this.txtThongkeNgay.TabIndex = 2;
            // 
            // txtThongkeLoaive
            // 
            this.txtThongkeLoaive.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtThongkeLoaive.Location = new System.Drawing.Point(268, 59);
            this.txtThongkeLoaive.Name = "txtThongkeLoaive";
            this.txtThongkeLoaive.Size = new System.Drawing.Size(126, 27);
            this.txtThongkeLoaive.TabIndex = 3;
            // 
            // btnThongKeXeVao
            // 
            this.btnThongKeXeVao.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThongKeXeVao.Location = new System.Drawing.Point(154, 155);
            this.btnThongKeXeVao.Name = "btnThongKeXeVao";
            this.btnThongKeXeVao.Size = new System.Drawing.Size(150, 34);
            this.btnThongKeXeVao.TabIndex = 4;
            this.btnThongKeXeVao.Text = "Thống Kê";
            this.btnThongKeXeVao.UseVisualStyleBackColor = true;
            // 
            // frmThongkeXeVao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PowderBlue;
            this.ClientSize = new System.Drawing.Size(484, 253);
            this.Controls.Add(this.btnThongKeXeVao);
            this.Controls.Add(this.txtThongkeLoaive);
            this.Controls.Add(this.txtThongkeNgay);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "frmThongkeXeVao";
            this.Text = "Thống Kê Xe Vào ";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtThongkeNgay;
        private System.Windows.Forms.TextBox txtThongkeLoaive;
        private System.Windows.Forms.Button btnThongKeXeVao;
    }
}