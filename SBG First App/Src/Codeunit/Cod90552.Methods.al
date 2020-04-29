codeunit 90552 "SBG AL Methods"
{
    procedure GetMethod()
    var
        customer: Record Customer;
    begin
        Clear(customer);
        customer.get(10000);
        Message('Customer No. = %1 and Customer Name = %2', customer."No.", customer.Name);

    end;

    procedure GetBySystemID()
    var
        customer: Record Customer;
    begin

        Clear(customer);
        customer.GetBySystemId('');
        Message('Customer No. = %1 and Customer Name = %2', customer."No.", customer.Name);
    end;
}