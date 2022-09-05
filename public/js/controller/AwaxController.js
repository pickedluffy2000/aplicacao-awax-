class AwaxController  {

  constructor(){

      this.elementsPrototype();
      this.loadElements();
      this.initEvents();
 
  }

  loadElements(){

      this.el = {};

      document.querySelectorAll('[id]').forEach(element=>{

          this.el[Format.getCamelCase(element.id)] = element;

      });

  }

  elementsPrototype(){

      Element.prototype.hide = function(){
          this.style.display = 'none';
          return this;
      }

      Element.prototype.show = function(){
          this.style.display = 'block';
          return this;
      }

      Element.prototype.toogle = function(){
          this.style.display = (this.style.display === 'none') ? 'block' : 'none';
          return this;
      }

      Element.prototype.on = function(events, fn){
         events.split(' ').forEach(event=>{
            this.addEventListener(event, fn);
         });
         return this;
      }

      Element.prototype.css = function(styles){
         for(let name in styles){
             this.style[name] = styles[name];
         }
         return this;
       }

       Element.prototype.addClass = function(name){
         this.classList.add(name);
         return this;
        }

        Element.prototype.removeClass = function(name){
          this.classList.remove(name);
          return this;
         }

         Element.prototype.toogleClass = function(name){
          this.classList.toogle(name);
          return this;
         }

         Element.prototype.hasClass = function(name){
          return this.classList.contains(name);
         }

  }

  
  initEvents(){
   
    //slider do banner
    let count = 1;

    document.getElementById("slide1").checked = true

    setInterval(function() {
        nextImage();
    }, 4000);
    
    function nextImage(){

        count++;
    
        if(count>3){
          count  = 1;
        }
    
        document.getElementById("slide"+count).checked = true;
      }
  ///////fim do slider do banner
      

      this.el.menuOpener.on("click", e =>{

        this.el.openerMobile.toogle();
        
      });


      //animacao do site 
      let target = document.querySelectorAll('[data-anime]');
      let animationClass = 'animate';

      function animeScroll(){

        let windowTop = window.pageYOffset + (window.innerHeight * 3) / 4;

        target.forEach(function(element){
          
            if((windowTop) > element.offsetTop){
              element.classList.add(animationClass);
            } else {
              element.classList.remove(animationClass);
            }
        });
      }

      animeScroll();
      
      if(target.length) {

      window.addEventListener('scroll', function(){
      animeScroll();
      });

    }
     // fim animacao do site.

  }

   // inicio do botao cadastrar cliente do admin.

}
 