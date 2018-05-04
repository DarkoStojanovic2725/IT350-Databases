#pragma once

namespace IT350_Projekat {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;
	using namespace MySql::Data::MySqlClient;

	/// <summary>
	/// Summary for MyForm
	/// </summary>
	public ref class MyForm : public System::Windows::Forms::Form
	{
	public:
		MyForm(void)
		{
			InitializeComponent();
			//
			//TODO: Add the constructor code here
			//
		}

	protected:
		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		~MyForm()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::Button^  btUpit1;
	protected:

	protected:

	protected:






	private: System::Windows::Forms::DataGridView^  dataGridView1;
	private: System::Windows::Forms::Button^  btUpit2;
	private: System::Windows::Forms::Button^  btUpit3;
	private: System::Windows::Forms::Button^  btUpit4;
	private: System::Windows::Forms::Button^  btUpit5;
	private: System::Windows::Forms::Button^  btUpit6;
	private: System::Windows::Forms::Button^  btUpit7;
	private: System::Windows::Forms::Button^  button1;
	private: System::Windows::Forms::Button^  button2;
	private: System::Windows::Forms::Button^  button3;
	private: System::Windows::Forms::GroupBox^  groupBox1;
	private: System::Windows::Forms::GroupBox^  groupBox2;














	private:
		/// <summary>
		/// Required designer variable.
		/// </summary>
		System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		void InitializeComponent(void)
		{
			this->btUpit1 = (gcnew System::Windows::Forms::Button());
			this->dataGridView1 = (gcnew System::Windows::Forms::DataGridView());
			this->btUpit2 = (gcnew System::Windows::Forms::Button());
			this->btUpit3 = (gcnew System::Windows::Forms::Button());
			this->btUpit4 = (gcnew System::Windows::Forms::Button());
			this->btUpit5 = (gcnew System::Windows::Forms::Button());
			this->btUpit6 = (gcnew System::Windows::Forms::Button());
			this->btUpit7 = (gcnew System::Windows::Forms::Button());
			this->button1 = (gcnew System::Windows::Forms::Button());
			this->button2 = (gcnew System::Windows::Forms::Button());
			this->button3 = (gcnew System::Windows::Forms::Button());
			this->groupBox1 = (gcnew System::Windows::Forms::GroupBox());
			this->groupBox2 = (gcnew System::Windows::Forms::GroupBox());
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->BeginInit();
			this->groupBox1->SuspendLayout();
			this->groupBox2->SuspendLayout();
			this->SuspendLayout();
			// 
			// btUpit1
			// 
			this->btUpit1->Location = System::Drawing::Point(15, 29);
			this->btUpit1->Name = L"btUpit1";
			this->btUpit1->Size = System::Drawing::Size(115, 54);
			this->btUpit1->TabIndex = 0;
			this->btUpit1->Text = L"Upit1";
			this->btUpit1->UseVisualStyleBackColor = true;
			this->btUpit1->Click += gcnew System::EventHandler(this, &MyForm::button1_Click);
			// 
			// dataGridView1
			// 
			this->dataGridView1->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->dataGridView1->Location = System::Drawing::Point(12, 225);
			this->dataGridView1->Name = L"dataGridView1";
			this->dataGridView1->Size = System::Drawing::Size(661, 315);
			this->dataGridView1->TabIndex = 7;
			// 
			// btUpit2
			// 
			this->btUpit2->Location = System::Drawing::Point(145, 29);
			this->btUpit2->Name = L"btUpit2";
			this->btUpit2->Size = System::Drawing::Size(114, 54);
			this->btUpit2->TabIndex = 8;
			this->btUpit2->Text = L"Upit2";
			this->btUpit2->UseVisualStyleBackColor = true;
			this->btUpit2->Click += gcnew System::EventHandler(this, &MyForm::button2_Click_1);
			// 
			// btUpit3
			// 
			this->btUpit3->Location = System::Drawing::Point(274, 29);
			this->btUpit3->Name = L"btUpit3";
			this->btUpit3->Size = System::Drawing::Size(114, 54);
			this->btUpit3->TabIndex = 9;
			this->btUpit3->Text = L"Upit3";
			this->btUpit3->UseVisualStyleBackColor = true;
			this->btUpit3->Click += gcnew System::EventHandler(this, &MyForm::btUpit3_Click);
			// 
			// btUpit4
			// 
			this->btUpit4->Location = System::Drawing::Point(15, 112);
			this->btUpit4->Name = L"btUpit4";
			this->btUpit4->Size = System::Drawing::Size(115, 54);
			this->btUpit4->TabIndex = 10;
			this->btUpit4->Text = L"Upit4";
			this->btUpit4->UseVisualStyleBackColor = true;
			this->btUpit4->Click += gcnew System::EventHandler(this, &MyForm::btUpit4_Click);
			// 
			// btUpit5
			// 
			this->btUpit5->Location = System::Drawing::Point(145, 112);
			this->btUpit5->Name = L"btUpit5";
			this->btUpit5->Size = System::Drawing::Size(114, 54);
			this->btUpit5->TabIndex = 11;
			this->btUpit5->Text = L"Upit5";
			this->btUpit5->UseVisualStyleBackColor = true;
			this->btUpit5->Click += gcnew System::EventHandler(this, &MyForm::btUpit5_Click);
			// 
			// btUpit6
			// 
			this->btUpit6->Location = System::Drawing::Point(274, 112);
			this->btUpit6->Name = L"btUpit6";
			this->btUpit6->Size = System::Drawing::Size(116, 54);
			this->btUpit6->TabIndex = 12;
			this->btUpit6->Text = L"Upit6";
			this->btUpit6->UseVisualStyleBackColor = true;
			this->btUpit6->Click += gcnew System::EventHandler(this, &MyForm::btUpit6_Click);
			// 
			// btUpit7
			// 
			this->btUpit7->Location = System::Drawing::Point(403, 31);
			this->btUpit7->Name = L"btUpit7";
			this->btUpit7->Size = System::Drawing::Size(114, 54);
			this->btUpit7->TabIndex = 13;
			this->btUpit7->Text = L"Upit7";
			this->btUpit7->UseVisualStyleBackColor = true;
			this->btUpit7->Click += gcnew System::EventHandler(this, &MyForm::btUpit7_Click);
			// 
			// button1
			// 
			this->button1->Location = System::Drawing::Point(9, 31);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(116, 23);
			this->button1->TabIndex = 14;
			this->button1->Text = L"Lista biblioteka";
			this->button1->UseVisualStyleBackColor = true;
			this->button1->Click += gcnew System::EventHandler(this, &MyForm::button1_Click_1);
			// 
			// button2
			// 
			this->button2->Location = System::Drawing::Point(9, 128);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(116, 23);
			this->button2->TabIndex = 15;
			this->button2->Text = L"Lista knjiga";
			this->button2->UseVisualStyleBackColor = true;
			this->button2->Click += gcnew System::EventHandler(this, &MyForm::button2_Click_2);
			// 
			// button3
			// 
			this->button3->Location = System::Drawing::Point(9, 79);
			this->button3->Name = L"button3";
			this->button3->Size = System::Drawing::Size(116, 23);
			this->button3->TabIndex = 16;
			this->button3->Text = L"Lista korisnika";
			this->button3->UseVisualStyleBackColor = true;
			this->button3->Click += gcnew System::EventHandler(this, &MyForm::button3_Click);
			// 
			// groupBox1
			// 
			this->groupBox1->Controls->Add(this->btUpit3);
			this->groupBox1->Controls->Add(this->btUpit7);
			this->groupBox1->Controls->Add(this->btUpit6);
			this->groupBox1->Controls->Add(this->btUpit5);
			this->groupBox1->Controls->Add(this->btUpit2);
			this->groupBox1->Controls->Add(this->btUpit4);
			this->groupBox1->Controls->Add(this->btUpit1);
			this->groupBox1->Location = System::Drawing::Point(12, 27);
			this->groupBox1->Name = L"groupBox1";
			this->groupBox1->Size = System::Drawing::Size(523, 176);
			this->groupBox1->TabIndex = 17;
			this->groupBox1->TabStop = false;
			this->groupBox1->Text = L"Upiti";
			this->groupBox1->Enter += gcnew System::EventHandler(this, &MyForm::groupBox1_Enter);
			// 
			// groupBox2
			// 
			this->groupBox2->Controls->Add(this->button2);
			this->groupBox2->Controls->Add(this->button3);
			this->groupBox2->Controls->Add(this->button1);
			this->groupBox2->Location = System::Drawing::Point(541, 27);
			this->groupBox2->Name = L"groupBox2";
			this->groupBox2->Size = System::Drawing::Size(131, 175);
			this->groupBox2->TabIndex = 18;
			this->groupBox2->TabStop = false;
			this->groupBox2->Text = L"Prikaz tabela";
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(685, 552);
			this->Controls->Add(this->dataGridView1);
			this->Controls->Add(this->groupBox1);
			this->Controls->Add(this->groupBox2);
			this->Name = L"MyForm";
			this->Text = L"IT350-Biblioteka";
			this->Load += gcnew System::EventHandler(this, &MyForm::MyForm_Load);
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->EndInit();
			this->groupBox1->ResumeLayout(false);
			this->groupBox2->ResumeLayout(false);
			this->ResumeLayout(false);

		}
#pragma endregion
	private: System::Void MyForm_Load(System::Object^  sender, System::EventArgs^  e) {


	}
	private: System::Void button1_Click(System::Object^  sender, System::EventArgs^  e) {
		String^ constring = L"datasource=localhost;port=3306;database=it350-projekat;username=root;password=";
		MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
		MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
			"SELECT biblioteka.NAZIVBIBLIOTEKA, opstina.NAZIVOPSTINA,\n"
			"COUNT(DISTINCT radni_odnos.IDRADNOGODNOSA) AS BrojZaposlenih,\n"
			"COUNT(DISTINCT primerak.IDPRIMERAK) AS BrojKnjiga\n"
			"FROM biblioteka, radni_odnos, primerak, opstina\n"
			"WHERE biblioteka.IDBIBLIOTEKA = radni_odnos.IDBIBLIOTEKA\n"
			"AND biblioteka.IDBIBLIOTEKA = primerak.IDBIBLIOTEKA\n"
			"AND biblioteka.IDOPSTINA = opstina.IDOPSTINA\n"
			"GROUP BY biblioteka.IDBIBLIOTEKA", conDataBase);
		MySqlDataReader^ myReader;
		
		try {
			MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
			sda->SelectCommand = cmdDataBase;
			DataTable^ dbdataset = gcnew DataTable();
			sda->Fill(dbdataset);
			BindingSource^ bSource = gcnew BindingSource();
			conDataBase->Open();

			bSource->DataSource = dbdataset;
			dataGridView1->DataSource = bSource;
			sda->Update(dbdataset);
			myReader = cmdDataBase->ExecuteReader();

		}
		catch (Exception^ex) {
			MessageBox::Show(ex->Message);
		}



	}
private: System::Void button2_Click(System::Object^  sender, System::EventArgs^  e) {

}
private: System::Void button2_Click_1(System::Object^  sender, System::EventArgs^  e) {

	String^ constring = L"datasource=localhost;database=biblioteka;port=3306;username=root;password=MyNewPass";
	MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
	MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
		"SELECT autorstvo.IDAUTOR, COUNT(*) as BrojKnjiga\n"
		"FROM autorstvo, knjiga\n"
		"WHERE autorstvo.ISBN = knjiga.ISBN\n"
		"AND knjiga.GODINAIZDANJAKNJIGA > 2000\n"
		"AND knjiga.GODINAIZDANJAKNJIGA <= 2017\n"
		"GROUP BY autorstvo.IDAUTOR\n"
		"HAVING BrojKnjiga > 10", conDataBase);

