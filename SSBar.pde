int barX, speed, alpha;

void setup(){
  size(800, 100);
  
   barX = 80;
   speed = 3;
   alpha = 255;
}
void draw(){
  background(255);
  fill(200);
  noStroke();
  rect(50,10,700,80,30);
  stroke(0);
  strokeWeight(2);
  fill(200);
  rect(285, 35, 10, 15, 40);
  fill(0);
  rect(280, 45, 20, 15);
  textSize(28);
  text("oh-o2.meiji.ac.jp", 310, 58);
  stroke(0);
  line(695, 38, 720, 63);
  line(720, 38, 695, 63);
  //fpsは早くしてタイミングバーの速さを調整するのに時間をかけよう
  //frameRate(60);
  //今はバツを書いておくよ
    
    stroke(62, 109, 239, alpha);
    line(78, 88, barX, 88);
    stroke(103, 137, 252, alpha);
    line(78, 87, barX, 87);
  //barXは青色のバーのx座標
  //barXの値が400に到達したら一気にスピードを上げる
  //barXの値が750になったらバーを綺麗に消す
  //透過度をあげる処理をする
  //barXの値が750になったらバツマークを更新マークに速やかに変える
  if( barX >= 80 && barX < 227){
    speed = 7;
    barX += speed;  
  }else if( barX >= 227 && barX < 235){
    //前のspeedの影響が出ないように条件分岐を繊細におこなった
    //delay(500);
    //待ち時間を変える
    //delay(300);
    //delay(400);
    //delay(200);
    delay(100);
    speed = 1;
    //進み具合を変える(3.3)
    //speed = 2;
    barX += speed;
  }else if( barX >= 235 && barX < 720){
    speed = 5;
    barX += speed*speed;
  }else{
    if(alpha > 0){
      //1ms待ってみる処理(3.3)
      delay(20);
    alpha -= 60;
    }
    speed = 0;
    //ここから更新マークを描画
    noStroke();
    fill(200);
    rect(690,35,35,35);
    noFill();
    stroke(0);
    arc(707, 50, 25, 25, radians(0), radians(270));
    fill(0);
    triangle(707, 35, 707, 40, 711.33, 37.5);
    
  }
  println(barX);
  //println(mouseX+ ", "+mouseY); 
  //println(alpha);
  if(mousePressed){
    if(mouseX >= 685 && mouseX <= 730 && mouseY >= 28 && mouseY <= 73){
      barX = 80;
      alpha = 255;
    }
  }
}
