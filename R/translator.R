ParametrisationTranslator <- function(params, parametrisation, target='noven'){
  testit::assert(length(params) == 3)
  testit::assert(parametrisation %in% c('standard', 'noven'))
  target_alpha <- 1.0 # or target_xi

  # from parametrisation to noven
  params_target <- params

  if(parametrisation == target){
    return(params)
  }

  if(parametrisation == 'standard' & target == 'noven'){
    # (xi, sigma, kappa) to (alpha, beta, kappa)
    params_target[1] <- 1/params[1]
    params_target[2] <- params[2]/abs(params[1]) - params[3]
  }else{
    if(parametrisation == 'noven' & target == 'standard'){
      # (alpha, beta, kappa) to (xi, sigma, kappa)
      params_target[1] <- 1/params[1]
      params_target[2] <- (params[2] + params[3])/abs(params[1])
    }else{
      if(parametrisation == 'standard' & target == 'transform'){
        # (xi, sigma, kappa) to (1, 1+kappa, kappa)
        params_target[1] <- 1.0/target_alpha
        params_target[2] <- (1.0+params[3])*abs(target_alpha)
      }else{
        if(parametrisation == 'noven' & target == 'transform'){
          # (alpha, beta, kappa) to (1., 1. + kappa, kappa)
          params_target[1] <- 1.0/target_alpha
          params_target[2] <- (1.0+params[3])/abs(target_alpha)
        }else{
          stop(paste('wrong parametrisation', parametrisation, 'and target', target))
        }
      }
    }
  }

  return(params_target)
}
