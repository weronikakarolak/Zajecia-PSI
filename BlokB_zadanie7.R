podatek_Belki=function(przychod, koszt, typ_aktywa){
  zysk=przychod-koszt
  if(zysk<=0){
    return(0)
  }
  if(typ_aktywa=="akcje"){
    return(0.19*zysk)
  }else if(typ_aktywa=="obligacje"){
    return(0.19*zysk)
  }else if(typ_aktywa=="kryptowaluty"){
    if(zysk<=85525){
      return(zysk*0.18)
    }else{
      return(zysk*0.32)
    }
  }else{
    return("Nieznany typ aktywa")
  }
}
podatek_Belki(15000, 10000, "akcje")
podatek_Belki(8000, 10000, "akcje")
podatek_Belki(150000, 50000, "kryptowaluty")
podatek_Belki(1500, 1000, "lokata")
