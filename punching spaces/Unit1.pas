unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Menus, ShellAPI, ComCtrls, XPMan,
  ExtDlgs;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox4: TComboBox;
    Label4: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    MainMenu1: TMainMenu;
    Autor1: TMenuItem;
    Zamknij1: TMenuItem;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Zamknij1Click(Sender: TObject);
    procedure Autor1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
memo1.Clear;
memo2.Clear;
label10.Caption:=' ';
label11.Caption:=' ';


if combobox1.ItemIndex=0 then image1.Visible:=true;
if combobox1.ItemIndex=0 then combobox3.Visible:=true;
if combobox1.ItemIndex=0 then combobox4.Visible:=false;
if combobox1.ItemIndex=0 then image2.Visible:=false;
if combobox1.ItemIndex=0 then label3.Visible:=true;
if combobox1.ItemIndex=0 then label4.Visible:=false;



if combobox1.ItemIndex=1 then image1.Visible:=false;
if combobox1.ItemIndex=1 then combobox3.Visible:=false;
if combobox1.ItemIndex=1 then combobox4.Visible:=true;
if combobox1.ItemIndex=1 then image2.Visible:=true;
if combobox1.ItemIndex=1 then label3.Visible:=false;
if combobox1.ItemIndex=1 then label4.Visible:=true;

end;



procedure TForm1.ComboBox2Change(Sender: TObject);
begin
label10.Caption:=memo1.Text;
label11.Caption:=memo2.Text;

begin
if (combobox3.ItemIndex<0)  and (combobox4.Visible=false)    then           { jesli z komboboxa wybierz srednica nic nie wybrane a kombobox wybierz szer prof nie widoczny to...}

MessageBox(0,'Najpierw wybierz srednice kr¹¿ka!', 'B³¹d wartosci',MB_OK);
end;

begin
if (combobox4.ItemIndex<0)  and (combobox3.Visible=false)    then

MessageBox(0,'Najpierw wybierz szerokosc profilu!', 'B³¹d wartosci',MB_OK);  { jesli z komboboxa wybierz szer prof nic nie wybrane a kombobox wybierz srednica nie widoczny to...}
end;

if (combobox1.ItemIndex=0) and  (combobox3.ItemIndex=0) then     {dla 1 srednicy}
begin
case ComboBox2.ItemIndex of
0: memo1.Text :='0,8';
1: memo1.Text :='0,7';
2: memo1.Text :='0,7';
3: memo1.Text :='0,8';
4: memo1.Text :='1,0';
5: memo1.Text :='1,2';
6: memo1.Text :='1,5';
7: memo1.Text :='1,8';
8: memo1.Text :='2,3';
9: memo1.Text :='2,8';
10: memo1.Text :='3,5';
11: memo1.Text :='4,5';
end;

begin
case ComboBox2.ItemIndex of
0: memo2.Text :='1,4';
1: memo2.Text :='1,2';
2: memo2.Text :='1,3';
3: memo2.Text :='1,4';
4: memo2.Text :='1,5';
5: memo2.Text :='1,8';
6: memo2.Text :='2,0';
7: memo2.Text :='2,2';
8: memo2.Text :='2,7';
9: memo2.Text :='3,2';
10: memo2.Text :='4,2';
11: memo2.Text :='5,5';
end;
end;
end;



 if (combobox1.ItemIndex=0) and  (combobox3.ItemIndex=1) then     {dla 2 srednicy}
begin
case ComboBox2.ItemIndex of
0: memo1.Text :='1,1';
1: memo1.Text :='1,0';
2: memo1.Text :='1,0';
3: memo1.Text :='1,1';
4: memo1.Text :='1,2';
5: memo1.Text :='1,4';
6: memo1.Text :='1,7';
7: memo1.Text :='2,0';
8: memo1.Text :='2,3';
9: memo1.Text :='2,8';
10: memo1.Text :='3,5';
11: memo1.Text :='4,5';
end;

begin
case ComboBox2.ItemIndex of
0: memo2.Text :='1,6';
1: memo2.Text :='1,5';
2: memo2.Text :='1,5';
3: memo2.Text :='1,6';
4: memo2.Text :='1,7';
5: memo2.Text :='2,0';
6: memo2.Text :='2,2';
7: memo2.Text :='2,5';
8: memo2.Text :='3,0';
9: memo2.Text :='3,5';
10: memo2.Text :='4,5';
11: memo2.Text :='5,8';
end;
end;
end;





