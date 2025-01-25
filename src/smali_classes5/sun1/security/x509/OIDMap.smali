.class public Lsun1/security/x509/OIDMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun1/security/x509/OIDMap$OIDInfo;
    }
.end annotation


# static fields
.field private static final NetscapeCertType_data:[I

.field private static final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun1/security/x509/OIDMap$OIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            "Lsun1/security/x509/OIDMap$OIDInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x7

    new-array v0, v3, [I

    fill-array-data v0, :array_e4

    sput-object v0, Lsun1/security/x509/OIDMap;->NetscapeCertType_data:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun1/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun1/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    const-string v0, "x509.info.extensions.SubjectKeyIdentifier"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/SubjectKeyIdentifierExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.KeyUsage"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/KeyUsageExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.PrivateKeyUsage"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/PrivateKeyUsageExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.SubjectAlternativeName"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/SubjectAlternativeNameExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.IssuerAlternativeName"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/IssuerAlternativeNameExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.BasicConstraints"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/BasicConstraintsExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.CRLNumber"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/CRLNumberExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.CRLReasonCode"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/CRLReasonCodeExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.NameConstraints"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/NameConstraintsExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.PolicyMappings"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/PolicyMappingsExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.AuthorityKeyIdentifier"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/AuthorityKeyIdentifierExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.PolicyConstraints"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/PolicyConstraintsExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.NetscapeCertType"

    new-array v1, v3, [I

    fill-array-data v1, :array_f6

    invoke-static {v1}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-class v2, Lsun1/security/x509/NetscapeCertTypeExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.CertificatePolicies"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/CertificatePoliciesExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.ExtendedKeyUsage"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/ExtendedKeyUsageExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.InhibitAnyPolicy"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/InhibitAnyPolicyExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.CRLDistributionPoints"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/CRLDistributionPointsExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.CertificateIssuer"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/CertificateIssuerExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.AuthorityInfoAccess"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/AuthorityInfoAccessExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.IssuingDistributionPoint"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/IssuingDistributionPointExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.DeltaCRLIndicator"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/DeltaCRLIndicatorExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    const-string v0, "x509.info.extensions.FreshestCRL"

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun1/security/util/ObjectIdentifier;

    const-class v2, Lsun1/security/x509/FreshestCRLExtension;

    invoke-static {v0, v1, v2}, Lsun1/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    return-void

    :array_e4
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data

    :array_f6
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data
.end method

.method private static addInternal(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsun1/security/util/ObjectIdentifier;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Lsun1/security/x509/OIDMap$OIDInfo;

    invoke-direct {v0, p0, p1, p2}, Lsun1/security/x509/OIDMap$OIDInfo;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    sget-object v1, Lsun1/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun1/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getClass(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun1/security/util/ObjectIdentifier;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    sget-object v0, Lsun1/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/OIDMap$OIDInfo;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lsun1/security/x509/OIDMap$OIDInfo;->getClazz()Ljava/lang/Class;

    move-result-object v0

    goto :goto_b
.end method

.method public static getName(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lsun1/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/OIDMap$OIDInfo;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, v0, Lsun1/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    goto :goto_b
.end method