	MySqlDataReader^ myReader;

	try {
		MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
		sda->SelectCommand = cmdDataBase;
		DataTable^ dbdataset = gcnew DataTable();
		sda->Fill(dbdataset);
		BindingSource^ bSource = gcnew BindingSource();
		conDataBase->Open();

		bSource->DataSource = dbdataset;
		dataGridView1->DataSource = bSource;
		sda->Update(dbdataset);
		myReader = cmdDataBase->ExecuteReader();

	}
	catch (Exception^ex) {
		MessageBox::Show(ex->Message);
	}
}

private: System::Void btUpit3_Click(System::Object^  sender, System::EventArgs^  e) {
	String^ constring = L"datasource=localhost;port=3306;database=biblioteka;username=root;password=MyNewPass";
	MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
	MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
		"SELECT biblioteka.IMEULICEBIBLIOTEKE, biblioteka.BROJZGRADEBIBLIOTEKA,\n"
		"COUNT(primerak.IDAUTORSTVO) AS BrojKnjiga\n"
		"FROM autorstvo, primerak, biblioteka\n"
		"WHERE autorstvo.IDAUTOR = 1\n"
		"AND autorstvo.IDAUTORSTVO = primerak.IDAUTORSTVO\n"
		"AND biblioteka.IDBIBLIOTEKA = primerak.IDBIBLIOTEKA\n"
		"GROUP BY biblioteka.IMEULICEBIBLIOTEKE\n"
		"HAVING BrojKnjiga >= 5", conDataBase);
	MySqlDataReader^ myReader;

	try {
		MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
		sda->SelectCommand = cmdDataBase;
		DataTable^ dbdataset = gcnew DataTable();
		sda->Fill(dbdataset);
		BindingSource^ bSource = gcnew BindingSource();
		conDataBase->Open();

		bSource->DataSource = dbdataset;
		dataGridView1->DataSource = bSource;
		sda->Update(dbdataset);
		myReader = cmdDataBase->ExecuteReader();

	}
	catch (Exception^ex) {
		MessageBox::Show(ex->Message);
	}




}

