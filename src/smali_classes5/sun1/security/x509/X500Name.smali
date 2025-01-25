.class public Lsun1/security/x509/X500Name;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/Principal;
.implements Lsun1/security/x509/GeneralNameInterface;


# static fields
.field private static final DNQUALIFIER_DATA:[I

.field public static final DNQUALIFIER_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final DOMAIN_COMPONENT_DATA:[I

.field public static final DOMAIN_COMPONENT_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final GENERATIONQUALIFIER_DATA:[I

.field public static final GENERATIONQUALIFIER_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final GIVENNAME_DATA:[I

.field public static final GIVENNAME_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final INITIALS_DATA:[I

.field public static final INITIALS_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final SERIALNUMBER_DATA:[I

.field public static final SERIALNUMBER_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final SURNAME_DATA:[I

.field public static final SURNAME_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final commonName_data:[I

.field public static final commonName_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final countryName_data:[I

.field public static final countryName_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final internedOIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            "Lsun1/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final ipAddress_data:[I

.field public static final ipAddress_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final localityName_data:[I

.field public static final localityName_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final orgName_data:[I

.field public static final orgName_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final orgUnitName_data:[I

.field public static final orgUnitName_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final stateName_data:[I

.field public static final stateName_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final streetAddress_data:[I

.field public static final streetAddress_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final title_data:[I

.field public static final title_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final userid_data:[I

.field public static final userid_oid:Lsun1/security/util/ObjectIdentifier;


# instance fields
.field private canonicalDn:Ljava/lang/String;

.field private dn:Ljava/lang/String;

.field private names:[Lsun1/security/x509/RDN;

.field private rfc2253Dn:Ljava/lang/String;

.field private x500Principal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun1/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    sput-object v1, Lsun1/security/x509/X500Name;->commonName_data:[I

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x4

    aput v4, v2, v3

    sput-object v2, Lsun1/security/x509/X500Name;->SURNAME_DATA:[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x4

    aput v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x5

    aput v5, v3, v4

    sput-object v3, Lsun1/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x5

    aput v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x6

    aput v6, v4, v5

    sput-object v4, Lsun1/security/x509/X500Name;->countryName_data:[I

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    aput v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x4

    aput v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x7

    aput v7, v5, v6

    sput-object v5, Lsun1/security/x509/X500Name;->localityName_data:[I

    const/4 v6, 0x4

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x5

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x4

    aput v8, v6, v7

    const/4 v7, 0x3

    const/16 v8, 0x8

    aput v8, v6, v7

    sput-object v6, Lsun1/security/x509/X500Name;->stateName_data:[I

    const/4 v7, 0x4

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x2

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x5

    aput v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    aput v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    aput v9, v7, v8

    sput-object v7, Lsun1/security/x509/X500Name;->streetAddress_data:[I

    const/4 v8, 0x4

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x5

    aput v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x4

    aput v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0xa

    aput v10, v8, v9

    sput-object v8, Lsun1/security/x509/X500Name;->orgName_data:[I

    const/4 v9, 0x4

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x5

    aput v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x4

    aput v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0xb

    aput v11, v9, v10

    sput-object v9, Lsun1/security/x509/X500Name;->orgUnitName_data:[I

    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x5

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x4

    aput v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0xc

    aput v12, v10, v11

    sput-object v10, Lsun1/security/x509/X500Name;->title_data:[I

    const/4 v11, 0x4

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x2

    aput v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x5

    aput v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x4

    aput v13, v11, v12

    const/4 v12, 0x3

    const/16 v13, 0x2a

    aput v13, v11, v12

    sput-object v11, Lsun1/security/x509/X500Name;->GIVENNAME_DATA:[I

    const/4 v12, 0x4

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, 0x2

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x5

    aput v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x4

    aput v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, 0x2b

    aput v14, v12, v13

    sput-object v12, Lsun1/security/x509/X500Name;->INITIALS_DATA:[I

    const/4 v13, 0x4

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x2

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x5

    aput v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x4

    aput v15, v13, v14

    const/4 v14, 0x3

    const/16 v15, 0x2c

    aput v15, v13, v14

    sput-object v13, Lsun1/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    const/4 v14, 0x4

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x2

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x5

    aput v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x4

    aput v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x2e

    aput v16, v14, v15

    sput-object v14, Lsun1/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    const/16 v15, 0xb

    new-array v15, v15, [I

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x3

    aput v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x6

    aput v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x1

    aput v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x4

    aput v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x1

    aput v17, v15, v16

    const/16 v16, 0x6

    const/16 v17, 0x2a

    aput v17, v15, v16

    const/16 v16, 0x7

    const/16 v17, 0x2

    aput v17, v15, v16

    const/16 v16, 0x8

    const/16 v17, 0xb

    aput v17, v15, v16

    const/16 v16, 0x9

    const/16 v17, 0x2

    aput v17, v15, v16

    const/16 v16, 0xa

    const/16 v17, 0x1

    aput v17, v15, v16

    sput-object v15, Lsun1/security/x509/X500Name;->ipAddress_data:[I

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x9

    aput v18, v16, v17

    const/16 v17, 0x2

    const/16 v18, 0x926

    aput v18, v16, v17

    const/16 v17, 0x3

    const v18, 0x124f92c

    aput v18, v16, v17

    const/16 v17, 0x4

    const/16 v18, 0x64

    aput v18, v16, v17

    const/16 v17, 0x5

    const/16 v18, 0x1

    aput v18, v16, v17

    const/16 v17, 0x6

    const/16 v18, 0x19

    aput v18, v16, v17

    sput-object v16, Lsun1/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x9

    aput v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x926

    aput v19, v17, v18

    const/16 v18, 0x3

    const v19, 0x124f92c

    aput v19, v17, v18

    const/16 v18, 0x4

    const/16 v19, 0x64

    aput v19, v17, v18

    const/16 v18, 0x5

    const/16 v19, 0x1

    aput v19, v17, v18

    const/16 v18, 0x6

    const/16 v19, 0x1

    aput v19, v17, v18

    sput-object v17, Lsun1/security/x509/X500Name;->userid_data:[I

    invoke-static {v1}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->commonName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v3}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->SERIALNUMBER_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v4}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->countryName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v5}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->localityName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v8}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->orgName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v9}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->orgUnitName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v6}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->stateName_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v7}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->streetAddress_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v10}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->title_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v14}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->DNQUALIFIER_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v2}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->SURNAME_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v11}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->GIVENNAME_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v12}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->INITIALS_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v13}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v15}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->ipAddress_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v16 .. v16}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v17 .. v17}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/X500Name;->userid_oid:Lsun1/security/util/ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun1/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lsun1/security/x509/RDN;

    iput-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    const/4 v1, 0x5

    new-instance v2, Lsun1/security/x509/RDN;

    invoke-direct {v2, v5}, Lsun1/security/x509/RDN;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v0, v0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    new-instance v1, Lsun1/security/x509/AVA;

    sget-object v2, Lsun1/security/x509/X500Name;->commonName_oid:Lsun1/security/util/ObjectIdentifier;

    new-instance v3, Lsun1/security/util/DerValue;

    invoke-direct {v3, p1}, Lsun1/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun1/security/x509/AVA;-><init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    new-instance v1, Lsun1/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun1/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v8

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v0, v0, v8

    iget-object v0, v0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    new-instance v1, Lsun1/security/x509/AVA;

    sget-object v2, Lsun1/security/x509/X500Name;->orgUnitName_oid:Lsun1/security/util/ObjectIdentifier;

    new-instance v3, Lsun1/security/util/DerValue;

    invoke-direct {v3, p2}, Lsun1/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun1/security/x509/AVA;-><init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    new-instance v1, Lsun1/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun1/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v7

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v0, v0, v7

    iget-object v0, v0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    new-instance v1, Lsun1/security/x509/AVA;

    sget-object v2, Lsun1/security/x509/X500Name;->orgName_oid:Lsun1/security/util/ObjectIdentifier;

    new-instance v3, Lsun1/security/util/DerValue;

    invoke-direct {v3, p3}, Lsun1/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun1/security/x509/AVA;-><init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    new-instance v1, Lsun1/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun1/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v0, v0, v6

    iget-object v0, v0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    new-instance v1, Lsun1/security/x509/AVA;

    sget-object v2, Lsun1/security/x509/X500Name;->localityName_oid:Lsun1/security/util/ObjectIdentifier;

    new-instance v3, Lsun1/security/util/DerValue;

    invoke-direct {v3, p4}, Lsun1/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun1/security/x509/AVA;-><init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    new-instance v1, Lsun1/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun1/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v0, v0, v5

    iget-object v0, v0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    new-instance v1, Lsun1/security/x509/AVA;

    sget-object v2, Lsun1/security/x509/X500Name;->stateName_oid:Lsun1/security/util/ObjectIdentifier;

    new-instance v3, Lsun1/security/util/DerValue;

    invoke-direct {v3, p5}, Lsun1/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun1/security/x509/AVA;-><init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    new-instance v1, Lsun1/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun1/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    new-instance v1, Lsun1/security/x509/AVA;

    sget-object v2, Lsun1/security/x509/X500Name;->countryName_oid:Lsun1/security/util/ObjectIdentifier;

    new-instance v3, Lsun1/security/util/DerValue;

    invoke-direct {v3, p6}, Lsun1/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun1/security/x509/AVA;-><init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V

    aput-object v1, v0, v4

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lsun1/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lsun1/security/x509/X500Name;->parseDER(Lsun1/security/util/DerInputStream;)V

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun1/security/x509/X500Name;-><init>(Lsun1/security/util/DerInputStream;)V

    return-void
.end method

.method static countQuotes(Ljava/lang/String;II)I
    .registers 8

    const/16 v4, 0x22

    const/4 v0, 0x0

    move v1, p1

    :goto_4
    if-lt v1, p2, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_f

    if-eq v1, p1, :cond_1f

    :cond_f
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_21

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_21

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private static escaped(IILjava/lang/String;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v5, 0x5c

    if-ne p0, v1, :cond_10

    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_10

    :cond_e
    move v0, v1

    :goto_f
    return v0

    :cond_10
    if-le p0, v1, :cond_22

    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_22

    add-int/lit8 v0, p0, -0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_e

    :cond_22
    if-le p0, v1, :cond_4a

    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_4a

    add-int/lit8 v0, p0, -0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_4a

    add-int/lit8 v3, p0, -0x1

    move v0, v2

    :goto_37
    if-ge v3, p1, :cond_3f

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_3f
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_47

    add-int/lit8 v0, v0, 0x1

    :cond_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_37

    :cond_4a
    move v0, v2

    goto :goto_f
.end method

.method private generateDN()V
    .registers 4

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lsun1/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lsun1/security/x509/X500Name;->dn:Ljava/lang/String;

    return-void

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    if-eqz v0, :cond_20

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-gez v0, :cond_25

    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_25
    iget-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_31

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    iget-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun1/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e
.end method

.method private generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v0, v0

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-gez v0, :cond_1b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_1b
    iget-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_27

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_27
    iget-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun1/security/x509/RDN;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_14
.end method

.method static intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;
    .registers 3

    sget-object v1, Lsun1/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/util/ObjectIdentifier;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-interface {v1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    goto :goto_a
.end method

.method private isWithinSubtree(Lsun1/security/x509/X500Name;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    if-eqz p1, :cond_4

    iget-object v0, p1, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v3, v2

    if-eqz v3, :cond_4

    array-length v2, v2

    array-length v0, v0

    if-lt v2, v0, :cond_4

    move v0, v1

    :goto_16
    iget-object v2, p1, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v3, v3, v0

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Lsun1/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private parseDER(Lsun1/security/util/DerInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x5

    :try_start_7
    invoke-virtual {p1, v2}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_12

    move-result-object v1

    :goto_b
    if-nez v1, :cond_2c

    new-array v0, v0, [Lsun1/security/x509/RDN;

    iput-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    :cond_11
    return-void

    :catch_12
    move-exception v2

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_b

    :cond_17
    new-instance v2, Lsun1/security/util/DerInputStream;

    new-instance v3, Lsun1/security/util/DerValue;

    const/16 v4, 0x30

    invoke-direct {v3, v4, v1}, Lsun1/security/util/DerValue;-><init>(B[B)V

    invoke-virtual {v3}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v2, v5}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v1

    goto :goto_b

    :cond_2c
    array-length v2, v1

    new-array v2, v2, [Lsun1/security/x509/RDN;

    iput-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    :goto_31
    array-length v2, v1

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    new-instance v3, Lsun1/security/x509/RDN;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lsun1/security/x509/RDN;-><init>(Lsun1/security/util/DerValue;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31
.end method

.method private parseDN(Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x3b

    const/16 v7, 0x2c

    const/4 v4, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    :cond_d
    new-array v0, v4, [Lsun1/security/x509/RDN;

    iput-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, p1, p2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lsun1/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v5, v4

    move v2, v4

    move v3, v4

    :goto_29
    if-gez v0, :cond_4b

    if-gez v1, :cond_4b

    new-instance v0, Lsun1/security/x509/RDN;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lsun1/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lsun1/security/x509/RDN;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun1/security/x509/RDN;

    iput-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    goto :goto_11

    :cond_4b
    if-gez v1, :cond_78

    :goto_4d
    invoke-static {p1, v5, v0}, Lsun1/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v1

    add-int/2addr v1, v3

    if-ltz v0, :cond_7f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7f

    invoke-static {v0, v5, p1}, Lsun1/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7f

    new-instance v1, Lsun1/security/x509/RDN;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lsun1/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    move v3, v4

    :goto_6d
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_29

    :cond_78
    if-ltz v0, :cond_81

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4d

    :cond_7f
    move v3, v1

    goto :goto_6d

    :cond_81
    move v0, v1

    goto :goto_4d
.end method


# virtual methods
.method public asX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public constrains(Lsun1/security/x509/GeneralNameInterface;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    if-nez p1, :cond_4

    :cond_2
    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-interface {p1}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    check-cast p1, Lsun1/security/x509/X500Name;

    invoke-virtual {p1, p0}, Lsun1/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_3

    :cond_15
    iget-object v0, p1, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v0, v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x2

    goto :goto_3

    :cond_1c
    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v0, v0

    if-nez v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto :goto_3

    :cond_23
    invoke-direct {p1, p0}, Lsun1/security/x509/X500Name;->isWithinSubtree(Lsun1/security/x509/X500Name;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0, p1}, Lsun1/security/x509/X500Name;->isWithinSubtree(Lsun1/security/x509/X500Name;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x3

    goto :goto_3
.end method

.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v3, v2

    if-lt v0, v3, :cond_11

    const/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_11
    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lsun1/security/x509/RDN;->encode(Lsun1/security/util/DerOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v1, p1, Lsun1/security/x509/X500Name;

    if-eqz v1, :cond_4

    check-cast p1, Lsun1/security/x509/X500Name;

    iget-object v1, p0, Lsun1/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v2, p1, Lsun1/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_18
    iget-object v1, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v2, v1

    iget-object v1, p1, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v1, v1

    if-ne v2, v1, :cond_4

    move v1, v0

    :goto_21
    if-lt v1, v2, :cond_30

    invoke-virtual {p0}, Lsun1/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lsun1/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_30
    iget-object v3, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v3, v3, v1

    iget-object v4, p1, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v4, v4, v1

    iget-object v3, v3, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    array-length v3, v3

    iget-object v4, v4, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    array-length v4, v4

    if-ne v3, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lsun1/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC2253CanonicalName()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lsun1/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v0, v0

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_c
    iput-object v0, p0, Lsun1/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    goto :goto_4

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-gez v0, :cond_22

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_22
    iget-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2e

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2e
    iget-object v2, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lsun1/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b
.end method

.method public getRFC2253Name()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun1/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lsun1/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Lsun1/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    goto :goto_a

    :cond_12
    invoke-direct {p0, p1}, Lsun1/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lsun1/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    array-length v2, v1

    move v1, v0

    :goto_5
    if-lt v1, v2, :cond_9

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    iget-object v3, p0, Lsun1/security/x509/X500Name;->names:[Lsun1/security/x509/RDN;

    aget-object v3, v3, v1

    iget-object v3, v3, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    array-length v3, v3

    if-nez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X500Name;->dn:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lsun1/security/x509/X500Name;->generateDN()V

    :cond_7
    iget-object v0, p0, Lsun1/security/x509/X500Name;->dn:Ljava/lang/String;

    return-object v0
.end method
