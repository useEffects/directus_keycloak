create A records for your directus and keycloak domain,

change 
 - https://github.com/useEffects/directus_keycloak/blob/68c382f0088c8b6ff153ead837f6407efeb9e160/docker-compose.yml#L34
 - https://github.com/useEffects/directus_keycloak/blob/68c382f0088c8b6ff153ead837f6407efeb9e160/docker-compose.yml#L65
 - https://github.com/useEffects/directus_keycloak/blob/68c382f0088c8b6ff153ead837f6407efeb9e160/docker-compose.yml#L93
 - https://github.com/useEffects/directus_keycloak/blob/4ad6a32a47a96b1f5e08c6373bc1c5c2e7a3d583/nginx/nginx.conf#L3
 - https://github.com/useEffects/directus_keycloak/blob/4ad6a32a47a96b1f5e08c6373bc1c5c2e7a3d583/nginx/nginx.conf#L20
run the project ,for the first time create a client in the `master` realm of keycloak, copy the client secret and change the value of https://github.com/useEffects/directus_keycloak/blob/9baef414b7867bc4e76b047558dc45123599b374/docker-compose.yml#L97
