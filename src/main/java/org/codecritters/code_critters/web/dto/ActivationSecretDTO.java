package org.codecritters.code_critters.web.dto;

/**
 * DTO for the profile activation secret.
 */
public class ActivationSecretDTO {

    private String secret;

    public ActivationSecretDTO() {
    }

    public ActivationSecretDTO(String secret) {
        this.secret = secret;
    }

    public String getSecret() {
        return secret;
    }

    public void setSecret(String secret) {
        this.secret = secret;
    }
}
