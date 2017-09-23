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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "sedes")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sedes.findAll", query = "SELECT s FROM Sedes s")
    , @NamedQuery(name = "Sedes.findByIdsede", query = "SELECT s FROM Sedes s WHERE s.idsede = :idsede")
    , @NamedQuery(name = "Sedes.findBySede", query = "SELECT s FROM Sedes s WHERE s.sede = :sede")
    , @NamedQuery(name = "Sedes.findByHabilitado", query = "SELECT s FROM Sedes s WHERE s.habilitado = :habilitado")})
public class Sedes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idsede")
    private Integer idsede;
    @Column(name = "sede")
    private String sede;
    @Column(name = "Habilitado")
    private Boolean habilitado;
    @JoinColumn(name = "clinica", referencedColumnName = "idClinicas")
    @ManyToOne
    private Clinicas clinica;
    @OneToMany(mappedBy = "clinica")
    private Collection<Pedidos> pedidosCollection;

    public Sedes() {
    }

    public Sedes(Integer idsede) {
        this.idsede = idsede;
    }

    public Integer getIdsede() {
        return idsede;
    }

    public void setIdsede(Integer idsede) {
        this.idsede = idsede;
    }

    public String getSede() {
        return sede;
    }

    public void setSede(String sede) {
        this.sede = sede;
    }

    public Boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Boolean habilitado) {
        this.habilitado = habilitado;
    }

    public Clinicas getClinica() {
        return clinica;
    }

    public void setClinica(Clinicas clinica) {
        this.clinica = clinica;
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
        hash += (idsede != null ? idsede.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sedes)) {
            return false;
        }
        Sedes other = (Sedes) object;
        if ((this.idsede == null && other.idsede != null) || (this.idsede != null && !this.idsede.equals(other.idsede))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Persistencias.Sedes[ idsede=" + idsede + " ]";
    }
    
}
