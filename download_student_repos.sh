#!/bin/bash

# Define the input file
input="homework-grades-1717419263.csv"

# Use the IFS (Internal Field Separator) variable to specify the delimiter (in this case, a comma)
IFS=','

# Read the file line by line

org="febse"

function download_repo() {
    local repo_name=$1
    local group_name=$2

    echo "Cloning $repo_name for $group_name"
    
    gh repo clone $org/$repo_name student_repos/$group_name
}

function create_availability_issue() {
    local repo_name=$1
    local assign_name=$2
    local github_username=$3
    
    gh issue create -R $org/$repo_name --title "$assign_name available" --body "Your homework is now available in the index.qmd file in your repository." --assignee $github_username
}

function commit_and_push() {
    git add .
    git commit -m "Add homework"
    git push
}

function create_grading_issue() {
    local repo_name=$1
    local github_username=$2
    local grade=$3
    
    gh issue create -R $org/$repo_name --title "Grade available" --body "The grade for your homework assignment is $grade. You can find comments in your index.qmd file." --assignee $github_username
}

previous_group_name=""

sed 1d "$input" | while read -r assign_name assign_url starter_code_url github_username id student_repository_name student_repository_url submission_timestamp points_awarded points_available group_name
do
    if [ "$group_name" == "$previous_group_name" ]; then
        echo "Skipping duplicate group name: $group_name"
        continue
    fi
    
    echo Argument is $1 
    if [ "$1" == "download" ]; then
        echo Downloading $student_repository_name for $group_name
        download_repo $student_repository_name $group_name
    fi
    
    if [ "$1" == "upload" ]; then
        cd student_repos/$group_name && commit_and_push
        create_availability_issue $student_repository_name $assign_name $github_username
    fi
    
    if [ "$1" == "grade" ]; then
        cd student_repos/$group_name && commit_and_push
        create_grading_issue $student_repository_name $github_username $points_awarded
    fi

    previous_group_name=$group_name
done
