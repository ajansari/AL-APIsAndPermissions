page 80100 "DSWi Customer API"
{
    PageType = API;
    Caption = 'DSWi Customer API';
    APIPublisher = 'DSWi';
    APIGroup = 'MasterRecords';
    APIVersion = 'v1.0';
    EntityName = 'dswiCustomer';
    EntitySetName = 'dswiCustomers';
    SourceTable = Customer;
    DelayedInsert = true;

    Extensible = false; //Set to true if you'd like others to be able to extend your API

    ODataKeyFields = SystemId; //Always use this and define the field SystemId as show below under repeater

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(CustNo; rec."No.")
                {
                    Caption = 'Customer No.';
                }
                field(CustName; rec.Name)
                {
                    Caption = 'Customer Name';
                }
                field(CustSalesperson; rec."Salesperson Code")
                {
                    Caption = 'Salesperson';
                }
            }
        }
    }
}