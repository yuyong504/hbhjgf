function change(f,pic_w,pic_h){
                    var a,b,c;
                    var nw=pic_w,nh=pic_h;					
                    bl=f.width/f.height;
                    a=nw/bl; //
                    b=nh*bl; //
					if(f.width>pic_w || f.height>pic_h)
					{
						
						if(bl<=1)
						{
							f.height=nh;
							f.width=f.width/(f.height/nh);
							return;						
							}
						else{  
							if(a>=nw){
							   f.height=nh;
							   f.width=b;
							}else{
							   f.height=a;
							   f.width=nw;
							}					  
						  }
						  if(f.height>pic_h)
						  {
							  f.height=pic_h;
							  f.width=f.width*pic_h/f.height;
						  }
					}
					}