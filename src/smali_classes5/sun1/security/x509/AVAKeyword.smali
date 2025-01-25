.class Lsun1/security/x509/AVAKeyword;
.super Ljava/lang/Object;


# static fields
.field private static final keywordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun1/security/x509/AVAKeyword;",
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
            "Lsun1/security/x509/AVAKeyword;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keyword:Ljava/lang/String;

.field private oid:Lsun1/security/util/ObjectIdentifier;

.field private rfc1779Compliant:Z

.field private rfc2253Compliant:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun1/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun1/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "CN"

    sget-object v2, Lsun1/security/x509/X500Name;->commonName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "C"

    sget-object v2, Lsun1/security/x509/X500Name;->countryName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "L"

    sget-object v2, Lsun1/security/x509/X500Name;->localityName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "S"

    sget-object v2, Lsun1/security/x509/X500Name;->stateName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "ST"

    sget-object v2, Lsun1/security/x509/X500Name;->stateName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "O"

    sget-object v2, Lsun1/security/x509/X500Name;->orgName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "OU"

    sget-object v2, Lsun1/security/x509/X500Name;->orgUnitName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "T"

    sget-object v2, Lsun1/security/x509/X500Name;->title_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "IP"

    sget-object v2, Lsun1/security/x509/X500Name;->ipAddress_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "STREET"

    sget-object v2, Lsun1/security/x509/X500Name;->streetAddress_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "DC"

    sget-object v2, Lsun1/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v4}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "DNQUALIFIER"

    sget-object v2, Lsun1/security/x509/X500Name;->DNQUALIFIER_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "DNQ"

    sget-object v2, Lsun1/security/x509/X500Name;->DNQUALIFIER_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "SURNAME"

    sget-object v2, Lsun1/security/x509/X500Name;->SURNAME_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "GIVENNAME"

    sget-object v2, Lsun1/security/x509/X500Name;->GIVENNAME_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "INITIALS"

    sget-object v2, Lsun1/security/x509/X500Name;->INITIALS_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "GENERATION"

    sget-object v2, Lsun1/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "EMAIL"

    sget-object v2, Lsun1/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "EMAILADDRESS"

    sget-object v2, Lsun1/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "UID"

    sget-object v2, Lsun1/security/x509/X500Name;->userid_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v4}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    new-instance v0, Lsun1/security/x509/AVAKeyword;

    const-string v1, "SERIALNUMBER"

    sget-object v2, Lsun1/security/x509/X500Name;->SERIALNUMBER_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun1/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lsun1/security/util/ObjectIdentifier;ZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    iput-object p2, p0, Lsun1/security/x509/AVAKeyword;->oid:Lsun1/security/util/ObjectIdentifier;

    iput-boolean p3, p0, Lsun1/security/x509/AVAKeyword;->rfc1779Compliant:Z

    iput-boolean p4, p0, Lsun1/security/x509/AVAKeyword;->rfc2253Compliant:Z

    sget-object v0, Lsun1/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun1/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static getKeyword(Lsun1/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun1/security/util/ObjectIdentifier;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    invoke-virtual {p0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_39

    sget-object v0, Lsun1/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/AVAKeyword;

    if-eqz v0, :cond_27

    invoke-direct {v0, p1}, Lsun1/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v0, v0, Lsun1/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x3

    if-eq p1, v0, :cond_8a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OID."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v4, :cond_7a

    if-gt v0, v7, :cond_7a

    if-le v0, v5, :cond_50

    if-lt v0, v6, :cond_7a

    :cond_50
    const/4 v0, 0x1

    :goto_51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_63

    if-gt v2, v7, :cond_63

    if-le v2, v5, :cond_6f

    if-ge v2, v6, :cond_6f

    :cond_63
    const/16 v3, 0x30

    if-lt v2, v3, :cond_6b

    const/16 v3, 0x39

    if-le v2, v3, :cond_6f

    :cond_6b
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_72

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyword character is not a letter, digit, or underscore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyword does not start with letter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyword cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    move-object v0, v1

    goto :goto_26
.end method

.method static getOID(Ljava/lang/String;ILjava/util/Map;)Lsun1/security/util/ObjectIdentifier;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lsun1/security/util/ObjectIdentifier;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_50

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    move-object v1, v0

    :goto_1c
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_bb

    sget-object v0, Lsun1/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/AVAKeyword;

    if-eqz v0, :cond_56

    invoke-direct {v0, p1}, Lsun1/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v0, v0, Lsun1/security/x509/AVAKeyword;->oid:Lsun1/security/util/ObjectIdentifier;

    :goto_36
    return-object v0

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid leading or trailing space in keyword \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1c

    :cond_56
    const/4 v0, 0x2

    if-ne p1, v0, :cond_95

    const-string v0, "OID."

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    :goto_61
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_a0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_a0

    move v0, v2

    :goto_79
    if-eqz v0, :cond_a2

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_36

    :cond_81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid RFC1779 keyword: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_95
    if-ne p1, v2, :cond_66

    const-string v0, "OID."

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_61

    :cond_a0
    move v0, v3

    goto :goto_79

    :cond_a2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid keyword \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bb
    new-instance v1, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v1, v0}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_36
.end method

.method static hasKeyword(Lsun1/security/util/ObjectIdentifier;I)Z
    .registers 3

    sget-object v0, Lsun1/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/AVAKeyword;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-direct {v0, p1}, Lsun1/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v0

    goto :goto_b
.end method

.method private isCompliant(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lsun1/security/x509/AVAKeyword;->rfc2253Compliant:Z

    :cond_b
    :goto_b
    return v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid standard "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    iget-boolean v0, p0, Lsun1/security/x509/AVAKeyword;->rfc1779Compliant:Z

    goto :goto_b
.end method
