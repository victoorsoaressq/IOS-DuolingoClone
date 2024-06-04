import SwiftUI

struct SingInView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            
            
            VStack {
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                        
                    } label: {
                        Image("arrowLeft")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)

                    }
                    
                    
                    Spacer()
                        .frame(width: 60)
                    
                    Text("Insira os seus dados")
                        .font(.system(size: 21))
                        .foregroundColor(Color.gray)
                        .bold()
                    
                    Spacer()
                    
                }
                VStack {
                    TextField("E-mail ou nome de usuário", text: $username)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color("gray2"))
                        .cornerRadius(10)
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("gray1"), lineWidth: 2)
                        )
                    
                    SecureField("Senha", text: $password)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color("gray2"))
                        .cornerRadius(10)
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("gray1"), lineWidth: 2)
                        )
                    
                    Text("ENTRAR")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, maxHeight: 52)
                        .background(Color("blue1"))
                        .cornerRadius(10)
                        .padding(.vertical)
                    
                    Text("ESQUECI A SENHA")
                        .foregroundColor(Color("blue1"))
                        .bold()
                        .padding(.top)
                        
                }
                Spacer()
                
                VStack {
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Image("googleLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                            
                            Text("ENTRAR COM GOOGLE")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .padding(.leading, 5)
                                
                        }
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("gray1"), lineWidth: 2)
                        )
                        
                            
                    })
                    .padding(.bottom, 8)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Image("facebookLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                            
                            Text("ENTRAR COM FACEBOOK")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .padding(.leading, 5)
                                
                        }
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("gray1"), lineWidth: 2)
                        )
                        
                            
                    })
                    .padding(.bottom, 8)

                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Image("appleLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                            
                            Text("ENTRAR COM APPLE")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .padding(.leading, 5)
                                
                        }
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("gray1"), lineWidth: 2)
                        )
                        
                            
                    })
                    .padding(.bottom, 8)
                    
                    
                    Text("Ao entrar no Duolingo, você concorda com os")
                        .foregroundColor(Color.gray)
                        .padding(.top, 5)
                    HStack {
                        Text("nossos")
                        Text("Termos")
                            .foregroundColor(Color.black)
                        Text("e")
                        Text("Politica de Privacidade.")
                            .foregroundColor(Color.black)
                    }
                    .foregroundColor(Color("textColor"))

                }
            }
            .padding()
            
        }.navigationBarHidden(true)
    }
}

struct SingInView_Previews: PreviewProvider {
    static var previews: some View {
        SingInView()
    }
}
