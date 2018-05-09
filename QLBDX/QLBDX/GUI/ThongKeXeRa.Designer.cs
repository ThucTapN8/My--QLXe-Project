namespace QLBDX.GUI
{
    partial class frmTKXeRa
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
            this.txtXeRaTheoNgay = new System.Windows.Forms.TextBox();
            this.txtXeRaTheoVe = new System.Windows.Forms.TextBox();
            this.btnThongKeXeRa = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(70, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Ngày";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(271, 25);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "Loại Vé";
            // 
            // txtXeRaTheoNgay
            // 
            this.txtXeRaTheoNgay.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtXeRaTheoNgay.Location = new System.Drawing.Point(46, 77);
            this.txtXeRaTheoNgay.Name = "txtXeRaTheoNgay";
            this.txtXeRaTheoNgay.Size = new System.Drawing.Size(122, 27);
            this.txtXeRaTheoNgay.TabIndex = 2;
            // 
            // txtXeRaTheoVe
            // 
            this.txtXeRaTheoVe.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtXeRaTheoVe.Location = new System.Drawing.Point(248, 76);
            this.txtXeRaTheoVe.Name = "txtXeRaTheoVe";
            this.txtXeRaTheoVe.Size = new System.Drawing.Size(115, 27);
            this.txtXeRaTheoVe.TabIndex = 3;
            // 
            // btnThongKeXeRa
            // 
            this.btnThongKeXeRa.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThongKeXeRa.Location = new System.Drawing.Point(143, 166);
            this.btnThongKeXeRa.Name = "btnThongKeXeRa";
            this.btnThongKeXeRa.Size = new System.Drawing.Size(138, 34);
            this.btnThongKeXeRa.TabIndex = 4;
            this.btnThongKeXeRa.Text = "Thống Kê";
            this.btnThongKeXeRa.UseVisualStyleBackColor = true;
            // 
            // frmTKXeRa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(447, 253);
            this.Controls.Add(this.btnThongKeXeRa);
            this.Controls.Add(this.txtXeRaTheoVe);
            this.Controls.Add(this.txtXeRaTheoNgay);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "frmTKXeRa";
            this.Text = "ThongKeXeRa";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtXeRaTheoNgay;
        private System.Windows.Forms.TextBox txtXeRaTheoVe;
        private System.Windows.Forms.Button btnThongKeXeRa;
    }
}