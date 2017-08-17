/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencias;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author juan
 */
@Entity
@Table(name = "pedidos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pedidos.findAll", query = "SELECT p FROM Pedidos p")
    , @NamedQuery(name = "Pedidos.findByIdpedidos", query = "SELECT p FROM Pedidos p WHERE p.idpedidos = :idpedidos")
    , @NamedQuery(name = "Pedidos.findByCaja", query = "SELECT p FROM Pedidos p WHERE p.caja = :caja")
    , @NamedQuery(name = "Pedidos.findByClinica", query = "SELECT p FROM Pedidos p WHERE p.clinica = :clinica")
    , @NamedQuery(name = "Pedidos.findByPaciente", query = "SELECT p FROM Pedidos p WHERE p.paciente = :paciente")
    , @NamedQuery(name = "Pedidos.findByOrden", query = "SELECT p FROM Pedidos p WHERE p.orden = :orden")
    , @NamedQuery(name = "Pedidos.findByAntagonista", query = "SELECT p FROM Pedidos p WHERE p.antagonista = :antagonista")
    , @NamedQuery(name = "Pedidos.findByFechaEntrada", query = "SELECT p FROM Pedidos p WHERE p.fechaEntrada = :fechaEntrada")
    , @NamedQuery(name = "Pedidos.findByOdontologo", query = "SELECT p FROM Pedidos p WHERE p.odontologo = :odontologo")
    , @NamedQuery(name = "Pedidos.findByTipoTrabajo", query = "SELECT p FROM Pedidos p WHERE p.tipoTrabajo = :tipoTrabajo")
    , @NamedQuery(name = "Pedidos.findByFechaEntrega", query = "SELECT p FROM Pedidos p WHERE p.fechaEntrega = :fechaEntrega")
    , @NamedQuery(name = "Pedidos.findByPrueba1", query = "SELECT p FROM Pedidos p WHERE p.prueba1 = :prueba1")
    , @NamedQuery(name = "Pedidos.findByPrueba2", query = "SELECT p FROM Pedidos p WHERE p.prueba2 = :prueba2")
    , @NamedQuery(name = "Pedidos.findByPrueba3", query = "SELECT p FROM Pedidos p WHERE p.prueba3 = :prueba3")
    , @NamedQuery(name = "Pedidos.findByHabilitado", query = "SELECT p FROM Pedidos p WHERE p.habilitado = :habilitado")})
public class Pedidos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idpedidos")
    private Integer idpedidos;
    @Size(max = 45)
    @Column(name = "caja")
    private String caja;
    @Size(max = 45)
    @Column(name = "clinica")
    private String clinica;
    @Size(max = 45)
    @Column(name = "paciente")
    private String paciente;
    @Size(max = 45)
    @Column(name = "orden")
    private String orden;
    @Size(max = 45)
    @Column(name = "antagonista")
    private String antagonista;
    @Size(max = 45)
    @Column(name = "fecha_entrada")
    private String fechaEntrada;
    @Size(max = 45)
    @Column(name = "odontologo")
    private String odontologo;
    @Size(max = 45)
    @Column(name = "tipo_trabajo")
    private String tipoTrabajo;
    @Size(max = 45)
    @Column(name = "fecha_entrega")
    private String fechaEntrega;
    @Size(max = 45)
    @Column(name = "prueba1")
    private String prueba1;
    @Size(max = 45)
    @Column(name = "prueba2")
    private String prueba2;
    @Size(max = 45)
    @Column(name = "prueba3")
    private String prueba3;
    @Column(name = "Habilitado")
    private Boolean habilitado;

    public Pedidos() {
    }

    public Pedidos(Integer idpedidos) {
        this.idpedidos = idpedidos;
    }

    public Integer getIdpedidos() {
        return idpedidos;
    }

    public void setIdpedidos(Integer idpedidos) {
        this.idpedidos = idpedidos;
    }

    public String getCaja() {
        return caja;
    }

    public void setCaja(String caja) {
        this.caja = caja;
    }

    public String getClinica() {
        return clinica;
    }

    public void setClinica(String clinica) {
        this.clinica = clinica;
    }

    public String getPaciente() {
        return paciente;
    }

    public void setPaciente(String paciente) {
        this.paciente = paciente;
    }

    public String getOrden() {
        return orden;
    }

    public void setOrden(String orden) {
        this.orden = orden;
    }

    public String getAntagonista() {
        return antagonista;
    }

    public void setAntagonista(String antagonista) {
        this.antagonista = antagonista;
    }

    public String getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(String fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public String getOdontologo() {
        return odontologo;
    }

    public void setOdontologo(String odontologo) {
        this.odontologo = odontologo;
    }

    public String getTipoTrabajo() {
        return tipoTrabajo;
    }

    public void setTipoTrabajo(String tipoTrabajo) {
        this.tipoTrabajo = tipoTrabajo;
    }

    public String getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(String fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public String getPrueba1() {
        return prueba1;
    }

    public void setPrueba1(String prueba1) {
        this.prueba1 = prueba1;
    }

    public String getPrueba2() {
        return prueba2;
    }

    public void setPrueba2(String prueba2) {
        this.prueba2 = prueba2;
    }

    public String getPrueba3() {
        return prueba3;
    }

    public void setPrueba3(String prueba3) {
        this.prueba3 = prueba3;
    }

    public Boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Boolean habilitado) {
        this.habilitado = habilitado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idpedidos != null ? idpedidos.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Pedidos)) {
            return false;
        }
        Pedidos other = (Pedidos) object;
        if ((this.idpedidos == null && other.idpedidos != null) || (this.idpedidos != null && !this.idpedidos.equals(other.idpedidos))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Persistencias.Pedidos[ idpedidos=" + idpedidos + " ]";
    }
    
}
