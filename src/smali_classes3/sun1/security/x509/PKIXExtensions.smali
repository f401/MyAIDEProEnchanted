.class public Lsun1/security/x509/PKIXExtensions;
.super Ljava/lang/Object;


# static fields
.field public static final AuthInfoAccess_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final AuthInfoAccess_data:[I

.field public static final AuthorityKey_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final AuthorityKey_data:[I

.field public static final BasicConstraints_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final BasicConstraints_data:[I

.field public static final CRLDistributionPoints_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final CRLDistributionPoints_data:[I

.field public static final CRLNumber_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final CRLNumber_data:[I

.field public static final CertificateIssuer_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final CertificateIssuer_data:[I

.field public static final CertificatePolicies_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final CertificatePolicies_data:[I

.field public static final DeltaCRLIndicator_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final DeltaCRLIndicator_data:[I

.field public static final ExtendedKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final ExtendedKeyUsage_data:[I

.field public static final FreshestCRL_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final FreshestCRL_data:[I

.field public static final HoldInstructionCode_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final HoldInstructionCode_data:[I

.field public static final InhibitAnyPolicy_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final InhibitAnyPolicy_data:[I

.field public static final InvalidityDate_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final InvalidityDate_data:[I

.field public static final IssuerAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final IssuerAlternativeName_data:[I

.field public static final IssuingDistributionPoint_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final IssuingDistributionPoint_data:[I

.field public static final KeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final KeyUsage_data:[I

.field public static final NameConstraints_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final NameConstraints_data:[I

.field public static final PolicyConstraints_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final PolicyConstraints_data:[I

.field public static final PolicyMappings_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final PolicyMappings_data:[I

.field public static final PrivateKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final PrivateKeyUsage_data:[I

.field public static final ReasonCode_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final ReasonCode_data:[I

.field public static final SubjectAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final SubjectAlternativeName_data:[I

.field public static final SubjectDirectoryAttributes_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final SubjectDirectoryAttributes_data:[I

.field public static final SubjectInfoAccess_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final SubjectInfoAccess_data:[I

.field public static final SubjectKey_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final SubjectKey_data:[I


# direct methods
.method static constructor <clinit>()V
    .registers 28

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x1d

    aput v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x23

    aput v3, v1, v2

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x1d

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xe

    aput v4, v2, v3

    sput-object v2, Lsun1/security/x509/PKIXExtensions;->SubjectKey_data:[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    aput v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x1d

    aput v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0xf

    aput v5, v3, v4

    sput-object v3, Lsun1/security/x509/PKIXExtensions;->KeyUsage_data:[I

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x5

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x1d

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x10

    aput v6, v4, v5

    sput-object v4, Lsun1/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    aput v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1d

    aput v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x20

    aput v7, v5, v6

    sput-object v5, Lsun1/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    const/4 v6, 0x4

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x5

    aput v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x1d

    aput v8, v6, v7

    const/4 v7, 0x3

    const/16 v8, 0x21

    aput v8, v6, v7

    sput-object v6, Lsun1/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    const/4 v7, 0x4

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x2

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x5

    aput v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x1d

    aput v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x11

    aput v9, v7, v8

    sput-object v7, Lsun1/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    const/4 v8, 0x4

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x5

    aput v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x1d

    aput v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x12

    aput v10, v8, v9

    sput-object v8, Lsun1/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    const/4 v9, 0x4

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x5

    aput v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x1d

    aput v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0x9

    aput v11, v9, v10

    sput-object v9, Lsun1/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x5

    aput v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x1d

    aput v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x13

    aput v12, v10, v11

    sput-object v10, Lsun1/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    const/4 v11, 0x4

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x2

    aput v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x5

    aput v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x1d

    aput v13, v11, v12

    const/4 v12, 0x3

    const/16 v13, 0x1e

    aput v13, v11, v12

    sput-object v11, Lsun1/security/x509/PKIXExtensions;->NameConstraints_data:[I

    const/4 v12, 0x4

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, 0x2

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x5

    aput v14, v12, v13

    const/4 v13, 0x2

    const/16 v14, 0x1d

    aput v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, 0x24

    aput v14, v12, v13

    sput-object v12, Lsun1/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    const/4 v13, 0x4

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x2

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x5

    aput v15, v13, v14

    const/4 v14, 0x2

    const/16 v15, 0x1d

    aput v15, v13, v14

    const/4 v14, 0x3

    const/16 v15, 0x1f

    aput v15, v13, v14

    sput-object v13, Lsun1/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    const/4 v14, 0x4

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x2

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x5

    aput v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x1d

    aput v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x14

    aput v16, v14, v15

    sput-object v14, Lsun1/security/x509/PKIXExtensions;->CRLNumber_data:[I

    const/4 v15, 0x4

    new-array v15, v15, [I

    const/16 v16, 0x0

    const/16 v17, 0x2

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x5

    aput v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x1d

    aput v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x1c

    aput v17, v15, v16

    sput-object v15, Lsun1/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x2

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x5

    aput v18, v16, v17

    const/16 v17, 0x2

    const/16 v18, 0x1d

    aput v18, v16, v17

    const/16 v17, 0x3

    const/16 v18, 0x1b

    aput v18, v16, v17

    sput-object v16, Lsun1/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x5

    aput v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x1d

    aput v19, v17, v18

    const/16 v18, 0x3

    const/16 v19, 0x15

    aput v19, v17, v18

    sput-object v17, Lsun1/security/x509/PKIXExtensions;->ReasonCode_data:[I

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    aput v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x5

    aput v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x1d

    aput v20, v18, v19

    const/16 v19, 0x3

    const/16 v20, 0x17

    aput v20, v18, v19

    sput-object v18, Lsun1/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    aput v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x5

    aput v21, v19, v20

    const/16 v20, 0x2

    const/16 v21, 0x1d

    aput v21, v19, v20

    const/16 v20, 0x3

    const/16 v21, 0x18

    aput v21, v19, v20

    sput-object v19, Lsun1/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x2

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x5

    aput v22, v20, v21

    const/16 v21, 0x2

    const/16 v22, 0x1d

    aput v22, v20, v21

    const/16 v21, 0x3

    const/16 v22, 0x25

    aput v22, v20, v21

    sput-object v20, Lsun1/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x5

    aput v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x1d

    aput v23, v21, v22

    const/16 v22, 0x3

    const/16 v23, 0x36

    aput v23, v21, v22

    sput-object v21, Lsun1/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x2

    aput v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x5

    aput v24, v22, v23

    const/16 v23, 0x2

    const/16 v24, 0x1d

    aput v24, v22, v23

    const/16 v23, 0x3

    const/16 v24, 0x1d

    aput v24, v22, v23

    sput-object v22, Lsun1/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    const/16 v23, 0x9

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    aput v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x3

    aput v25, v23, v24

    const/16 v24, 0x2

    const/16 v25, 0x6

    aput v25, v23, v24

    const/16 v24, 0x3

    const/16 v25, 0x1

    aput v25, v23, v24

    const/16 v24, 0x4

    const/16 v25, 0x5

    aput v25, v23, v24

    const/16 v24, 0x5

    const/16 v25, 0x5

    aput v25, v23, v24

    const/16 v24, 0x6

    const/16 v25, 0x7

    aput v25, v23, v24

    const/16 v24, 0x7

    const/16 v25, 0x1

    aput v25, v23, v24

    const/16 v24, 0x8

    const/16 v25, 0x1

    aput v25, v23, v24

    sput-object v23, Lsun1/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    const/16 v24, 0x9

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    aput v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x3

    aput v26, v24, v25

    const/16 v25, 0x2

    const/16 v26, 0x6

    aput v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x1

    aput v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x5

    aput v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x5

    aput v26, v24, v25

    const/16 v25, 0x6

    const/16 v26, 0x7

    aput v26, v24, v25

    const/16 v25, 0x7

    const/16 v26, 0x1

    aput v26, v24, v25

    const/16 v25, 0x8

    const/16 v26, 0xb

    aput v26, v24, v25

    sput-object v24, Lsun1/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x2

    aput v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x5

    aput v27, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0x1d

    aput v27, v25, v26

    const/16 v26, 0x3

    const/16 v27, 0x2e

    aput v27, v25, v26

    sput-object v25, Lsun1/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    invoke-static {v1}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v2}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v3}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v4}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v5}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v6}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v7}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v8}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v20 .. v20}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v21 .. v21}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v9}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v10}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v17 .. v17}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v18 .. v18}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->HoldInstructionCode_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v19 .. v19}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v11}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v12}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v13}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v14}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v15}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v16 .. v16}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v22 .. v22}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v23 .. v23}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v24 .. v24}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static/range {v25 .. v25}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun1/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun1/security/util/ObjectIdentifier;

    return-void
.end method
