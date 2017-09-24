/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencias;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Daniels
 */
@Entity
@Table(name = "pedidos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pedidos.findAll", query = "SELECT p FROM Pedidos p")
    , @NamedQuery(name = "Pedidos.findByIdpedidos", query = "SELECT p FROM Pedidos p WHERE p.idpedidos = :idpedidos")
    , @NamedQuery(name = "Pedidos.findByPaciente", query = "SELECT p FROM Pedidos p WHERE p.paciente = :paciente")
    , @NamedQuery(name = "Pedidos.findByOrden", query = "SELECT p FROM Pedidos p WHERE p.orden = :orden")
    , @NamedQuery(name = "Pedidos.findByAntagonista", query = "SELECT p FROM Pedidos p WHERE p.antagonista = :antagonista")
    , @NamedQuery(name = "Pedidos.findByFechaEntrada", query = "SELECT p FROM Pedidos p WHERE p.fechaEntrada = :fechaEntrada")
    , @NamedQuery(name = "Pedidos.findByTipoTrabajo", query = "SELECT p FROM Pedidos p WHERE p.tipoTrabajo = :tipoTrabajo")
    , @NamedQuery(name = "Pedidos.findByFechaEntrega", query = "SELECT p FROM Pedidos p WHERE p.fechaEntrega = :fechaEntrega")
    , @NamedQuery(name = "Pedidos.findByHabilitado", query = "SELECT p FROM Pedidos p WHERE p.habilitado = :habilitado")})
public class Pedidos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idpedidos")
    private Integer idpedidos;
    @Column(name = "paciente")
    private String paciente;
    @Column(name = "orden")
    private String orden;
    @Column(name = "antagonista")
    private String antagonista;
    @Column(name = "fecha_entrada")
    @Temporal(TemporalType.DATE)
    private Date fechaEntrada;
    @Column(name = "tipo_trabajo")
    private String tipoTrabajo;
    @Column(name = "fecha_entrega")
    @Temporal(TemporalType.DATE)
    private Date fechaEntrega;
    @Column(name = "Habilitado")
    private Boolean habilitado;
    @JoinColumn(name = "prueba1", referencedColumnName = "idprocesos")
    @ManyToOne
    private Procesos prueba1;
    @JoinColumn(name = "prueba2", referencedColumnName = "idprocesos")
    @ManyToOne
    private Procesos prueba2;
    @JoinColumn(name = "prueba3", referencedColumnName = "idprocesos")
    @ManyToOne
    private Procesos prueba3;
    @JoinColumn(name = "odontologo", referencedColumnName = "idOdontologos")
    @ManyToOne
    private Odontologos odontologo;
    @JoinColumn(name = "caja", referencedColumnName = "idcajas")
    @ManyToOne
    private Cajas caja;
    @JoinColumn(name = "clinica", referencedColumnName = "idsede")
    @ManyToOne
    private Sedes clinica;

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

    public Date getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(Date fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public String getTipoTrabajo() {
        return tipoTrabajo;
    }

    public void setTipoTrabajo(String tipoTrabajo) {
        this.tipoTrabajo = tipoTrabajo;
    }

    public Date getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public Boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Boolean habilitado) {
        this.habilitado = habilitado;
    }

    public Procesos getPrueba1() {
        return prueba1;
    }

    public void setPrueba1(Procesos prueba1) {
        this.prueba1 = prueba1;
    }

    public Procesos getPrueba2() {
        return prueba2;
    }

    public void setPrueba2(Procesos prueba2) {
        this.prueba2 = prueba2;
    }

    public Procesos getPrueba3() {
        return prueba3;
    }

    public void setPrueba3(Procesos prueba3) {
        this.prueba3 = prueba3;
    }

    public Odontologos getOdontologo() {
        return odontologo;
    }

    public void setOdontologo(Odontologos odontologo) {
        this.odontologo = odontologo;
    }

    public Cajas getCaja() {
        return caja;
    }

    public void setCaja(Cajas caja) {
        this.caja = caja;
    }

    public Sedes getClinica() {
        return clinica;
    }

    public void setClinica(Sedes clinica) {
        this.clinica = clinica;
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
