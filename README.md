create A records for your directus and keycloak domain,

change 
 - https://github.com/useEffects/directus_keycloak/blob/3a6d888ac860888a97ca8685264cd4fa61488785/docker-compose.yml#L34
 - https://github.com/useEffects/directus_keycloak/blob/3a6d888ac860888a97ca8685264cd4fa61488785/docker-compose.yml#L65
 - https://github.com/useEffects/directus_keycloak/blob/3a6d888ac860888a97ca8685264cd4fa61488785/nginx/nginx.conf#L3
 - https://github.com/useEffects/directus_keycloak/blob/3a6d888ac860888a97ca8685264cd4fa61488785/nginx/nginx.conf#L20
run the project ,for the first time create a client in the `master` realm of keycloak, copy the client secret and change the value of https://github.com/useEffects/directus_keycloak/blob/3a6d888ac860888a97ca8685264cd4fa61488785/docker-compose.yml#L97
