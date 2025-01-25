.class public Lsun1/security/pkcs/PKCS9Attribute;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/util/DerEncoder;


# static fields
.field public static final CHALLENGE_PASSWORD_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final CONTENT_TYPE_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final COUNTERSIGNATURE_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final EMAIL_ADDRESS_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final EXTENSION_REQUEST_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final ISSUER_SERIALNUMBER_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final MESSAGE_DIGEST_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final NAME_OID_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun1/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final OID_NAME_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PKCS9_OIDS:[Lsun1/security/util/ObjectIdentifier;

.field private static final PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

.field public static final SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final SIGNING_CERTIFICATE_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final SIGNING_TIME_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final SINGLE_VALUED:[Z

.field public static final SMIME_CAPABILITY_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_ADDRESS_OID:Lsun1/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_NAME_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final VALUE_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final debug:Lsun1/security/util/Debug;


# instance fields
.field private index:I

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v0, "jar"

    invoke-static {v0}, Lsun1/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun1/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->debug:Lsun1/security/util/Debug;

    const/16 v0, 0x12

    new-array v0, v0, [Lsun1/security/util/ObjectIdentifier;

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun1/security/util/ObjectIdentifier;

    move v0, v1

    :goto_14
    sget-object v2, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun1/security/util/ObjectIdentifier;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-lt v0, v3, :cond_33d

    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_362

    invoke-static {v3}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v3

    aput-object v3, v2, v0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_378

    invoke-static {v3}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v3

    aput-object v3, v2, v0

    aget-object v0, v2, v1

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun1/security/util/ObjectIdentifier;

    aget-object v0, v2, v7

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_NAME_OID:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x3

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun1/security/util/ObjectIdentifier;

    aget-object v0, v2, v9

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x5

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->SIGNING_TIME_OID:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x6

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->COUNTERSIGNATURE_OID:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x7

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->CHALLENGE_PASSWORD_OID:Lsun1/security/util/ObjectIdentifier;

    const/16 v0, 0x8

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_ADDRESS_OID:Lsun1/security/util/ObjectIdentifier;

    const/16 v0, 0x9

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun1/security/util/ObjectIdentifier;

    const/16 v0, 0xa

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->ISSUER_SERIALNUMBER_OID:Lsun1/security/util/ObjectIdentifier;

    const/16 v0, 0xe

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->EXTENSION_REQUEST_OID:Lsun1/security/util/ObjectIdentifier;

    const/16 v0, 0xf

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->SMIME_CAPABILITY_OID:Lsun1/security/util/ObjectIdentifier;

    const/16 v0, 0x10

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->SIGNING_CERTIFICATE_OID:Lsun1/security/util/ObjectIdentifier;

    const/16 v0, 0x11

    aget-object v0, v2, v0

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun1/security/util/ObjectIdentifier;

    new-instance v0, Ljava/util/Hashtable;

    const/16 v3, 0x12

    invoke-direct {v0, v3}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string v3, "emailaddress"

    aget-object v4, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "unstructuredname"

    aget-object v4, v2, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "contenttype"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "messagedigest"

    aget-object v4, v2, v9

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "signingtime"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "countersignature"

    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "challengepassword"

    const/4 v4, 0x7

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "unstructuredaddress"

    const/16 v4, 0x8

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "extendedcertificateattributes"

    const/16 v4, 0x9

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "issuerandserialnumber"

    const/16 v4, 0xa

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "rsaproprietary"

    const/16 v4, 0xb

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "rsaproprietary"

    const/16 v4, 0xc

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "signingdescription"

    const/16 v4, 0xd

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "extensionrequest"

    const/16 v4, 0xe

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "smimecapability"

    const/16 v4, 0xf

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "signingcertificate"

    const/16 v4, 0x10

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "signaturetimestamptoken"

    const/16 v4, 0x11

    aget-object v4, v2, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    aget-object v3, v2, v1

    const-string v4, "EmailAddress"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, v2, v7

    const-string v4, "UnstructuredName"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    aget-object v3, v2, v3

    const-string v4, "ContentType"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, v2, v9

    const-string v4, "MessageDigest"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    aget-object v3, v2, v3

    const-string v4, "SigningTime"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x6

    aget-object v3, v2, v3

    const-string v4, "Countersignature"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x7

    aget-object v3, v2, v3

    const-string v4, "ChallengePassword"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x8

    aget-object v3, v2, v3

    const-string v4, "UnstructuredAddress"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x9

    aget-object v3, v2, v3

    const-string v4, "ExtendedCertificateAttributes"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xa

    aget-object v3, v2, v3

    const-string v4, "IssuerAndSerialNumber"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xb

    aget-object v3, v2, v3

    const-string v4, "RSAProprietary"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xc

    aget-object v3, v2, v3

    const-string v4, "RSAProprietary"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xd

    aget-object v3, v2, v3

    const-string v4, "SMIMESigningDesc"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xe

    aget-object v3, v2, v3

    const-string v4, "ExtensionRequest"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xf

    aget-object v3, v2, v3

    const-string v4, "SMIMECapability"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x10

    aget-object v3, v2, v3

    const-string v4, "SigningCertificate"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    const-string v3, "SignatureTimestampToken"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12

    new-array v0, v0, [[Ljava/lang/Byte;

    new-array v2, v1, [Ljava/lang/Byte;

    new-instance v3, Ljava/lang/Byte;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Byte;

    new-instance v3, Ljava/lang/Byte;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v2, v6

    aput-object v2, v0, v7

    const/4 v2, 0x3

    new-array v3, v1, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    new-array v2, v1, [Ljava/lang/Byte;

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, v9}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v2, v6

    aput-object v2, v0, v9

    const/4 v2, 0x5

    new-array v3, v1, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v1, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-array v3, v7, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v1

    aput-object v3, v0, v2

    const/16 v2, 0x8

    new-array v3, v7, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v1

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-array v3, v1, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x31

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-array v3, v1, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0xe

    new-array v3, v1, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0xf

    new-array v3, v1, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x10

    new-array v3, v1, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x11

    new-array v3, v1, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    :try_start_298
    const-string v2, "[Ljava.lang.String;"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_29d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_298 .. :try_end_29d} :catch_332

    move-result-object v2

    aput-object v8, v0, v6

    aput-object v2, v0, v1

    aput-object v2, v0, v7

    const/4 v3, 0x3

    const-class v4, Lsun1/security/util/ObjectIdentifier;

    aput-object v4, v0, v3

    const/4 v3, 0x4

    :try_start_2aa
    const-string v4, "[B"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_2b2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2aa .. :try_end_2b2} :catch_332

    const/4 v3, 0x5

    const-class v4, Ljava/util/Date;

    aput-object v4, v0, v3

    :try_start_2b7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[L"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lsun1/security/pkcs/SignerInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v4
    :try_end_2d7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b7 .. :try_end_2d7} :catch_332

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v2, 0x9

    aput-object v8, v0, v2

    const/16 v2, 0xa

    aput-object v8, v0, v2

    const/16 v2, 0xb

    aput-object v8, v0, v2

    const/16 v2, 0xc

    aput-object v8, v0, v2

    const/16 v2, 0xd

    aput-object v8, v0, v2

    const/16 v2, 0xe

    const-class v3, Lsun1/security/x509/CertificateExtensions;

    aput-object v3, v0, v2

    const/16 v2, 0xf

    aput-object v8, v0, v2

    const/16 v2, 0x10

    aput-object v8, v0, v2

    const/16 v2, 0x11

    :try_start_304
    const-string v3, "[B"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_30c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_304 .. :try_end_30c} :catch_332

    const/16 v0, 0x12

    new-array v0, v0, [Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    aput-boolean v1, v0, v9

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    const/16 v2, 0xe

    aput-boolean v1, v0, v2

    const/16 v2, 0xf

    aput-boolean v1, v0, v2

    const/16 v2, 0x10

    aput-boolean v1, v0, v2

    const/16 v2, 0x11

    aput-boolean v1, v0, v2

    sput-object v0, Lsun1/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    return-void

    :catch_332
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33d
    const/4 v3, 0x7

    new-array v3, v3, [I

    aput v1, v3, v6

    aput v7, v3, v1

    const/16 v4, 0x348

    aput v4, v3, v7

    const/4 v4, 0x3

    const v5, 0x1bb8d

    aput v5, v3, v4

    aput v1, v3, v9

    const/4 v4, 0x5

    const/16 v5, 0x9

    aput v5, v3, v4

    const/4 v4, 0x6

    aput v0, v3, v4

    invoke-static {v3}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_14

    :array_362
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xc
    .end array-data

    :array_378
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xe
    .end array-data
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lsun1/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v2

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_150

    array-length v1, v2

    if-ne v1, v3, :cond_148

    aget-object v1, v2, v0

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sget-object v3, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun1/security/util/ObjectIdentifier;

    invoke-static {v1, v3, v4}, Lsun1/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v3

    iput v3, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    if-ne v3, v6, :cond_56

    sget-object v0, Lsun1/security/pkcs/PKCS9Attribute;->debug:Lsun1/security/util/Debug;

    if-eqz v0, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ignoring unsupported signer attribute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun1/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported PKCS9 attribute: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    new-instance v1, Lsun1/security/util/DerInputStream;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    move-result-object v2

    sget-object v1, Lsun1/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v3, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_73

    array-length v1, v2

    if-le v1, v4, :cond_73

    invoke-direct {p0}, Lsun1/security/pkcs/PKCS9Attribute;->throwSingleValuedException()V

    :cond_73
    move v1, v0

    :goto_74
    array-length v3, v2

    if-lt v1, v3, :cond_12c

    iget v1, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v1, :pswitch_data_158

    :goto_7c
    return-void

    :pswitch_7d  #0x11
    aget-object v0, v2, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_7c

    :pswitch_86  #0x10
    new-instance v1, Lsun1/security/pkcs/SigningCertificateInfo;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lsun1/security/pkcs/SigningCertificateInfo;-><init>([B)V

    move-object v0, v1

    :goto_92
    iput-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_7c

    :pswitch_95  #0xf
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 SMIMECapability attribute not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9d  #0xe
    new-instance v1, Lsun1/security/x509/CertificateExtensions;

    new-instance v3, Lsun1/security/util/DerInputStream;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lsun1/security/x509/CertificateExtensions;-><init>(Lsun1/security/util/DerInputStream;)V

    move-object v0, v1

    goto :goto_92

    :pswitch_af  #0xd
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 attribute #13 not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b7  #0xb, 0xc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_bf  #0xa
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c7  #0x9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_cf  #0x7
    aget-object v0, v2, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_7c

    :pswitch_d8  #0x6
    array-length v1, v2

    new-array v1, v1, [Lsun1/security/pkcs/SignerInfo;

    :goto_db
    array-length v3, v2

    if-lt v0, v3, :cond_e1

    iput-object v1, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_7c

    :cond_e1
    new-instance v3, Lsun1/security/pkcs/SignerInfo;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lsun1/security/pkcs/SignerInfo;-><init>(Lsun1/security/util/DerInputStream;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_db

    :pswitch_f1  #0x5
    new-instance v1, Lsun1/security/util/DerInputStream;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_7c

    :pswitch_104  #0x4
    aget-object v0, v2, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_7c

    :pswitch_10e  #0x3
    aget-object v0, v2, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_7c

    :pswitch_118  #0x1, 0x2, 0x8
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/String;

    :goto_11b
    array-length v3, v2

    if-lt v0, v3, :cond_121

    move-object v0, v1

    goto/16 :goto_92

    :cond_121
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lsun1/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11b

    :cond_12c
    new-instance v3, Ljava/lang/Byte;

    aget-object v4, v2, v1

    iget-byte v4, v4, Lsun1/security/util/DerValue;->tag:B

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    sget-object v4, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v5, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v0}, Lsun1/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v4

    if-ne v4, v6, :cond_144

    invoke-direct {p0, v3}, Lsun1/security/pkcs/PKCS9Attribute;->throwTagException(Ljava/lang/Byte;)V

    :cond_144
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_74

    :cond_148
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9Attribute doesn\'t have two components"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Excess data parsing PKCS9Attribute"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_118  #00000001
        :pswitch_118  #00000002
        :pswitch_10e  #00000003
        :pswitch_104  #00000004
        :pswitch_f1  #00000005
        :pswitch_d8  #00000006
        :pswitch_cf  #00000007
        :pswitch_118  #00000008
        :pswitch_c7  #00000009
        :pswitch_bf  #0000000a
        :pswitch_b7  #0000000b
        :pswitch_b7  #0000000c
        :pswitch_af  #0000000d
        :pswitch_9d  #0000000e
        :pswitch_95  #0000000f
        :pswitch_86  #00000010
        :pswitch_7d  #00000011
    .end packed-switch
.end method

.method static indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I
    .registers 4

    :goto_0
    array-length v0, p1

    if-lt p2, v0, :cond_5

    const/4 p2, -0x1

    :cond_4
    return p2

    :cond_5
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private throwSingleValuedException()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Single-value attribute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS9Attribute;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has multiple values."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private throwTagException(Ljava/lang/Byte;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v1, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    aget-object v1, v0, v1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "Value of attribute "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS9Attribute;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") has wrong tag: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".  Expected tags: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_45
    array-length v3, v1

    if-ge v0, v3, :cond_59

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_59
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v6, 0x31

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS9Attribute;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    iget v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v0, :pswitch_data_11e

    :goto_14
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v2}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun1/security/util/DerOutputStream;->write(B[B)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_2a  #0x11
    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v2, v6, v0}, Lsun1/security/util/DerOutputStream;->write(B[B)V

    goto :goto_14

    :pswitch_32  #0x10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 SigningCertificate attribute not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3a  #0xf
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 attribute #15 not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_42  #0xe
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, Lsun1/security/x509/CertificateExtensions;

    const/4 v3, 0x1

    :try_start_4c
    invoke-virtual {v0, v1, v3}, Lsun1/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V
    :try_end_4f
    .catch Ljava/security/cert/CertificateException; {:try_start_4c .. :try_end_4f} :catch_57

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lsun1/security/util/DerOutputStream;->write(B[B)V

    goto :goto_14

    :catch_57
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_62  #0xd
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 attribute #13 not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6a  #0xb, 0xc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_72  #0xa
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7a  #0x9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_82  #0x8
    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    new-array v3, v3, [Lsun1/security/util/DerOutputStream;

    :goto_89
    array-length v4, v0

    if-lt v1, v4, :cond_90

    invoke-virtual {v2, v6, v3}, Lsun1/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun1/security/util/DerEncoder;)V

    goto :goto_14

    :cond_90
    new-instance v4, Lsun1/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun1/security/util/DerOutputStream;-><init>()V

    aput-object v4, v3, v1

    aget-object v4, v3, v1

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lsun1/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    :pswitch_a1  #0x7
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lsun1/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lsun1/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_14

    :pswitch_b6  #0x6
    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, [Lsun1/security/util/DerEncoder;

    invoke-virtual {v2, v6, v0}, Lsun1/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun1/security/util/DerEncoder;)V

    goto/16 :goto_14

    :pswitch_bf  #0x5
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v1, v0}, Lsun1/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lsun1/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_14

    :pswitch_d4  #0x4
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lsun1/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_14

    :pswitch_e9  #0x3
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1, v0}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lsun1/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_14

    :pswitch_fe  #0x1, 0x2
    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    new-array v3, v3, [Lsun1/security/util/DerOutputStream;

    :goto_105
    array-length v4, v0

    if-lt v1, v4, :cond_10d

    invoke-virtual {v2, v6, v3}, Lsun1/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun1/security/util/DerEncoder;)V

    goto/16 :goto_14

    :cond_10d
    new-instance v4, Lsun1/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun1/security/util/DerOutputStream;-><init>()V

    aput-object v4, v3, v1

    aget-object v4, v3, v1

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lsun1/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_105

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_fe  #00000001
        :pswitch_fe  #00000002
        :pswitch_e9  #00000003
        :pswitch_d4  #00000004
        :pswitch_bf  #00000005
        :pswitch_b6  #00000006
        :pswitch_a1  #00000007
        :pswitch_82  #00000008
        :pswitch_7a  #00000009
        :pswitch_72  #0000000a
        :pswitch_6a  #0000000b
        :pswitch_6a  #0000000c
        :pswitch_62  #0000000d
        :pswitch_42  #0000000e
        :pswitch_3a  #0000000f
        :pswitch_32  #00000010
        :pswitch_2a  #00000011
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    sget-object v0, Lsun1/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v1, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun1/security/util/ObjectIdentifier;

    iget v2, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOID()Lsun1/security/util/ObjectIdentifier;
    .registers 3

    sget-object v0, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun1/security/util/ObjectIdentifier;

    iget v1, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lsun1/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v1, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun1/security/util/ObjectIdentifier;

    iget v2, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lsun1/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v1, p0, Lsun1/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_50

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_4b

    new-instance v1, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun1/misc/HexDumpEncoder;-><init>()V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_46
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_50
    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    move v2, v3

    :goto_56
    array-length v5, v0

    if-ge v2, v5, :cond_46

    if-eqz v1, :cond_68

    move v1, v3

    :goto_5c
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_68
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c
.end method
