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
@Table(name = "procesos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Procesos.findAll", query = "SELECT p FROM Procesos p")
    , @NamedQuery(name = "Procesos.findByIdprocesos", query = "SELECT p FROM Procesos p WHERE p.idprocesos = :idprocesos")
    , @NamedQuery(name = "Procesos.findByTrabajo", query = "SELECT p FROM Procesos p WHERE p.trabajo = :trabajo")
    , @NamedQuery(name = "Procesos.findByProceso", query = "SELECT p FROM Procesos p WHERE p.proceso = :proceso")
    , @NamedQuery(name = "Procesos.findByHabilitado", query = "SELECT p FROM Procesos p WHERE p.habilitado = :habilitado")})
public class Procesos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idprocesos")
    private Integer idprocesos;
    @Column(name = "trabajo")
    private String trabajo;
    @Column(name = "proceso")
    private String proceso;
    @Column(name = "Habilitado")
    private String habilitado;
    @OneToMany(mappedBy = "prueba1")
    private Collection<Pedidos> pedidosCollection;
    @OneToMany(mappedBy = "prueba2")
    private Collection<Pedidos> pedidosCollection1;
    @OneToMany(mappedBy = "prueba3")
    private Collection<Pedidos> pedidosCollection2;

    public Procesos() {
    }

    public Procesos(Integer idprocesos) {
        this.idprocesos = idprocesos;
    }

    public Integer getIdprocesos() {
        return idprocesos;
    }

    public void setIdprocesos(Integer idprocesos) {
        this.idprocesos = idprocesos;
    }

    public String getTrabajo() {
        return trabajo;
    }

    public void setTrabajo(String trabajo) {
        this.trabajo = trabajo;
    }

    public String getProceso() {
        return proceso;
    }

    public void setProceso(String proceso) {
        this.proceso = proceso;
    }

    public String getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(String habilitado) {
        this.habilitado = habilitado;
    }

    @XmlTransient
    public Collection<Pedidos> getPedidosCollection() {
        return pedidosCollection;
    }

    public void setPedidosCollection(Collection<Pedidos> pedidosCollection) {
        this.pedidosCollection = pedidosCollection;
    }

    @XmlTransient
    public Collection<Pedidos> getPedidosCollection1() {
        return pedidosCollection1;
    }

    public void setPedidosCollection1(Collection<Pedidos> pedidosCollection1) {
        this.pedidosCollection1 = pedidosCollection1;
    }

    @XmlTransient
    public Collection<Pedidos> getPedidosCollection2() {
        return pedidosCollection2;
    }

    public void setPedidosCollection2(Collection<Pedidos> pedidosCollection2) {
        this.pedidosCollection2 = pedidosCollection2;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idprocesos != null ? idprocesos.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Procesos)) {
            return false;
        }
        Procesos other = (Procesos) object;
        if ((this.idprocesos == null && other.idprocesos != null) || (this.idprocesos != null && !this.idprocesos.equals(other.idprocesos))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Persistencias.Procesos[ idprocesos=" + idprocesos + " ]";
    }
    
}
