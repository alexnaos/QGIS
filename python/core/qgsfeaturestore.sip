class QgsFeatureStore
{
%TypeHeaderCode
#include <qgsfeaturestore.h>
%End
  public:
    //! Constructor
    QgsFeatureStore();

    //! Constructor
    QgsFeatureStore( const QgsFeatureStore &rhs );

    //! Constructor
    QgsFeatureStore( const QgsFields& fields, const QgsCoordinateReferenceSystem& crs );

    //! Destructor
    ~QgsFeatureStore();

    /** Get fields list */
    QgsFields& fields();

    /** Set fields */
    void setFields( const QgsFields & fields );

    /** Get crs */
    QgsCoordinateReferenceSystem crs() const;

    /** Set crs */
    void setCrs( const QgsCoordinateReferenceSystem& crs );

    /** Add feature. Feature's fields will be set to pointer to the store fields.
     * @param feature
     * @note added in 2.1
     */
    void addFeature ( const QgsFeature& feature );

    /** Get features list reference */
    QgsFeatureList& features();

    /** Set map of optional parameters */
    void setParams( const QMap<QString, QVariant> &theParams );

    /** Get map of optional parameters */
    QMap<QString, QVariant> params() const;
};
