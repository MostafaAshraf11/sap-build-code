using { my.bookstore as my } from '../db/schema.cds';

@path : '/service/connection_TestService'
service connection_TestService
{
    @odata.draft.enabled
    entity Books as
        projection on my.Books;
}

annotate connection_TestService with @requires :
[
    'authenticated-user'
];
