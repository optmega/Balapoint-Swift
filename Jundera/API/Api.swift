//
//  Api.swift
//  Balapoint
//
//  Created by Josh Naylor on 11/14/17.
//  Copyright © 2017 Josh Naylor. All rights reserved.
//  TODO: Will need to update -

import Foundation

struct Api {
    
    static var Userr = UserApi()
    static var Post = PostApi()
    static var MyPosts = MyPostsApi()
    static var MySavedPosts = MySavedPostsApi()
    static var Follow = FollowApi()
    static var Feed = FeedApi()
    static var HashTag = HashTagApi()
    static let blockUser = BlockApi()
}
