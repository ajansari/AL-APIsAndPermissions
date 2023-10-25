permissionset 80100 "DSWi API Perm Set"
{
    Assignable = true;
    Caption = 'DSWi API Permission Set';

    // Using the property below allows the inclusion of existing permission sets; 
    // Note that Business Central now allows the user of Permission Sets within Permission Sets.

    // IncludedPermissionSets = SomePermissionSet;

    Permissions =
        tabledata Customer = RIMD,
        page "DSWi Customer API" = X;
    // Valid choices for permissions are RIMDX (Read, Insert, Modify, Delete, Execute)
    // Uppercase for Direct and lowercase for Indirect; Example: R for Read, r for Indirect Read.
    // For ALL or Wildcard, use * as shown in example below
    // tabledata * = R;
}