private: System::Void btUpit4_Click(System::Object^  sender, System::EventArgs^  e) {
	String^ constring = L"datasource=localhost;port=3306;database=biblioteka;username=root;password=MyNewPass";
	MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
	MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
		"SELECT biblioteka.IDBIBLIOTEKA,\n"
		"SUM(evidencijaiznajmljivanja.IDSTANJA = 1) AS BrojIznajmljenih,\n"
		"SUM(evidencijaiznajmljivanja.IDSTANJA = 2) AS BrojVracenih\n"
		"FROM evidencijaiznajmljivanja, biblioteka, primerak, stanjeiznajmljivanja\n"
		"WHERE evidencijaiznajmljivanja.IDPRIMERAK = primerak.IDPRIMERAK\n"
		"AND biblioteka.IDBIBLIOTEKA = primerak.IDBIBLIOTEKA\n"
		"AND evidencijaiznajmljivanja.IDSTANJA = stanjeiznajmljivanja.IDSTANJA\n"
		"GROUP BY biblioteka.IDBIBLIOTEKA", conDataBase);
	MySqlDataReader^ myReader;

	try {
		MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
		sda->SelectCommand = cmdDataBase;
		DataTable^ dbdataset = gcnew DataTable();
		sda->Fill(dbdataset);
		BindingSource^ bSource = gcnew BindingSource();
		conDataBase->Open();

		bSource->DataSource = dbdataset;
		dataGridView1->DataSource = bSource;
		sda->Update(dbdataset);
		myReader = cmdDataBase->ExecuteReader();

	}
	catch (Exception^ex) {
		MessageBox::Show(ex->Message);
	}




}

