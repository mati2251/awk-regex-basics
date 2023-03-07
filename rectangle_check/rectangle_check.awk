BEGIN{
    getline < "description.txt"
    row = $1
    columns = $2
    while((getline < "rectangle.txt") > 0){
        if($0 ~ /x{8}/) row-=1
    }
    if(row == 0){
        print("Dobry")
    }
    else {
        print("Zły")
    }
}