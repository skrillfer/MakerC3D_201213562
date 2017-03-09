package org.compi2.codigo3d.parser;

/**
 * Clase sencilla para sintetizar información entre producciones.
 * Cuenta con un único atributo de tipo String, pero pueden agregársele
 * los atributos que se consideren necesarios.
 * @author esvux
 */
public class NodoC3D {
    private String cad;
    private String etiquetaTrue;
    private String etiquetaFalse;
    private String etiquetaTrueAux;
    private String etiquetaFalseAux;
    private String textosAux;    
    public NodoC3D(String cad) {
        this.cad = cad;
    }
    
    public String getCad(){
        return cad;
    }

    /**
     * @param cad the cad to set
     */
    public void setCad(String cad) {
        this.cad = cad;
    }

    /**
     * @return the etiquetaTrue
     */
    public String getEtiquetaTrue() {
        return etiquetaTrue;
    }

    /**
     * @param etiquetaTrue the etiquetaTrue to set
     */
    public void setEtiquetaTrue(String etiquetaTrue) {
        this.etiquetaTrue = etiquetaTrue;
    }

    /**
     * @return the etiquetaFalse
     */
    public String getEtiquetaFalse() {
        return etiquetaFalse;
    }

    /**
     * @param etiquetaFalse the etiquetaFalse to set
     */
    public void setEtiquetaFalse(String etiquetaFalse) {
        this.etiquetaFalse = etiquetaFalse;
    }

    /**
     * @return the etiquetaTrueAux
     */
    public String getEtiquetaTrueAux() {
        return etiquetaTrueAux;
    }

    /**
     * @param etiquetaTrueAux the etiquetaTrueAux to set
     */
    public void setEtiquetaTrueAux(String etiquetaTrueAux) {
        this.etiquetaTrueAux = etiquetaTrueAux;
    }

    /**
     * @return the etiquetaFalseAux
     */
    public String getEtiquetaFalseAux() {
        return etiquetaFalseAux;
    }

    /**
     * @param etiquetaFalseAux the etiquetaFalseAux to set
     */
    public void setEtiquetaFalseAux(String etiquetaFalseAux) {
        this.etiquetaFalseAux = etiquetaFalseAux;
    }

    /**
     * @return the textosAux
     */
    public String getTextosAux() {
        return textosAux;
    }

    /**
     * @param textosAux the textosAux to set
     */
    public void setTextosAux(String textosAux) {
        this.textosAux = textosAux;
    }
        
}