private: System::Void btUpit5_Click(System::Object^  sender, System::EventArgs^  e) {
	String^ constring = L"datasource=localhost;port=3306;database=biblioteka;username=root;password=MyNewPass";
	MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
	MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
		"SELECT biblioteka.IMEULICEBIBLIOTEKE, biblioteka.BROJZGRADEBIBLIOTEKA, opstina.NAZIVOPSTINA,\n"
		"COUNT(DISTINCT radni_odnos.IDRADNOGODNOSA) AS BrojZaposlenih,\n"
		"COUNT(DISTINCT primerak.IDPRIMERAK) AS BrojRazlicitihNaslova\n"
		"FROM biblioteka, radni_odnos, primerak, opstina, zaposleni\n"
		"WHERE biblioteka.IDBIBLIOTEKA = radni_odnos.IDBIBLIOTEKA\n"
		"AND biblioteka.IDOPSTINA = opstina.IDOPSTINA\n"
		"AND biblioteka.IDBIBLIOTEKA = primerak.IDBIBLIOTEKA\n"
		"AND radni_odnos.IDZAPOSLENI = zaposleni.IDZAPOSLENI\n"
		"GROUP BY biblioteka.IMEULICEBIBLIOTEKE\n"
		"ORDER BY BrojRazlicitihNaslova DESC LIMIT 1",conDataBase);
	MySqlDataReader^ myReader;

	try {
		MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
		sda->SelectCommand = cmdDataBase;
		DataTable^ dbdataset = gcnew DataTable();
		sda->Fill(dbdataset);
		BindingSource^ bSource = gcnew BindingSource();
		conDataBase->Open();

		bSource->DataSource = dbdataset;
		dataGridView1->DataSource = bSource;
		sda->Update(dbdataset);
		myReader = cmdDataBase->ExecuteReader();

	}
	catch (Exception^ex) {
		MessageBox::Show(ex->Message);
	}



}
private: System::Void btUpit6_Click(System::Object^  sender, System::EventArgs^  e) {
	String^ constring = L"datasource=localhost;port=3306;database=biblioteka;username=root;password=MyNewPass";
	MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
	MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
		"SELECT knjiga.IMEKNJIGA,\n"
		"COUNT(DISTINCT primerak.IDPRIMERAK) AS BrojPrimeraka\n"
		"FROM knjiga, biblioteka, autorstvo, autor, primerak, region, opstina\n"
		"WHERE region.IDREGION = 3\n"
		"AND region.IDREGION = opstina.IDREGION\n"
		"AND opstina.IDOPSTINA = biblioteka.IDOPSTINA\n"
		"AND knjiga.ISBN = autorstvo.ISBN\n"
		"AND autorstvo.IDAUTORSTVO = primerak.IDAUTORSTVO\n"
		"AND autorstvo.IDAUTOR = autor.IDAUTOR\n"
		"AND biblioteka.IDBIBLIOTEKA = primerak.IDBIBLIOTEKA\n"
		"GROUP BY knjiga.IMEKNJIGA\n"
		"HAVING COUNT(autor.IDAUTOR) >= 2", conDataBase);
	MySqlDataReader^ myReader;

	try {
		MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
		sda->SelectCommand = cmdDataBase;
		DataTable^ dbdataset = gcnew DataTable();
		sda->Fill(dbdataset);
		BindingSource^ bSource = gcnew BindingSource();
		conDataBase->Open();

		bSource->DataSource = dbdataset;
		dataGridView1->DataSource = bSource;
		sda->Update(dbdataset);
		myReader = cmdDataBase->ExecuteReader();

	}
	catch (Exception^ex) {
		MessageBox::Show(ex->Message);
	}



}
private: System::Void btUpit7_Click(System::Object^  sender, System::EventArgs^  e) {
	String^ constring = L"datasource=localhost;port=3306;database=biblioteka;username=root;password=MyNewPass";
	MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
	MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
		"SELECT biblioteka.IDBIBLIOTEKA, knjiga.IMEKNJIGA, autor.IMEAUTOR,\n"
		"COUNT(korisnici.IDKORISNIK)\n"
		"FROM biblioteka\n"
		"JOIN primerak ON biblioteka.IDBIBLIOTEKA = primerak.IDBIBLIOTEKA\n"
		"JOIN autorstvo ON primerak.IDAUTORSTVO = autorstvo.IDAUTORSTVO\n"
		"JOIN autor ON autorstvo.IDAUTOR = autor.IDAUTOR\n"
		"JOIN knjiga ON autorstvo.ISBN = knjiga.ISBN\n"
		"JOIN evidencijaiznajmljivanja ON primerak.IDPRIMERAK = evidencijaiznajmljivanja.IDPRIMERAK\n"
		"JOIN korisnici ON evidencijaiznajmljivanja.IDKORISNIK = korisnici.IDKORISNIK\n"
		"WHERE(year(primerak.datumPrimerak) = year(CURRENT_DATE()))\n"
		"GROUP BY biblioteka.IDBIBLIOTEKA\n"
		"ORDER BY knjiga.IMEKNJIGA, knjiga.GODINAIZDANJAKNJIGA", conDataBase);
	MySqlDataReader^ myReader;

	try {
		MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
		sda->SelectCommand = cmdDataBase;
		DataTable^ dbdataset = gcnew DataTable();
		sda->Fill(dbdataset);
		BindingSource^ bSource = gcnew BindingSource();
		conDataBase->Open();

		bSource->DataSource = dbdataset;
		dataGridView1->DataSource = bSource;
		sda->Update(dbdataset);
		myReader = cmdDataBase->ExecuteReader();

	}
	catch (Exception^ex) {
		MessageBox::Show(ex->Message);
	}


}


