with Utils;
with Ada.Text_IO;

procedure Main is
begin
   Ada.Text_IO.Put_Line("2 + 3 = " & Integer'Image(Utils.Add(2, 3)));
end Main;

