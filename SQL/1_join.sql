SELECT FamilyMembers.member_name, (
    SELECT SUM(Payments.unit_price * Payments.amount)
    FROM Payments
    WHERE Payments.family_member = FamilyMembers.member_id
) AS total_spent
FROM FamilyMembers;
= 
select FamilyMembers.member_name, max(unit_price) as good_price
from FamilyMembers 
left join Payments on FamilyMembers.member_id = Payments.family_member
group by member_name