private: System::Void button1_Click_1(System::Object^  sender, System::EventArgs^  e) {
	String^ constring = L"datasource=localhost;port=3306;database=biblioteka;username=root;password=MyNewPass";
	MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
	MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
		"SELECT * FROM biblioteka", conDataBase);

	MySqlDataReader^ myReader;

	try {
		MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
		sda->SelectCommand = cmdDataBase;
		DataTable^ dbdataset = gcnew DataTable();
		sda->Fill(dbdataset);
		BindingSource^ bSource = gcnew BindingSource();
		conDataBase->Open();

		bSource->DataSource = dbdataset;
		dataGridView1->DataSource = bSource;
		sda->Update(dbdataset);
		myReader = cmdDataBase->ExecuteReader();

	}
	catch (Exception^ex) {
		MessageBox::Show(ex->Message);
	}
}
private: System::Void button2_Click_2(System::Object^  sender, System::EventArgs^  e) {
	String^ constring = L"datasource=localhost;port=3306;database=biblioteka;username=root;password=MyNewPass";
	MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
	MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
		"SELECT * FROM knjiga", conDataBase);

	MySqlDataReader^ myReader;

	try {
		MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
		sda->SelectCommand = cmdDataBase;
		DataTable^ dbdataset = gcnew DataTable();
		sda->Fill(dbdataset);
		BindingSource^ bSource = gcnew BindingSource();
		conDataBase->Open();

		bSource->DataSource = dbdataset;
		dataGridView1->DataSource = bSource;
		sda->Update(dbdataset);
		myReader = cmdDataBase->ExecuteReader();

	}
	catch (Exception^ex) {
		MessageBox::Show(ex->Message);
	}
}
private: System::Void button3_Click(System::Object^  sender, System::EventArgs^  e) {
	String^ constring = L"datasource=localhost;port=3306;database=biblioteka;username=root;password=MyNewPass";
	MySqlConnection^ conDataBase = gcnew MySqlConnection(constring);
	MySqlCommand^ cmdDataBase = gcnew MySqlCommand(
		"SELECT * FROM korisnici", conDataBase);

	MySqlDataReader^ myReader;

	try {
		MySqlDataAdapter^ sda = gcnew MySqlDataAdapter();
		sda->SelectCommand = cmdDataBase;
		DataTable^ dbdataset = gcnew DataTable();
		sda->Fill(dbdataset);
		BindingSource^ bSource = gcnew BindingSource();
		conDataBase->Open();

		bSource->DataSource = dbdataset;
		dataGridView1->DataSource = bSource;
		sda->Update(dbdataset);
		myReader = cmdDataBase->ExecuteReader();

	}
	catch (Exception^ex) {
		MessageBox::Show(ex->Message);
	}
}
private: System::Void groupBox1_Enter(System::Object^  sender, System::EventArgs^  e) {
}
};
}
