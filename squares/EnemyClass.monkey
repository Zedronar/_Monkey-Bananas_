Import mojo
Import VectorClass

Class Enemy
  Field position:Vector
  Field image:Image
  Field enemyCenter:Vector = New Vector()
  
  Method New(img:Image)
    image = img
	position = New Vector(Rnd(0, 640), Rnd(480))
  End
  
  Method Update:Void()
	'TODO: Follow player
	
	enemyCenter.X = image.Width / 2
	enemyCenter.Y = image.Height / 2
  End
 
  Method Draw:Void()
    DrawImage(image, position.X, position.Y)
  End
  
  'STATIC METHOD
  Function RandomEnemySpawn:Void(enemies:List<Enemy>, img:Image) 'TODO: Add random MIN MAN parameters, so I can send level variable to set difficulty (enemy spawn frequency)
  	Local rndm:Int = Int(Rnd(0, 100))
	If rndm = 1 '1% probability of spawning an enemy
	  enemies.AddLast(New Enemy(img))
	EndIf
  End
End