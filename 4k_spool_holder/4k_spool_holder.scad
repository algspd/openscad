union(){
difference(){
cylinder(h = 90, r=15/2,center=true);
union(){
cylinder(h = 95, r=10/2,center=true);
translate(v=[0,0,45]){
cylinder(h = 20, r=22/2,center=true);
}
translate(v=[0,0,-45]){
cylinder(h = 20, r=22/2,center=true);
}
}
}

difference(){



cylinder(h = 90, r=71/2,center=true);


union(){
cylinder(h = 95, r=10/2,center=true);

translate(v=[0,0,45]){
cylinder(h = 20, r=22/2,center=true);
}

translate(v=[0,0,-45]){
cylinder(h = 20, r=22/2,center=true);
}


cylinder(h = 61, r=63/2,center=true);

}
}}

