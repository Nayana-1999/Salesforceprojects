trigger PreventAccountDelete on Account (before delete) {
    for(Account a:[select id from Account where id in(select AccountId from Opportunity)and id in :Trigger.old]){
        Trigger.oldMap.get(a.id).adderror('cannot delete account related to oppurtunities');

    }


}