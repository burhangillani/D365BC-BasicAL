codeunit 90540 "SBG Image Management"
{
    trigger OnRun()
    begin

    end;

    procedure ImportItemPicture(Item: Record Item)
    var
        PicInstream: InStream;
        FromFileName: Text;
        OverRideImageOst: Label 'The existing picture will be replaced. Do you want to continue?', Locked = false, MaxLength = 250;
    begin
        with Item do begin
            if Picture.Count > 0 then
                if not Confirm(OverRideImageOst) then
                    exit;

            if UploadIntoStream('Import', '', 'All Files(*.*)|*.*', FromFileName, PicInstream) then begin
                Clear(Picture);
                Picture.ImportStream(PicInstream, FromFileName);
                Modify(true);
            end;
        end;
    end;

    procedure ExportItemPicture(Item: Record Item)
    var
        PicInStream: InStream;
        Index: Integer;
        TenantMedia: Record "Tenant Media";
        FileName: Text;
    begin
        with Item do begin
            if Picture.Count = 0 then
                exit;

            for Index := 1 to Picture.Count do begin
                if TenantMedia.Get(Picture.Item(Index)) then begin
                    TenantMedia.CalcFields(Content);
                    if TenantMedia.Content.HasValue then begin
                        FileName := TableCaption + '_Image' + Format(Index) + GetTenantMediaFileExtension(TenantMedia);

                        TenantMedia.Content.CreateInStream(PicInStream);
                        DownloadFromStream(PicInStream, '', '', '', FileName);

                    end;
                end;
            end;
        end;
    end;

    local procedure GetTenantMediaFileExtension(var TenantMedia: Record "Tenant Media"): Text;
    begin
        case TenantMedia."Mime Type" of
            'image/jpeg':
                exit('.jpg');
            'image/png':
                exit('.png');
            'image/bmp':
                exit('.bmp');
            'image/gif':
                exit('.gif');
            'image/tiff':
                exit('.tiff');
            'image/wmf':
                exit('.wmf');
        end;
    end;

    var
        myInt: Integer;
}