.class public Lsun1/security/x509/AlgorithmId;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lsun1/security/util/DerEncoder;


# static fields
.field private static final DH_PKIX_data:[I

.field public static final DH_PKIX_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final DH_data:[I

.field public static final DH_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final DSA_OIW_data:[I

.field public static final DSA_OIW_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final DSA_PKIX_data:[I

.field public static final DSA_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final ECDH_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final EC_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final MD2_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final MD5_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final RSAEncryption_data:[I

.field public static final RSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final RSA_data:[I

.field public static final RSA_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final SHA224_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final SHA256_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final SHA384_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final SHA512_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final SHA_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final dsaWithSHA1_PKIX_data:[I

.field private static initOidTable:Z

.field private static final md2WithRSAEncryption_data:[I

.field public static final md2WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final md5WithRSAEncryption_data:[I

.field public static final md5WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final nameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static oidTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun1/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final pbeWithMD5AndDES_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final pbeWithMD5AndRC2_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final pbeWithSHA1AndDES_oid:Lsun1/security/util/ObjectIdentifier;

.field public static pbeWithSHA1AndDESede_oid:Lsun1/security/util/ObjectIdentifier;

.field public static pbeWithSHA1AndRC2_40_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final pbeWithSHA1AndRC2_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final sha1WithDSA_OIW_data:[I

.field public static final sha1WithDSA_OIW_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final sha1WithDSA_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final sha1WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_OIW_data:[I

.field public static final sha1WithRSAEncryption_OIW_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_data:[I

.field public static final sha1WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final sha224WithDSA_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final sha224WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final sha224WithRSAEncryption_data:[I

.field public static final sha224WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final sha256WithDSA_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final sha256WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final sha256WithRSAEncryption_data:[I

.field public static final sha256WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final sha384WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final sha384WithRSAEncryption_data:[I

.field public static final sha384WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final sha512WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final sha512WithRSAEncryption_data:[I

.field public static final sha512WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

.field private static final shaWithDSA_OIW_data:[I

.field public static final shaWithDSA_OIW_oid:Lsun1/security/util/ObjectIdentifier;

.field public static final specifiedWithECDSA_oid:Lsun1/security/util/ObjectIdentifier;


# instance fields
.field private algParams:Ljava/security/AlgorithmParameters;

.field private algid:Lsun1/security/util/ObjectIdentifier;

.field private constructedFromDer:Z

.field protected params:Lsun1/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .registers 41

    const/4 v2, 0x0

    sput-boolean v2, Lsun1/security/x509/AlgorithmId;->initOidTable:Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_60c

    invoke-static {v2}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lsun1/security/x509/AlgorithmId;->MD2_oid:Lsun1/security/util/ObjectIdentifier;

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_61c

    invoke-static {v3}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun1/security/x509/AlgorithmId;->MD5_oid:Lsun1/security/util/ObjectIdentifier;

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_62c

    invoke-static {v4}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lsun1/security/x509/AlgorithmId;->SHA_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_63c

    invoke-static {v5}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lsun1/security/x509/AlgorithmId;->SHA224_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v6, 0x9

    new-array v6, v6, [I

    fill-array-data v6, :array_652

    invoke-static {v6}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v6

    sput-object v6, Lsun1/security/x509/AlgorithmId;->SHA256_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v7, 0x9

    new-array v7, v7, [I

    fill-array-data v7, :array_668

    invoke-static {v7}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v7

    sput-object v7, Lsun1/security/x509/AlgorithmId;->SHA384_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_67e

    invoke-static {v8}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v8

    sput-object v8, Lsun1/security/x509/AlgorithmId;->SHA512_oid:Lsun1/security/util/ObjectIdentifier;

    const/4 v9, 0x7

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    aput v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x348

    aput v11, v9, v10

    const/4 v10, 0x3

    const v11, 0x1bb8d

    aput v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x1

    aput v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x3

    aput v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x1

    aput v11, v9, v10

    sput-object v9, Lsun1/security/x509/AlgorithmId;->DH_data:[I

    const/4 v10, 0x6

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x348

    aput v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x273e

    aput v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x5

    const/4 v12, 0x1

    aput v12, v10, v11

    sput-object v10, Lsun1/security/x509/AlgorithmId;->DH_PKIX_data:[I

    const/4 v11, 0x6

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    aput v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0xe

    aput v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x3

    aput v13, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x2

    aput v13, v11, v12

    const/4 v12, 0x5

    const/16 v13, 0xc

    aput v13, v11, v12

    sput-object v11, Lsun1/security/x509/AlgorithmId;->DSA_OIW_data:[I

    const/4 v12, 0x6

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, 0x1

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x2

    aput v14, v12, v13

    const/4 v13, 0x2

    const/16 v14, 0x348

    aput v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, 0x2738

    aput v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x4

    aput v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x1

    aput v14, v12, v13

    sput-object v12, Lsun1/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    const/4 v13, 0x6

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    aput v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x5

    aput v15, v13, v14

    const/4 v14, 0x3

    const/16 v15, 0x8

    aput v15, v13, v14

    const/4 v14, 0x4

    const/4 v15, 0x1

    aput v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x1

    aput v15, v13, v14

    sput-object v13, Lsun1/security/x509/AlgorithmId;->RSA_data:[I

    const/4 v14, 0x7

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x2

    aput v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x348

    aput v16, v14, v15

    const/4 v15, 0x3

    const v16, 0x1bb8d

    aput v16, v14, v15

    const/4 v15, 0x4

    const/16 v16, 0x1

    aput v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x1

    aput v16, v14, v15

    const/4 v15, 0x6

    const/16 v16, 0x1

    aput v16, v14, v15

    sput-object v14, Lsun1/security/x509/AlgorithmId;->RSAEncryption_data:[I

    const/4 v15, 0x6

    new-array v15, v15, [I

    fill-array-data v15, :array_694

    invoke-static {v15}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lsun1/security/x509/AlgorithmId;->EC_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_6a4

    invoke-static/range {v16 .. v16}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v16

    sput-object v16, Lsun1/security/x509/AlgorithmId;->ECDH_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    aput v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x348

    aput v19, v17, v18

    const/16 v18, 0x3

    const v19, 0x1bb8d

    aput v19, v17, v18

    const/16 v18, 0x4

    const/16 v19, 0x1

    aput v19, v17, v18

    const/16 v18, 0x5

    const/16 v19, 0x1

    aput v19, v17, v18

    const/16 v18, 0x6

    const/16 v19, 0x2

    aput v19, v17, v18

    sput-object v17, Lsun1/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x2

    aput v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x348

    aput v20, v18, v19

    const/16 v19, 0x3

    const v20, 0x1bb8d

    aput v20, v18, v19

    const/16 v19, 0x4

    const/16 v20, 0x1

    aput v20, v18, v19

    const/16 v19, 0x5

    const/16 v20, 0x1

    aput v20, v18, v19

    const/16 v19, 0x6

    const/16 v20, 0x4

    aput v20, v18, v19

    sput-object v18, Lsun1/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x2

    aput v21, v19, v20

    const/16 v20, 0x2

    const/16 v21, 0x348

    aput v21, v19, v20

    const/16 v20, 0x3

    const v21, 0x1bb8d

    aput v21, v19, v20

    const/16 v20, 0x4

    const/16 v21, 0x1

    aput v21, v19, v20

    const/16 v20, 0x5

    const/16 v21, 0x1

    aput v21, v19, v20

    const/16 v20, 0x6

    const/16 v21, 0x5

    aput v21, v19, v20

    sput-object v19, Lsun1/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x3

    aput v22, v20, v21

    const/16 v21, 0x2

    const/16 v22, 0xe

    aput v22, v20, v21

    const/16 v21, 0x3

    const/16 v22, 0x3

    aput v22, v20, v21

    const/16 v21, 0x4

    const/16 v22, 0x2

    aput v22, v20, v21

    const/16 v21, 0x5

    const/16 v22, 0x1d

    aput v22, v20, v21

    sput-object v20, Lsun1/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x2

    aput v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x348

    aput v23, v21, v22

    const/16 v22, 0x3

    const v23, 0x1bb8d

    aput v23, v21, v22

    const/16 v22, 0x4

    const/16 v23, 0x1

    aput v23, v21, v22

    const/16 v22, 0x5

    const/16 v23, 0x1

    aput v23, v21, v22

    const/16 v22, 0x6

    const/16 v23, 0xe

    aput v23, v21, v22

    sput-object v21, Lsun1/security/x509/AlgorithmId;->sha224WithRSAEncryption_data:[I

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x2

    aput v24, v22, v23

    const/16 v23, 0x2

    const/16 v24, 0x348

    aput v24, v22, v23

    const/16 v23, 0x3

    const v24, 0x1bb8d

    aput v24, v22, v23

    const/16 v23, 0x4

    const/16 v24, 0x1

    aput v24, v22, v23

    const/16 v23, 0x5

    const/16 v24, 0x1

    aput v24, v22, v23

    const/16 v23, 0x6

    const/16 v24, 0xb

    aput v24, v22, v23

    sput-object v22, Lsun1/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    aput v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x2

    aput v25, v23, v24

    const/16 v24, 0x2

    const/16 v25, 0x348

    aput v25, v23, v24

    const/16 v24, 0x3

    const v25, 0x1bb8d

    aput v25, v23, v24

    const/16 v24, 0x4

    const/16 v25, 0x1

    aput v25, v23, v24

    const/16 v24, 0x5

    const/16 v25, 0x1

    aput v25, v23, v24

    const/16 v24, 0x6

    const/16 v25, 0xc

    aput v25, v23, v24

    sput-object v23, Lsun1/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    aput v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x2

    aput v26, v24, v25

    const/16 v25, 0x2

    const/16 v26, 0x348

    aput v26, v24, v25

    const/16 v25, 0x3

    const v26, 0x1bb8d

    aput v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x1

    aput v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x1

    aput v26, v24, v25

    const/16 v25, 0x6

    const/16 v26, 0xd

    aput v26, v24, v25

    sput-object v24, Lsun1/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    aput v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x3

    aput v27, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0xe

    aput v27, v25, v26

    const/16 v26, 0x3

    const/16 v27, 0x3

    aput v27, v25, v26

    const/16 v26, 0x4

    const/16 v27, 0x2

    aput v27, v25, v26

    const/16 v26, 0x5

    const/16 v27, 0xd

    aput v27, v25, v26

    sput-object v25, Lsun1/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x3

    aput v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0xe

    aput v28, v26, v27

    const/16 v27, 0x3

    const/16 v28, 0x3

    aput v28, v26, v27

    const/16 v27, 0x4

    const/16 v28, 0x2

    aput v28, v26, v27

    const/16 v27, 0x5

    const/16 v28, 0x1b

    aput v28, v26, v27

    sput-object v26, Lsun1/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x2

    aput v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x348

    aput v29, v27, v28

    const/16 v28, 0x3

    const/16 v29, 0x2738

    aput v29, v27, v28

    const/16 v28, 0x4

    const/16 v29, 0x4

    aput v29, v27, v28

    const/16 v28, 0x5

    const/16 v29, 0x3

    aput v29, v27, v28

    sput-object v27, Lsun1/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    const/16 v28, 0x9

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_6b2

    invoke-static/range {v28 .. v28}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v28

    sput-object v28, Lsun1/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v29, 0x9

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_6c8

    invoke-static/range {v29 .. v29}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v29

    sput-object v29, Lsun1/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v30, 0x6

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    fill-array-data v30, :array_6de

    invoke-static/range {v30 .. v30}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v30

    sput-object v30, Lsun1/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v31, 0x7

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    fill-array-data v31, :array_6ee

    invoke-static/range {v31 .. v31}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v31

    sput-object v31, Lsun1/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v32, 0x7

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    fill-array-data v32, :array_700

    invoke-static/range {v32 .. v32}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v32

    sput-object v32, Lsun1/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v33, 0x7

    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v33, v0

    fill-array-data v33, :array_712

    invoke-static/range {v33 .. v33}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v33

    sput-object v33, Lsun1/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v34, 0x7

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    fill-array-data v34, :array_724

    invoke-static/range {v34 .. v34}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v34

    sput-object v34, Lsun1/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    fill-array-data v35, :array_736

    invoke-static/range {v35 .. v35}, Lsun1/security/x509/AlgorithmId;->oid([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v35

    sput-object v35, Lsun1/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v35, 0x7

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    fill-array-data v35, :array_746

    invoke-static/range {v35 .. v35}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v35

    sput-object v35, Lsun1/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v36, 0x7

    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v36, v0

    fill-array-data v36, :array_758

    invoke-static/range {v36 .. v36}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v36

    sput-object v36, Lsun1/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v37, 0x7

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    fill-array-data v37, :array_76a

    invoke-static/range {v37 .. v37}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v37

    sput-object v37, Lsun1/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v38, 0x7

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    fill-array-data v38, :array_77c

    invoke-static/range {v38 .. v38}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v38

    sput-object v38, Lsun1/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v39, 0x8

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    fill-array-data v39, :array_78e

    invoke-static/range {v39 .. v39}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v39

    sput-object v39, Lsun1/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun1/security/util/ObjectIdentifier;

    const/16 v39, 0x8

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    fill-array-data v39, :array_7a2

    invoke-static/range {v39 .. v39}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v39

    sput-object v39, Lsun1/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v9}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v9

    sput-object v9, Lsun1/security/x509/AlgorithmId;->DH_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v10}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v10

    sput-object v10, Lsun1/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v11}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v11

    sput-object v11, Lsun1/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v12}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v12

    sput-object v12, Lsun1/security/x509/AlgorithmId;->DSA_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v13}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lsun1/security/x509/AlgorithmId;->RSA_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v14}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lsun1/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v17 .. v17}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v17

    sput-object v17, Lsun1/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v18 .. v18}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v18

    sput-object v18, Lsun1/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v19 .. v19}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v19

    sput-object v19, Lsun1/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v20 .. v20}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v20

    sput-object v20, Lsun1/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v21 .. v21}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v21

    sput-object v21, Lsun1/security/x509/AlgorithmId;->sha224WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v22 .. v22}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v22

    sput-object v22, Lsun1/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v23 .. v23}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v23

    sput-object v23, Lsun1/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v24 .. v24}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v24

    sput-object v24, Lsun1/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v25 .. v25}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v25

    sput-object v25, Lsun1/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v26 .. v26}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v26

    sput-object v26, Lsun1/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v27 .. v27}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v27

    sput-object v27, Lsun1/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun1/security/util/ObjectIdentifier;

    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    sput-object v39, Lsun1/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    const-string v40, "MD5"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MD2"

    move-object/from16 v0, v39

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA"

    move-object/from16 v0, v39

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA224"

    move-object/from16 v0, v39

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA256"

    move-object/from16 v0, v39

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA384"

    move-object/from16 v0, v39

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA512"

    move-object/from16 v0, v39

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA"

    move-object/from16 v0, v39

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA"

    move-object/from16 v0, v39

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Diffie-Hellman"

    move-object/from16 v0, v39

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Diffie-Hellman"

    move-object/from16 v0, v39

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DSA"

    move-object/from16 v0, v39

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DSA"

    move-object/from16 v0, v39

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EC"

    move-object/from16 v0, v39

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDH"

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA1withECDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA224withECDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA256withECDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA384withECDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA512withECDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MD5withRSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MD2withRSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA1withDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA1withDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA1withDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA224withDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA256withDSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA1withRSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA1withRSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA224withRSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA256withRSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA384withRSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA512withRSA"

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PBEWithMD5AndDES"

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PBEWithMD5AndRC2"

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PBEWithSHA1AndDES"

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PBEWithSHA1AndRC2"

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun1/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun1/security/util/ObjectIdentifier;

    const-string v3, "PBEWithSHA1AndDESede"

    move-object/from16 v0, v39

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun1/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun1/security/util/ObjectIdentifier;

    const-string v3, "PBEWithSHA1AndRC2_40"

    move-object/from16 v0, v39

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_60c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x2
    .end array-data

    :array_61c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x5
    .end array-data

    :array_62c
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1a
    .end array-data

    :array_63c
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x4
    .end array-data

    :array_652
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x1
    .end array-data

    :array_668
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_67e
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x3
    .end array-data

    :array_694
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x2
        0x1
    .end array-data

    :array_6a4
    .array-data 4
        0x1
        0x3
        0x84
        0x1
        0xc
    .end array-data

    :array_6b2
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x3
        0x1
    .end array-data

    :array_6c8
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x3
        0x2
    .end array-data

    :array_6de
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x1
    .end array-data

    :array_6ee
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x1
    .end array-data

    :array_700
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x2
    .end array-data

    :array_712
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x3
    .end array-data

    :array_724
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x4
    .end array-data

    :array_736
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
    .end array-data

    :array_746
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x3
    .end array-data

    :array_758
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x6
    .end array-data

    :array_76a
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xa
    .end array-data

    :array_77c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xb
    .end array-data

    :array_78e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x3
    .end array-data

    :array_7a2
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/AlgorithmId;->constructedFromDer:Z

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/ObjectIdentifier;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/AlgorithmId;->constructedFromDer:Z

    iput-object p1, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/AlgorithmId;->constructedFromDer:Z

    iput-object p1, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    iput-object p2, p0, Lsun1/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/AlgorithmId;->constructedFromDer:Z

    return-void
.end method

.method private constructor <init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/AlgorithmId;->constructedFromDer:Z

    iput-object p1, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    iput-object p2, p0, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lsun1/security/x509/AlgorithmId;->decodeParams()V

    :cond_f
    return-void
.end method

.method private static algOID(Ljava/lang/String;)Lsun1/security/util/ObjectIdentifier;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v8, :cond_28

    const-string v0, "OID."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    const-string v1, "OID."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    :goto_21
    return-object v0

    :cond_22
    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :cond_28
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lsun1/security/x509/AlgorithmId;->MD5_oid:Lsun1/security/util/ObjectIdentifier;

    goto :goto_21

    :cond_33
    const-string v0, "MD2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lsun1/security/x509/AlgorithmId;->MD2_oid:Lsun1/security/util/ObjectIdentifier;

    goto :goto_21

    :cond_3e
    const-string v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "SHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_56
    sget-object v0, Lsun1/security/x509/AlgorithmId;->SHA_oid:Lsun1/security/util/ObjectIdentifier;

    goto :goto_21

    :cond_59
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_69
    sget-object v0, Lsun1/security/x509/AlgorithmId;->SHA256_oid:Lsun1/security/util/ObjectIdentifier;

    goto :goto_21

    :cond_6c
    const-string v0, "SHA-384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string v0, "SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_7c
    sget-object v0, Lsun1/security/x509/AlgorithmId;->SHA384_oid:Lsun1/security/util/ObjectIdentifier;

    goto :goto_21

    :cond_7f
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "SHA512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    :cond_8f
    sget-object v0, Lsun1/security/x509/AlgorithmId;->SHA512_oid:Lsun1/security/util/ObjectIdentifier;

    goto :goto_21

    :cond_92
    const-string v0, "SHA-224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-string v0, "SHA224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    :cond_a2
    sget-object v0, Lsun1/security/x509/AlgorithmId;->SHA224_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_a6
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    sget-object v0, Lsun1/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_b2
    const-string v0, "Diffie-Hellman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c2

    const-string v0, "DH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    :cond_c2
    sget-object v0, Lsun1/security/x509/AlgorithmId;->DH_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_c6
    const-string v0, "DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    sget-object v0, Lsun1/security/x509/AlgorithmId;->DSA_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_d2
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    sget-object v0, Lsun1/security/x509/AlgorithmId;->EC_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_de
    const-string v0, "ECDH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    sget-object v0, Lsun1/security/x509/AlgorithmId;->ECDH_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_ea
    const-string v0, "MD5withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fa

    const-string v0, "MD5/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    :cond_fa
    sget-object v0, Lsun1/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_fe
    const-string v0, "MD2withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10e

    const-string v0, "MD2/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_112

    :cond_10e
    sget-object v0, Lsun1/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_112
    const-string v0, "SHAwithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14a

    const-string v0, "SHA1withDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14a

    const-string v0, "SHA/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14a

    const-string v0, "SHA1/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14a

    const-string v0, "DSAWithSHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14a

    const-string v0, "DSS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14a

    const-string v0, "SHA-1/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14e

    :cond_14a
    sget-object v0, Lsun1/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_14e
    const-string v0, "SHA224WithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15a

    sget-object v0, Lsun1/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_15a
    const-string v0, "SHA256WithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_166

    sget-object v0, Lsun1/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_166
    const-string v0, "SHA1WithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_176

    const-string v0, "SHA1/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17a

    :cond_176
    sget-object v0, Lsun1/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_17a
    const-string v0, "SHA1withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18a

    const-string v0, "ECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18e

    :cond_18a
    sget-object v0, Lsun1/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_18e
    const-string v0, "SHA224withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19a

    sget-object v0, Lsun1/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_19a
    const-string v0, "SHA256withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    sget-object v0, Lsun1/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_1a6
    const-string v0, "SHA384withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    sget-object v0, Lsun1/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_1b2
    const-string v0, "SHA512withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1be

    sget-object v0, Lsun1/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_1be
    sget-boolean v0, Lsun1/security/x509/AlgorithmId;->initOidTable:Z

    if-nez v0, :cond_1d7

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    move v1, v2

    :goto_1c7
    array-length v0, v3

    if-lt v1, v0, :cond_1e7

    sget-object v0, Lsun1/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    if-nez v0, :cond_1d4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsun1/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    :cond_1d4
    const/4 v0, 0x1

    sput-boolean v0, Lsun1/security/x509/AlgorithmId;->initOidTable:Z

    :cond_1d7
    sget-object v0, Lsun1/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/util/ObjectIdentifier;

    goto/16 :goto_21

    :cond_1e7
    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_1ed
    :goto_1ed
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1f7

    :cond_1f3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c7

    :cond_1f7
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ALG.ALIAS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1ed

    const-string v6, "OID."

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_1ed

    const-string v6, "OID."

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_1f3

    sget-object v6, Lsun1/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    if-nez v6, :cond_22b

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lsun1/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    :cond_22b
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23d

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_23d
    if-eqz v0, :cond_1ed

    sget-object v6, Lsun1/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1ed

    sget-object v6, Lsun1/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    new-instance v7, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v7, v5}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ed
.end method

.method public static get(Ljava/lang/String;)Lsun1/security/x509/AlgorithmId;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lsun1/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun1/security/util/ObjectIdentifier;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_20

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lsun1/security/x509/AlgorithmId;

    invoke-direct {v1, v0}, Lsun1/security/x509/AlgorithmId;-><init>(Lsun1/security/util/ObjectIdentifier;)V

    return-object v1

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unrecognized algorithm name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_20
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid ObjectIdentifier "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WITH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2c

    add-int/lit8 v1, v1, 0x4

    const-string v2, "AND"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    const-string v1, "ECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, "EC"

    :cond_26
    :goto_26
    return-object v0

    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_2c
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static getStandardDigestName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "SHA-1"

    :cond_a
    :goto_a
    return-object p0

    :cond_b
    const-string v0, "SHA224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "SHA-224"

    goto :goto_a

    :cond_16
    const-string v0, "SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "SHA-256"

    goto :goto_a

    :cond_21
    const-string v0, "SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "SHA-384"

    goto :goto_a

    :cond_2c
    const-string v0, "SHA512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "SHA-512"

    goto :goto_a
.end method

.method public static makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v0, "SHA1"

    :cond_18
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v1, "ECDSA"

    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "with"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs oid([I)Lsun1/security/util/ObjectIdentifier;
    .registers 2

    invoke-static {p0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_42

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_1b

    :cond_15
    new-instance v1, Lsun1/security/x509/AlgorithmId;

    invoke-direct {v1, v3, v0}, Lsun1/security/x509/AlgorithmId;-><init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V

    return-object v1

    :cond_1b
    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    iget-byte v4, v1, Lsun1/security/util/DerValue;->tag:B

    const/4 v5, 0x5

    if-ne v4, v5, :cond_40

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->length()I

    move-result v1

    if-nez v1, :cond_38

    :goto_2a
    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_15

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid AlgorithmIdentifier: extra data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    move-object v0, v1

    goto :goto_2a

    :cond_42
    new-instance v0, Ljava/io/IOException;

    const-string v1, "algid parse error, not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decodeParams()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_c} :catch_16

    iget-object v1, p0, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    goto :goto_15
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    iget-boolean v2, p0, Lsun1/security/x509/AlgorithmId;->constructedFromDer:Z

    if-nez v2, :cond_22

    iget-object v2, p0, Lsun1/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v2, :cond_36

    new-instance v3, Lsun1/security/util/DerValue;

    invoke-virtual {v2}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lsun1/security/util/DerValue;-><init>([B)V

    iput-object v3, p0, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    :cond_22
    :goto_22
    iget-object v2, p0, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    if-nez v2, :cond_3a

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->putNull()V

    :goto_29
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_36
    const/4 v2, 0x0

    iput-object v2, p0, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    goto :goto_22

    :cond_3a
    invoke-virtual {v0, v2}, Lsun1/security/util/DerOutputStream;->putDerValue(Lsun1/security/util/DerValue;)V

    goto :goto_29
.end method

.method public final encode(Lsun1/security/util/DerOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun1/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final encode()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun1/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/AlgorithmId;

    if-eqz v0, :cond_f

    check-cast p1, Lsun1/security/x509/AlgorithmId;

    invoke-virtual {p0, p1}, Lsun1/security/x509/AlgorithmId;->equals(Lsun1/security/x509/AlgorithmId;)Z

    move-result v0

    goto :goto_3

    :cond_f
    instance-of v0, p1, Lsun1/security/util/ObjectIdentifier;

    if-eqz v0, :cond_1a

    check-cast p1, Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p0, p1}, Lsun1/security/x509/AlgorithmId;->equals(Lsun1/security/util/ObjectIdentifier;)Z

    move-result v0

    goto :goto_3

    :cond_1a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final equals(Lsun1/security/util/ObjectIdentifier;)Z
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, p1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Lsun1/security/x509/AlgorithmId;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    if-nez v0, :cond_1b

    iget-object v0, p1, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    if-nez v0, :cond_19

    move v0, v1

    :goto_b
    iget-object v3, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    iget-object v4, p1, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v3, v4}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v0, :cond_18

    move v2, v1

    :cond_18
    return v2

    :cond_19
    move v0, v2

    goto :goto_b

    :cond_1b
    iget-object v3, p1, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    invoke-virtual {v0, v3}, Lsun1/security/util/DerValue;->equals(Lsun1/security/util/DerValue;)Z

    move-result v0

    goto :goto_b
.end method

.method public getEncodedParams()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    goto :goto_5
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    sget-object v0, Lsun1/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v1, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    iget-object v1, p0, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    sget-object v2, Lsun1/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    :try_start_1b
    new-instance v1, Lsun1/security/util/DerValue;

    invoke-virtual {p0}, Lsun1/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-static {v1}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v1

    invoke-virtual {v1}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_31} :catch_51

    move-result v2

    if-eqz v2, :cond_36

    const-string v1, "SHA1"

    :cond_36
    :try_start_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "withECDSA"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_47} :catch_51

    move-result-object v0

    :cond_48
    :goto_48
    if-nez v0, :cond_c

    iget-object v0, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :catch_51
    move-exception v1

    goto :goto_48
.end method

.method public final getOID()Lsun1/security/util/ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/AlgorithmId;->algid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun1/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected paramsToString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/AlgorithmId;->params:Lsun1/security/util/DerValue;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lsun1/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_10
    const-string v0, ", params unparsed"

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsun1/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
