# Creates new permission
#
#   perm:: permission name
def create_u_perm(perm)
    exec_sql "INSERT INTO u_perms(perm) VALUES('#{perm}')"
end

# Creates new permissions
#
#   name:: Permission name
#   add:: Additional permissions
def create_res_perms (name, add = [])
    perms = %w(_edit) + add

    create_u_perm(name)
    perms.each { |v|
        create_u_perm(name + v)
    }
end

# Gives permission to specified user
#
#   user:: User
#   perms:: Array of permission ids
def add_perms_to_user (user, perms)
    perms.each { |v|
        exec_sql "INSERT INTO u_apis_perms(u_api_id, u_perm_id) VALUES('#{user}', '#{v}')"
    }
end


create_res_perms 'theatres' # 1, 2
create_res_perms 'u_apis' # 3, 4

create_res_perms 'actors' # 5, 6
create_res_perms 'perfs' # 7, 8
create_res_perms 'posters' # 9, 10
create_res_perms 'articles' # 11, 12
create_res_perms 't_perfs' # 13, 14

create_u_perm('theatre_choose') # 15


add_perms_to_user 1, (1..15) # Admin
add_perms_to_user 2, (3..14) # Theatre admin

add_perms_to_user 3, (3..10).to_a + (13..14).to_a # Theatre users
add_perms_to_user 4, (11..12)
