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
@Table(name = "clinicas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Clinicas.findAll", query = "SELECT c FROM Clinicas c")
    , @NamedQuery(name = "Clinicas.findByIdClinicas", query = "SELECT c FROM Clinicas c WHERE c.idClinicas = :idClinicas")
    , @NamedQuery(name = "Clinicas.findByNitClinicas", query = "SELECT c FROM Clinicas c WHERE c.nitClinicas = :nitClinicas")
    , @NamedQuery(name = "Clinicas.findByNombreClinica", query = "SELECT c FROM Clinicas c WHERE c.nombreClinica = :nombreClinica")
    , @NamedQuery(name = "Clinicas.findByDireccionClinica", query = "SELECT c FROM Clinicas c WHERE c.direccionClinica = :direccionClinica")
    , @NamedQuery(name = "Clinicas.findByTelefonoClinica", query = "SELECT c FROM Clinicas c WHERE c.telefonoClinica = :telefonoClinica")
    , @NamedQuery(name = "Clinicas.findByHabilitado", query = "SELECT c FROM Clinicas c WHERE c.habilitado = :habilitado")})
public class Clinicas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idClinicas")
    private Integer idClinicas;
    @Column(name = "NitClinicas")
    private String nitClinicas;
    @Column(name = "NombreClinica")
    private String nombreClinica;
    @Column(name = "DireccionClinica")
    private String direccionClinica;
    @Column(name = "TelefonoClinica")
    private String telefonoClinica;
    @Column(name = "Habilitado")
    private Boolean habilitado;
    @OneToMany(mappedBy = "clinica")
    private Collection<Sedes> sedesCollection;

    public Clinicas() {
    }

    public Clinicas(Integer idClinicas) {
        this.idClinicas = idClinicas;
    }

    public Integer getIdClinicas() {
        return idClinicas;
    }

    public void setIdClinicas(Integer idClinicas) {
        this.idClinicas = idClinicas;
    }

    public String getNitClinicas() {
        return nitClinicas;
    }

    public void setNitClinicas(String nitClinicas) {
        this.nitClinicas = nitClinicas;
    }

    public String getNombreClinica() {
        return nombreClinica;
    }

    public void setNombreClinica(String nombreClinica) {
        this.nombreClinica = nombreClinica;
    }

    public String getDireccionClinica() {
        return direccionClinica;
    }

    public void setDireccionClinica(String direccionClinica) {
        this.direccionClinica = direccionClinica;
    }

    public String getTelefonoClinica() {
        return telefonoClinica;
    }

    public void setTelefonoClinica(String telefonoClinica) {
        this.telefonoClinica = telefonoClinica;
    }

    public Boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Boolean habilitado) {
        this.habilitado = habilitado;
    }

    @XmlTransient
    public Collection<Sedes> getSedesCollection() {
        return sedesCollection;
    }

    public void setSedesCollection(Collection<Sedes> sedesCollection) {
        this.sedesCollection = sedesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idClinicas != null ? idClinicas.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Clinicas)) {
            return false;
        }
        Clinicas other = (Clinicas) object;
        if ((this.idClinicas == null && other.idClinicas != null) || (this.idClinicas != null && !this.idClinicas.equals(other.idClinicas))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Persistencias.Clinicas[ idClinicas=" + idClinicas + " ]";
    }
    
}
