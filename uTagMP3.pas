
unit uTagMP3;

interface

uses Windows, Controls, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls, Forms, ID3v2, SysUtils, Classes;

type
  TForm_TagMP3Editor = class(TForm)
    Panel_Rename: TPanel;
    Edit_Pasta: TDirectoryEdit;
    Button_Exec: TBitBtn;
    ListBox_Esquerda: TListBox;
    ListBox_Direita: TListBox;
    Button_TodosIncluir: TButton;
    Button_Incluir: TButton;
    Button_Exclur: TButton;
    Button_TodosExclur: TButton;
    Edit_Artist: TEdit;
    Edit_Album: TEdit;
    Edit_Ano: TEdit;
    Edit_Genre: TEdit;
    Label_Artist: TLabel;
    Label_Ano: TLabel;
    Label_Genre: TLabel;
    Label_Album: TLabel;
    Label_Info2: TLabel;
    Label_Info1: TLabel;
    procedure ListarPastas(WP_Caminho_Origem: string; Lista: TStrings);
    procedure FormPaint(Sender: TObject);
    procedure Edit_PastaChange(Sender: TObject);
    procedure Button_MoverClick(Sender: TObject);
    procedure Button_ExecClick(Sender: TObject);
    procedure ListBoxClick(Sender: TObject);
  end;

var
  Form_TagMP3Editor: TForm_TagMP3Editor;
  W_I: integer;

implementation

{$R *.dfm}

procedure TForm_TagMP3Editor.ListarPastas(WP_Caminho_Origem: string; Lista: TStrings);
   procedure Buscar(WP_Pasta: String; WP_Adicionar_Origem: Boolean);
   var W_SearchRec: TSearchRec;
       W_Proximo: Integer;
   begin
      if WP_Pasta[length(WP_Pasta)] <> '\' then begin
         WP_Pasta := WP_Pasta + '\';
      end;
      W_Proximo := FindFirst(WP_Pasta + '*.*', faDirectory, W_SearchRec);
      if WP_Adicionar_Origem then begin
         Lista.add(WP_Caminho_Origem);
      end;
      if W_Proximo = 0 then begin
         try
            W_I := 0;
            repeat
               if((W_SearchRec.Attr and faDirectory) = 0)and(W_SearchRec.Name <> '.')and(W_SearchRec.Name <> '..') then begin
                  Lista.add(W_SearchRec.Name);
                  Buscar(W_SearchRec.Name, false);
                  W_I := W_I + 1;
               end;
               W_Proximo := FindNext(W_SearchRec);
            until W_Proximo <> 0;
         finally
            SysUtils.FindClose(W_SearchRec)
         end;
      end;
   end;
begin
   if WP_Caminho_Origem <> EmptyStr then begin
      ListBox_Esquerda.Items.Clear;
      ListBox_Direita.Items.Clear;
      Buscar(WP_Caminho_Origem, false);
      Caption := 'Renomeador 1.0 - Total listado: ' + IntToStr(W_I) + '             rogerio.rex@gmail.com';
   end;
end;

procedure TForm_TagMP3Editor.FormPaint(Sender: TObject);
begin
//   ListarPastas(Edit_Pasta.Text, ListBox_Esquerda.Items);
end;

procedure TForm_TagMP3Editor.Edit_PastaChange(Sender: TObject);
begin
   ListarPastas(Edit_Pasta.Text, ListBox_Esquerda.Items);
end;

procedure TForm_TagMP3Editor.Button_MoverClick(Sender: TObject);
var W_I: integer;
begin
   case (Sender as TButton).Tag of
      1: if ListBox_Esquerda.Items.Count > 0 then begin
         ListBox_Direita.Items.Text := ListBox_Direita.Items.Text + ListBox_Esquerda.Items.Text;
         ListBox_Esquerda.Items.Clear;
         ListBox_Direita.SetFocus;
      end;
      2: if ListBox_Esquerda.Items.Count > 0 then begin
         if ListBox_Esquerda.ItemIndex = -1 then begin
            ListBox_Esquerda.ItemIndex := 0;
         end;
         ListBox_Direita.Items.Add(ListBox_Esquerda.Items[ListBox_Esquerda.ItemIndex]);
         ListBox_Esquerda.DeleteSelected;
         ListBox_Direita.SetFocus;
      end;
      3: if ListBox_Direita.Items.Count > 0 then begin
         if ListBox_Direita.ItemIndex = -1 then begin
            ListBox_Direita.ItemIndex := 0;
         end;
         ListBox_Esquerda.Items.Add(ListBox_Direita.Items[ListBox_Direita.ItemIndex]);
         ListBox_Direita.DeleteSelected;
         ListBox_Esquerda.SetFocus;
      end;
      4: if ListBox_Direita.Items.Count > 0 then begin
         ListBox_Esquerda.Items.Text := ListBox_Esquerda.Items.Text + ListBox_Direita.Items.Text;
         ListBox_Direita.Items.Clear;
         ListBox_Esquerda.SetFocus;
      end;
   end;
end;

procedure TForm_TagMP3Editor.Button_ExecClick(Sender: TObject);
var
   W_Arquivo: string;
   W_Mp3: TID3v2;
begin
   for W_I := 0 to ListBox_Direita.Items.Count - 1 do begin
      W_Arquivo := Edit_Pasta.Text + '\' + ListBox_Direita.Items[W_I];
      W_Mp3 := TID3v2.Create;
      W_Mp3.ReadFromFile(W_Arquivo);
      W_Mp3.Title  := Copy(ListBox_Direita.Items[W_I], 1, Length(ListBox_Direita.Items[W_I]) - 4);
      W_Mp3.Album  := Edit_Album.Text;
      W_Mp3.Year   := Edit_Ano.Text;
      W_Mp3.Genre  := Edit_Genre.Text;
      W_Mp3.Artist := Edit_Artist.Text;
      W_Mp3.Track  := W_I + 1;
      W_Mp3.SaveToFile(W_Arquivo);
   end;
   W_Mp3.Free;
end;

procedure TForm_TagMP3Editor.ListBoxClick(Sender: TObject);
var
   W_Arquivo: string;
   W_Mp3: TID3v2;
begin
   W_Arquivo := Edit_Pasta.Text + '\' + (Sender as  TListBox).Items[(Sender as  TListBox).ItemIndex];
   W_Mp3 := TID3v2.Create;
   W_Mp3.ReadFromFile(W_Arquivo);
   W_Mp3.ReadFromFile(W_Arquivo);
   if length(W_Mp3.Title) > 22 then begin
      Label_Info1.Caption := 'Música:  ' + Copy(W_Mp3.Title, 1, 22) +'...' + #13 + 'Artísta: ' + W_Mp3.Artist + #13 + 'Ano:     ' + W_Mp3.Year;
   end else begin
      Label_Info1.Caption := 'Música:  ' + W_Mp3.Title + #13 + 'Artísta: ' + W_Mp3.Artist + #13 + 'Ano:     ' + W_Mp3.Year;
   end;
   Label_Info2.Caption := 'Faixa:  ' + W_Mp3.TrackString + #13 + 'Álbum:  ' + W_Mp3.Album + #13 + 'Gênero: ' + W_Mp3.Genre;
   W_Mp3.Free;
end;

end.
