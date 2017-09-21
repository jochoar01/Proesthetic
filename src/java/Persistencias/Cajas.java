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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Daniel Lopez
 */
@Entity
@Table(name = "cajas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cajas.findAll", query = "SELECT c FROM Cajas c"),
    @NamedQuery(name = "Cajas.findById", query = "SELECT c FROM Cajas c WHERE c.id = :id"),
    @NamedQuery(name = "Cajas.findByCaja", query = "SELECT c FROM Cajas c WHERE c.caja = :caja"),
    @NamedQuery(name = "Cajas.findByHabilitado", query = "SELECT c FROM Cajas c WHERE c.habilitado = :habilitado")})
public class Cajas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "Caja")
    private String caja;
    @Basic(optional = false)
    @Column(name = "Habilitado")
    private boolean habilitado;

    public Cajas() {
    }

    public Cajas(Integer id) {
        this.id = id;
    }

    public Cajas(Integer id, String caja, boolean habilitado) {
        this.id = id;
        this.caja = caja;
        this.habilitado = habilitado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCaja() {
        return caja;
    }

    public void setCaja(String caja) {
        this.caja = caja;
    }

    public boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(boolean habilitado) {
        this.habilitado = habilitado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cajas)) {
            return false;
        }
        Cajas other = (Cajas) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Persistencias.Cajas[ id=" + id + " ]";
    }
    
}
