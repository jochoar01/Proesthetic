/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencias;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Daniels
 */
@Entity
@Table(name = "odontologos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Odontologos.findAll", query = "SELECT o FROM Odontologos o")
    , @NamedQuery(name = "Odontologos.findByIdOdontologos", query = "SELECT o FROM Odontologos o WHERE o.idOdontologos = :idOdontologos")
    , @NamedQuery(name = "Odontologos.findByNombreOdontologo", query = "SELECT o FROM Odontologos o WHERE o.nombreOdontologo = :nombreOdontologo")
    , @NamedQuery(name = "Odontologos.findByTelefonoOdontologo", query = "SELECT o FROM Odontologos o WHERE o.telefonoOdontologo = :telefonoOdontologo")
    , @NamedQuery(name = "Odontologos.findByEmailOdontologo", query = "SELECT o FROM Odontologos o WHERE o.emailOdontologo = :emailOdontologo")
    , @NamedQuery(name = "Odontologos.findByHabilitado", query = "SELECT o FROM Odontologos o WHERE o.habilitado = :habilitado")})
public class Odontologos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idOdontologos")
    private Integer idOdontologos;
    @Column(name = "NombreOdontologo")
    private String nombreOdontologo;
    @Column(name = "TelefonoOdontologo")
    private String telefonoOdontologo;
    @Column(name = "EmailOdontologo")
    private String emailOdontologo;
    @Column(name = "Habilitado")
    private Boolean habilitado;
    @OneToMany(mappedBy = "odontologoid")
    private Collection<Pedidos> pedidosCollection;

    public Odontologos() {
    }

    public Odontologos(Integer idOdontologos) {
        this.idOdontologos = idOdontologos;
    }

    public Integer getIdOdontologos() {
        return idOdontologos;
    }

    public void setIdOdontologos(Integer idOdontologos) {
        this.idOdontologos = idOdontologos;
    }

    public String getNombreOdontologo() {
        return nombreOdontologo;
    }

    public void setNombreOdontologo(String nombreOdontologo) {
        this.nombreOdontologo = nombreOdontologo;
    }

    public String getTelefonoOdontologo() {
        return telefonoOdontologo;
    }

    public void setTelefonoOdontologo(String telefonoOdontologo) {
        this.telefonoOdontologo = telefonoOdontologo;
    }

    public String getEmailOdontologo() {
        return emailOdontologo;
    }

    public void setEmailOdontologo(String emailOdontologo) {
        this.emailOdontologo = emailOdontologo;
    }

    public Boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Boolean habilitado) {
        this.habilitado = habilitado;
    }

    @XmlTransient
    public Collection<Pedidos> getPedidosCollection() {
        return pedidosCollection;
    }

    public void setPedidosCollection(Collection<Pedidos> pedidosCollection) {
        this.pedidosCollection = pedidosCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idOdontologos != null ? idOdontologos.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Odontologos)) {
            return false;
        }
        Odontologos other = (Odontologos) object;
        if ((this.idOdontologos == null && other.idOdontologos != null) || (this.idOdontologos != null && !this.idOdontologos.equals(other.idOdontologos))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Persistencias.Odontologos[ idOdontologos=" + idOdontologos + " ]";
    }
    
}
