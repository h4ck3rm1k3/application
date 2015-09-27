#
#node_path        "nodes"
#role_path        "roles"
#environment_path "environments"
#data_bag_path    "data_bags"
cookbook_path    ["/home/mdupont/experiments/zookeepr/chef/cbsources/application/test/cookbooks/",
                  "/home/mdupont/experiments/zookeepr/chef/cookbooks"
                 ]


knife[:bootstrap_version] = "11"
