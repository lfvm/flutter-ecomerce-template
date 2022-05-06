import 'package:ecomerce_template/src/customs/custom_colors.dart';
import 'package:ecomerce_template/src/customs/custom_fonts.dart';
import 'package:flutter/material.dart';



class AdressContainer extends StatelessWidget {


  bool isSelected;
  bool showEditbutton;
  AdressContainer({Key? key, this.isSelected = false, this.showEditbutton = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(


      child: Container(
        width: double.infinity,
        height: 225,
        margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
        decoration: BoxDecoration(
    
          color: isSelected ? CustomColors.terciary : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.black : Colors.transparent,
          
          ),
          borderRadius: BorderRadius.circular(8),
        ),
    
        child: Stack(
          children: [
            
            
            const _AdressOverview(),

            if( showEditbutton )
              const Positioned(
                //Poner en la parte inferior derecha 
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: _EditButtons(),
                )
              )
            

          ],
        ),
      ),
    );
  }
}


class _EditButtons extends StatelessWidget {
  const _EditButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Container(
          width: 36,
          height: 36,
          decoration: _buildDecoration(CustomColors.terciary),
          child: IconButton(
            icon: const Icon(Icons.edit_outlined, size: 18,), 
            onPressed: (){}
          ),
        ),
        const SizedBox( width: 10),
        Container(
          width: 36,
          height: 36,
          decoration: _buildDecoration(CustomColors.danger),
          child: IconButton(
            icon: const Icon(Icons.delete_outline, size: 18,), 
            onPressed: (){}
          ),
        ),
      ],
    );
  }

  BoxDecoration _buildDecoration(Color color) {
    return BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color
        );
  }
}


class _AdressOverview extends StatelessWidget {
  const _AdressOverview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
    
        Padding(
          padding: const EdgeInsets.all(16),
          child: Icon(Icons.home_outlined,color: CustomColors.primary,),
        ),

    
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
    
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              //Calle
              Text("Street Name",style: CustomFonts.subTitle,),
                      
                      
              const SizedBox(height: 16),
              //Codigo postal
              Text("52849",style: CustomFonts.paragraph,),
                      
              const SizedBox(height: 16),
                      
            
              //ciudad
              SizedBox(
                width: 240,
                child: Text("Cuajimalpa de Morleos, México",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: CustomFonts.paragraph,
                ),
              ),
                      
              const SizedBox(height: 16),
                      
            
              //Nombre de persona
              Text("Corey Schaffer",style: CustomFonts.paragraph,),
              //Telefono
              Text("55 32 45 65 21",
                style: CustomFonts.paragraph,
                overflow: TextOverflow.ellipsis,
              ),


      
            
            ],
          ),
        )
      ],
    );
  }
}