class FormulariosController < ApplicationController
  def form_get

  	@codigo = params[:codigo];
   if @codigo
      case @codigo
         when "123"
            @usuario = {:nombre => "Cornelio", :apellido => "Del Rancho"};
         when "456"
            @usuario = {:nombre => "Juansulo", :apellido => "Clayton"};
         when "789"
            @usuario = {:nombre => "Eros", :apellido => "Ramazzotti"};
         else
            @usuario = false;
         end
   end
  end

  def form_post

  	@respuesta = false;
   if request.post?
      @comentario = {
         :nombre => params[:nombre],
         :consulta => params[:comentario]
      };
   end
  end
end
