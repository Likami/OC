unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    GroupBox2: TGroupBox;
    DriveComboBox2: TDriveComboBox;
    DirectoryListBox2: TDirectoryListBox;
    FileListBox2: TFileListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FileListBox1Change(Sender: TObject);
    procedure DirectoryListBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  c,x,x1,x2:string;

implementation

{$R *.dfm}

procedure TForm1.FileListBox1Change(Sender: TObject);
begin
 x:=FileListBox1.FileName;
end;

procedure TForm1.DirectoryListBox2Change(Sender: TObject);
begin
 c:=DirectoryListBox2.Directory;
 x1 := c + '\' + extractfilename (x);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if CopyFile(pchar(x),pchar(x1),true) then
  ShowMessage('Файл скопирован')
  else ShowMessage('Ошибка ! вот ее код: '+IntToStr(GetLastError));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 if createdir ('Новая папка') then
  ShowMessage('Папка создана')
  else ShowMessage('Ошибка ! вот ее код:' +IntToStr(GetLastError));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 if RemoveDir('Новая папка')
  then ShowMessage('Папка удалена')
  else ShowMessage('Ошибка ! вот ее код:' +IntToStr(GetLastError));
end;


procedure TForm1.Button5Click(Sender: TObject);
begin
 if DeleteFile('new.txt')
  then ShowMessage('Файл удален')
  else ShowMessage('Ошибка ! вот ее код:' +IntToStr(GetLastError));
end;

procedure TForm1.Button4Click(Sender: TObject);
var F:TFileStream;
begin
F:=TFileStream.Create('new.txt',fmCreate);
F.Free;
end;

end.