if (combobox1.ItemIndex=0) and  (combobox3.ItemIndex=2) then     {dla 3 srednicy}
begin
case ComboBox2.ItemIndex of
0: memo1.Text :='-';
1: memo1.Text :='1,2';
2: memo1.Text :='1,2';
3: memo1.Text :='1,3';
4: memo1.Text :='1,3';
5: memo1.Text :='1,6';
6: memo1.Text :='1,8';
7: memo1.Text :='2,2';
8: memo1.Text :='2,5';
9: memo1.Text :='3,2';
10: memo1.Text :='4,2';
11: memo1.Text :='5,5';
end;

begin
case ComboBox2.ItemIndex of
0: memo2.Text :='-';
1: memo2.Text :='1,8';
2: memo2.Text :='2,0';
3: memo2.Text :='2,0';
4: memo2.Text :='2,0';
5: memo2.Text :='2,2';
6: memo2.Text :='2,4';
7: memo2.Text :='2,7';
8: memo2.Text :='3,5';
9: memo2.Text :='4,0';
10: memo2.Text :='5,0';
11: memo2.Text :='6,5';
end;
end;
end;



if (combobox1.ItemIndex=0) and  (combobox3.ItemIndex=3) then     {dla 4 srednicy}
begin
case ComboBox2.ItemIndex of
0: memo1.Text :='-';
1: memo1.Text :='1,4';
2: memo1.Text :='1,4';
3: memo1.Text :='1,5';
4: memo1.Text :='1,6';
5: memo1.Text :='1,8';
6: memo1.Text :='2,0';
7: memo1.Text :='2,5';
8: memo1.Text :='3,0';
9: memo1.Text :='3,8';
10: memo1.Text :='5,0';
11: memo1.Text :='-';
end;

begin
case ComboBox2.ItemIndex of
0: memo2.Text :='-';
1: memo2.Text :='2,2';
2: memo2.Text :='2,3';
3: memo2.Text :='2,3';
4: memo2.Text :='2,4';
5: memo2.Text :='2,5';
6: memo2.Text :='2,7';
7: memo2.Text :='3,0';
8: memo2.Text :='4,0';
9: memo2.Text :='4,5';
10: memo2.Text :='6,0';
11: memo2.Text :='-';
end;
end;
end;





{teraz dla prostok¹tnych}

if (combobox1.ItemIndex=1) and  (combobox4.ItemIndex=0) then     {dla 1 srednicy}



begin
case ComboBox2.ItemIndex of
0: memo1.Text :='1,2';
1: memo1.Text :='1,0';
2: memo1.Text :='1,0';
3: memo1.Text :='1,2';
4: memo1.Text :='1,2';
5: memo1.Text :='1,4';
6: memo1.Text :='1,5';
7: memo1.Text :='2,0';
8: memo1.Text :='2,5';
9: memo1.Text :='3,2';
10: memo1.Text :='4,0';
11: memo1.Text :='5,0';
end;

begin
case ComboBox2.ItemIndex of
0: memo2.Text :='1,6';
1: memo2.Text :='1,5';
2: memo2.Text :='1,5';
3: memo2.Text :='1,6';
4: memo2.Text :='1,7';
5: memo2.Text :='2,0';
6: memo2.Text :='2,2';
7: memo2.Text :='2,5';
8: memo2.Text :='3,0';
9: memo2.Text :='3,5';
10: memo2.Text :='4,2';
11: memo2.Text :='5,5';
end;
end;
end;



 if (combobox1.ItemIndex=1) and  (combobox4.ItemIndex=1) then     {dla 2 srednicy}
begin
case ComboBox2.ItemIndex of
0: memo1.Text :='1,5';
1: memo1.Text :='1,3';
2: memo1.Text :='1,2';
3: memo1.Text :='1,3';
4: memo1.Text :='1,4';
5: memo1.Text :='1,6';
6: memo1.Text :='1,8';
7: memo1.Text :='2,2';
8: memo1.Text :='2,8';
9: memo1.Text :='3,5';
10: memo1.Text :='4,5';
11: memo1.Text :='5,5';
end;

begin
case ComboBox2.ItemIndex of
0: memo2.Text :='1,8';
1: memo2.Text :='1,8';
2: memo2.Text :='1,8';
3: memo2.Text :='2,0';
4: memo2.Text :='2,0';
5: memo2.Text :='2,2';
6: memo2.Text :='2,4';
7: memo2.Text :='2,7';
8: memo2.Text :='3,5';
9: memo2.Text :='4,0';
10: memo2.Text :='4,8';
11: memo2.Text :='6,0';
end;
end;
end;





