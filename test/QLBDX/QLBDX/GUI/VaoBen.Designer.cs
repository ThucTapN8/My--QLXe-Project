namespace QLBDX.GUI
{
    partial class VaoBen
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
            this.txtMaVaoBen = new System.Windows.Forms.TextBox();
            this.txtNgayVao = new System.Windows.Forms.TextBox();
            this.txtGioVao = new System.Windows.Forms.TextBox();
            this.txtbiensoxe = new System.Windows.Forms.TextBox();
            this.txtLoaixe = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btnThem = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.txtTimkiem = new System.Windows.Forms.TextBox();
            this.btnTìmkiem = new System.Windows.Forms.Button();
            this.dataGridViewVaoBen = new System.Windows.Forms.DataGridView();
            this.idNhanxe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ngayvao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.giovao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.biensoxe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.loaixe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewVaoBen)).BeginInit();
            this.SuspendLayout();
            // 
            // txtMaVaoBen
            // 
            this.txtMaVaoBen.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaVaoBen.Location = new System.Drawing.Point(133, 27);
            this.txtMaVaoBen.Name = "txtMaVaoBen";
            this.txtMaVaoBen.Size = new System.Drawing.Size(134, 27);
            this.txtMaVaoBen.TabIndex = 0;
            // 
            // txtNgayVao
            // 
            this.txtNgayVao.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNgayVao.Location = new System.Drawing.Point(133, 85);
            this.txtNgayVao.Name = "txtNgayVao";
            this.txtNgayVao.Size = new System.Drawing.Size(134, 27);
            this.txtNgayVao.TabIndex = 1;
            // 
            // txtGioVao
            // 
            this.txtGioVao.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtGioVao.Location = new System.Drawing.Point(133, 151);
            this.txtGioVao.Name = "txtGioVao";
            this.txtGioVao.Size = new System.Drawing.Size(134, 27);
            this.txtGioVao.TabIndex = 2;
            // 
            // txtbiensoxe
            // 
            this.txtbiensoxe.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtbiensoxe.Location = new System.Drawing.Point(133, 219);
            this.txtbiensoxe.Name = "txtbiensoxe";
            this.txtbiensoxe.Size = new System.Drawing.Size(134, 27);
            this.txtbiensoxe.TabIndex = 3;
            // 
            // txtLoaixe
            // 
            this.txtLoaixe.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtLoaixe.Location = new System.Drawing.Point(133, 293);
            this.txtLoaixe.Name = "txtLoaixe";
            this.txtLoaixe.Size = new System.Drawing.Size(134, 27);
            this.txtLoaixe.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(26, 34);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(101, 20);
            this.label1.TabIndex = 5;
            this.label1.Text = "Mã Vào Bến";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(26, 92);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(81, 20);
            this.label2.TabIndex = 6;
            this.label2.Text = "Ngày Vào";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(26, 158);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(69, 20);
            this.label3.TabIndex = 7;
            this.label3.Text = "Giờ Vào";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(26, 219);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(93, 20);
            this.label4.TabIndex = 8;
            this.label4.Text = "Biển Số Xe";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(29, 300);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(66, 20);
            this.label5.TabIndex = 9;
            this.label5.Text = "Loại Xe";
            // 
            // btnThem
            // 
            this.btnThem.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThem.Location = new System.Drawing.Point(339, 27);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(90, 34);
            this.btnThem.TabIndex = 10;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            // 
            // btnSua
            // 
            this.btnSua.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSua.Location = new System.Drawing.Point(475, 30);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(75, 31);
            this.btnSua.TabIndex = 11;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = true;
            // 
            // btnXoa
            // 
            this.btnXoa.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoa.Location = new System.Drawing.Point(591, 29);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 31);
            this.btnXoa.TabIndex = 12;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            // 
            // txtTimkiem
            // 
            this.txtTimkiem.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTimkiem.Location = new System.Drawing.Point(755, 34);
            this.txtTimkiem.Name = "txtTimkiem";
            this.txtTimkiem.Size = new System.Drawing.Size(245, 27);
            this.txtTimkiem.TabIndex = 13;
            // 
            // btnTìmkiem
            // 
            this.btnTìmkiem.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTìmkiem.Location = new System.Drawing.Point(807, 92);
            this.btnTìmkiem.Name = "btnTìmkiem";
            this.btnTìmkiem.Size = new System.Drawing.Size(120, 42);
            this.btnTìmkiem.TabIndex = 14;
            this.btnTìmkiem.Text = "Tìm kiếm";
            this.btnTìmkiem.UseVisualStyleBackColor = true;
            // 
            // dataGridViewVaoBen
            // 
            this.dataGridViewVaoBen.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewVaoBen.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idNhanxe,
            this.ngayvao,
            this.giovao,
            this.biensoxe,
            this.loaixe});
            this.dataGridViewVaoBen.Location = new System.Drawing.Point(339, 151);
            this.dataGridViewVaoBen.Name = "dataGridViewVaoBen";
            this.dataGridViewVaoBen.RowTemplate.Height = 24;
            this.dataGridViewVaoBen.Size = new System.Drawing.Size(543, 269);
            this.dataGridViewVaoBen.TabIndex = 15;
            this.dataGridViewVaoBen.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // idNhanxe
            // 
            this.idNhanxe.HeaderText = "Mã Xe Vào";
            this.idNhanxe.Name = "idNhanxe";
            // 
            // ngayvao
            // 
            this.ngayvao.HeaderText = "Ngày Vào";
            this.ngayvao.Name = "ngayvao";
            // 
            // giovao
            // 
            this.giovao.HeaderText = "Giờ Vào";
            this.giovao.Name = "giovao";
            // 
            // biensoxe
            // 
            this.biensoxe.HeaderText = "Biển Số Xe";
            this.biensoxe.Name = "biensoxe";
            // 
            // loaixe
            // 
            this.loaixe.HeaderText = "Loại Xe";
            this.loaixe.Name = "loaixe";
            // 
            // VaoBen
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1055, 453);
            this.Controls.Add(this.dataGridViewVaoBen);
            this.Controls.Add(this.btnTìmkiem);
            this.Controls.Add(this.txtTimkiem);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.btnSua);
            this.Controls.Add(this.btnThem);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtLoaixe);
            this.Controls.Add(this.txtbiensoxe);
            this.Controls.Add(this.txtGioVao);
            this.Controls.Add(this.txtNgayVao);
            this.Controls.Add(this.txtMaVaoBen);
            this.Name = "VaoBen";
            this.Text = "Quản Lý Xe Vào Bến";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewVaoBen)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtMaVaoBen;
        private System.Windows.Forms.TextBox txtNgayVao;
        private System.Windows.Forms.TextBox txtGioVao;
        private System.Windows.Forms.TextBox txtbiensoxe;
        private System.Windows.Forms.TextBox txtLoaixe;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.TextBox txtTimkiem;
        private System.Windows.Forms.Button btnTìmkiem;
        private System.Windows.Forms.DataGridView dataGridViewVaoBen;
        private System.Windows.Forms.DataGridViewTextBoxColumn idNhanxe;
        private System.Windows.Forms.DataGridViewTextBoxColumn ngayvao;
        private System.Windows.Forms.DataGridViewTextBoxColumn giovao;
        private System.Windows.Forms.DataGridViewTextBoxColumn biensoxe;
        private System.Windows.Forms.DataGridViewTextBoxColumn loaixe;
    }
}