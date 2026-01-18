
<footer id="footer">
  <div class="footer-contact py-5">
    <div class="container-fluid container-fluid-max-xl">
      <div class="row">
        <div class="col-md-6">
          <h6 class="font-weight-bold mb-3">Canais de Atendimento</h6>
          
          <ul class="list-unstyled">
            <li>
              <a 
                class="d-flex align-items-center h6"
                href="#"
              >
                <i class="fa-regular fa-envelope mr-2"></i>
                SAC - Serviço de atendimento ao cidadão
              </a>
            </li>
            
            <li>
              <a 
                class="d-flex align-items-center h6"
                href="#"
              >
                <i class="fa-solid fa-bullhorn mr-2"></i>
                Ouvidoria
              </a>
            </li>

            <li>
              <a 
                class="d-flex align-items-center h6"
                href="#"
              >
                <i class="fa-solid fa-users mr-2"></i>
                Banco de talentos
              </a>
            </li>

            <li>
              <a 
                class="d-flex align-items-center h6"
                href="#"
              >
                <i class="fa-solid fa-user-plus mr-2 "></i>
                Cadastro de Fornecedores
              </a>
            </li>
          </ul>
        </div>

        <div class="col-md-3">
          <div class="d-flex">
            <i class="fa-solid fa-location-dot mr-2 mt-1"></i>
            
            <div class="address">
              <p class="font-weight-bold mb-3">Sede CNI Brasília</p>
              <p class="h6 font-weight-medium">SBN - Quadra 1 - Bloco C</p>
              <p class="h6 font-weight-medium">Ed. Roberto Simonsen</p>
              <p class="h6 font-weight-medium">Brasília - DF CEP 70040-903</p>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="d-flex">
            <i class="fa-solid fa-location-dot mr-2 mt-1"></i>
            
            <div class="address">
              <p class="font-weight-bold mb-3">Escritório São Paulo</p> 
              <p class="h6 font-weight-medium">Rua Surubim, 504 - Brooklin Novo</p>
              <p class="h6 font-weight-medium">São Paulo - SP - CEP 04571-050</p>
              <p class="h6 font-weight-medium">CNI - Tel. (11) 3040 3860</p>
              <p class="h6 font-weight-medium">IEL - Tel. (11) 3040 3370</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="sub-footer">
    <div class="container-fluid container-fluid-max-xl">
      <ul class="nav">
        <#if (facebookUrl != "")>
          <li class="nav-item">
            <a 
              class="nav-link nav-link-monospaced" 
              href="${facebookUrl}"
              target="_blank"
            >
              <i class="fa-brands fa-facebook-f"></i>
            </a>
          </li>
        </#if>
        
        <#if (XTwitterUrl != "")>
          <li class="nav-item">
            <a 
              class="nav-link nav-link-monospaced" 
              href="${XTwitterUrl}"
              target="_blank"
            >
              <i class="fa-brands fa-x-twitter"></i>
            </a>
          </li>
        </#if>

        <#if (youtubeUrl != "")>
          <li class="nav-item">
            <a 
              class="nav-link nav-link-monospaced" 
              href="${youtubeUrl}"
              target="_blank"
            >
              <i class="fa-brands fa-youtube"></i>
            </a>
          </li>
        </#if>

        <#if (privacyPolicyUrl != "")>
          <li class="nav-item ml-auto">
            <a 
              class="nav-link" 
              href="${privacyPolicyUrl}"
            >
              POLÍTICA DE PRIVACIDADE
            </a>
          </li>
        </#if>
      </ul>
    </div>
  </div>
</footer>