if (combobox1.ItemIndex=1) and  (combobox4.ItemIndex=2) then     {dla 3 srednicy}
begin
case ComboBox2.ItemIndex of
0: memo1.Text :='-';
1: memo1.Text :='1,6';
2: memo1.Text :='1,6';
3: memo1.Text :='1,6';
4: memo1.Text :='1,8';
5: memo1.Text :='2,0';
6: memo1.Text :='2,2';
7: memo1.Text :='2,5';
8: memo1.Text :='3,0';
9: memo1.Text :='4,0';
10: memo1.Text :='5,0';
11: memo1.Text :='6,5';
end;

begin
case ComboBox2.ItemIndex of
0: memo2.Text :='-';
1: memo2.Text :='2,2';
2: memo2.Text :='2,2';
3: memo2.Text :='2,3';
4: memo2.Text :='2,4';
5: memo2.Text :='2,5';
6: memo2.Text :='2,7';
7: memo2.Text :='3,0';
8: memo2.Text :='3,7';
9: memo2.Text :='4,2';
10: memo2.Text :='5,2';
11: memo2.Text :='6,5';
end;
end;
end;



if (combobox1.ItemIndex=1) and  (combobox4.ItemIndex=3) then     {dla 4 srednicy}
begin
case ComboBox2.ItemIndex of
0: memo1.Text :='-';
1: memo1.Text :='1,8';
2: memo1.Text :='1,8';
3: memo1.Text :='2,0';
4: memo1.Text :='2,0';
5: memo1.Text :='2,2';
6: memo1.Text :='2,5';
7: memo1.Text :='2,8';
8: memo1.Text :='3,5';
9: memo1.Text :='4,5';
10: memo1.Text :='5,5';
11: memo1.Text :='7,0';
end;

begin
case ComboBox2.ItemIndex of
0: memo2.Text :='-';
1: memo2.Text :='2,4';
2: memo2.Text :='2,4';
3: memo2.Text :='2,5';
4: memo2.Text :='2,5';
5: memo2.Text :='2,8';
6: memo2.Text :='3,0';
7: memo2.Text :='3,5';
8: memo2.Text :='4,0';
9: memo2.Text :='5,0';
10: memo2.Text :='6,0';
11: memo2.Text :='7,5';
end;
end;
end;


if (combobox1.ItemIndex=1) and  (combobox4.ItemIndex=4) then     {dla 4 srednicy}
begin
case ComboBox2.ItemIndex of
0: memo1.Text :='-';
1: memo1.Text :='2,2';
2: memo1.Text :='2,2';
3: memo1.Text :='2,2';
4: memo1.Text :='2,3';
5: memo1.Text :='2,5';
6: memo1.Text :='2,8';
7: memo1.Text :='3,2';
8: memo1.Text :='4,0';
9: memo1.Text :='5,0';
10: memo1.Text :='6,0';
11: memo1.Text :='-';
end;

begin
case ComboBox2.ItemIndex of
0: memo2.Text :='-';
1: memo2.Text :='2,6';
2: memo2.Text :='2,6';
3: memo2.Text :='2,8';
4: memo2.Text :='2,8';
5: memo2.Text :='3,0';
6: memo2.Text :='3,2';
7: memo2.Text :='3,8';
8: memo2.Text :='4,5';
9: memo2.Text :='5,5';
10: memo2.Text :='7,0';
11: memo2.Text :='-';
end;
end;
end;





end;
procedure TForm1.ComboBox3Change(Sender: TObject);
begin
memo1.Clear;
memo2.Clear;
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
label10.Caption:=memo1.Text;
label11.Caption:=memo2.Text;
memo1.Clear;
memo2.Clear;
label10.Caption:=' ';
label11.Caption:=' ';

end;



procedure TForm1.Zamknij1Click(Sender: TObject);
begin
close
end;

procedure TForm1.Autor1Click(Sender: TObject);
begin
MessageBox(0,'Pawe³ Andrzejczyk','Autor',mb_ok);
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
shellexecute(handle,'open','notepad.exe','','',sw_normal)
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
shellexecute(handle,'open','calc.exe','','',sw_normal)
end;


procedure TForm1.Image5Click(Sender: TObject);
begin
shellexecute(handle,'open','explorer.exe','','',sw_normal)
end;

end.





