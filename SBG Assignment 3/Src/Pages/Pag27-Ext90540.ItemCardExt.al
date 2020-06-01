pageextension 90540 "SBG Item Card Ext" extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(processing)
        {
            action(ImportItemPicture)
            {
                Caption = 'Import Item Picture';
                trigger OnAction()
                var
                    ImageManagement: Codeunit "SBG Image Management";
                begin
                    ImageManagement.ImportItemPicture(Rec);
                end;
            }
            action(ExportItemPicture)
            {
                Caption = 'Export Item Picture';
                trigger OnAction()
                var
                    ImageManagement: Codeunit "SBG Image Management";
                begin
                    ImageManagement.ExportItemPicture(Rec);
                end;
            }
        }
    }
}