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
@Table(name = "cajas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cajas.findAll", query = "SELECT c FROM Cajas c")
    , @NamedQuery(name = "Cajas.findByIdcajas", query = "SELECT c FROM Cajas c WHERE c.idcajas = :idcajas")
    , @NamedQuery(name = "Cajas.findByCaja", query = "SELECT c FROM Cajas c WHERE c.caja = :caja")
    , @NamedQuery(name = "Cajas.findByCajascol1", query = "SELECT c FROM Cajas c WHERE c.cajascol1 = :cajascol1")
    , @NamedQuery(name = "Cajas.findByHabilitado", query = "SELECT c FROM Cajas c WHERE c.habilitado = :habilitado")})
public class Cajas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcajas")
    private Integer idcajas;
    @Column(name = "caja")
    private String caja;
    @Column(name = "cajascol1")
    private String cajascol1;
    @Column(name = "Habilitado")
    private Boolean habilitado;
    @OneToMany(mappedBy = "caja")
    private Collection<Pedidos> pedidosCollection;

    public Cajas() {
    }

    public Cajas(Integer idcajas) {
        this.idcajas = idcajas;
    }

    public Integer getIdcajas() {
        return idcajas;
    }

    public void setIdcajas(Integer idcajas) {
        this.idcajas = idcajas;
    }

    public String getCaja() {
        return caja;
    }

    public void setCaja(String caja) {
        this.caja = caja;
    }

    public String getCajascol1() {
        return cajascol1;
    }

    public void setCajascol1(String cajascol1) {
        this.cajascol1 = cajascol1;
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
        hash += (idcajas != null ? idcajas.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cajas)) {
            return false;
        }
        Cajas other = (Cajas) object;
        if ((this.idcajas == null && other.idcajas != null) || (this.idcajas != null && !this.idcajas.equals(other.idcajas))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Persistencias.Cajas[ idcajas=" + idcajas + " ]";
    }
    
}
