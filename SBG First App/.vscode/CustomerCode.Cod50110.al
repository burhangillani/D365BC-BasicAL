codeunit 90570 CustomerCode
{
    procedure CeleberateNewCustomer(MyCustomer: Record Customer; ExtraMessage: Text)
    begin
        Message('Whoa! We have a new Customer %1 !! %2', MyCustomer."No.", ExtraMessage);
    end;

    [EventSubscriber(ObjectType::Table, 18, 'OnAfterInsertEvent', '', true, true)]
    local procedure CustomerOnAfterInsert(var Rec: Record Customer)
    begin
        CeleberateNewCustomer(Rec, 'Congratulations! from the Codeunit !! :) ');
    end;


}