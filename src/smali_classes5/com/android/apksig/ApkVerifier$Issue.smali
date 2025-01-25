.class public final enum Lcom/android/apksig/ApkVerifier$Issue;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Issue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/apksig/ApkVerifier$Issue;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum APK_SIG_BLOCK_UNKNOWN_ENTRY_ID:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_DUPLICATE_MANIFEST_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_DUPLICATE_SIG_FILE_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_DUPLICATE_ZIP_ENTRY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_MANIFEST_MAIN_SECTION_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_MANIFEST_SECTION_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_MISSING_APK_SIG_REFERENCED:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_MISSING_FILE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_MISSING_VERSION_ATTR_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_MISSING_ZIP_ENTRY_REFERENCED_IN_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_NO_APK_SIG_STRIP_PROTECTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_NO_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_NO_MANIFEST_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_NO_SIGNED_ZIP_ENTRIES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_PARSE_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_UNKNOWN_APK_SIG_SCHEME_ID:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_UNNNAMED_MANIFEST_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_UNNNAMED_SIG_FILE_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_UNPROTECTED_ZIP_ENTRY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_UNSUPPORTED_SIG_ALG:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_ZIP_ENTRY_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_ZIP_ENTRY_NOT_SIGNED:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum JAR_SIG_ZIP_ENTRY_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum NO_SIG_FOR_TARGET_SANDBOX_VERSION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum SOURCE_STAMP_CERTIFICATE_MISMATCH_BETWEEN_SIGNATURE_BLOCK_AND_APK:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum SOURCE_STAMP_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum SOURCE_STAMP_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum SOURCE_STAMP_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum SOURCE_STAMP_NO_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum SOURCE_STAMP_NO_SUPPORTED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum SOURCE_STAMP_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum SOURCE_STAMP_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum SOURCE_STAMP_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_APK_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_MALFORMED_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_MALFORMED_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_MISSING_APK_SIG_REFERENCED:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_NO_CERTIFICATES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_UNKNOWN_APK_SIG_SCHEME_ID:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V2_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_INCONSISTENT_LINEAGES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_INCONSISTENT_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_MAX_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_MIN_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_MISSING_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_APK_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_INVALID_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MALFORMED_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MALFORMED_LINEAGE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MALFORMED_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MULTIPLE_PAST_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_NO_CERTIFICATES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_POR_CERT_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_POR_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V3_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_APK_ROOT_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_APK_TREE_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_NO_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_V2_V3_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

.field public static final enum V4_SIG_VERSION_NOT_CURRENT:Lcom/android/apksig/ApkVerifier$Issue;


# instance fields
.field private final mFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 112

    new-instance v1, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v2, "JAR_SIG_NO_SIGNATURES"

    const/4 v3, 0x0

    const-string v4, "No JAR signatures"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v2, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v3, "JAR_SIG_NO_SIGNED_ZIP_ENTRIES"

    const/4 v4, 0x1

    const-string v5, "No JAR entries covered by JAR signatures"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNED_ZIP_ENTRIES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v4, "JAR_SIG_DUPLICATE_ZIP_ENTRY"

    const/4 v5, 0x2

    const-string v6, "Duplicate entry: %1$s"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DUPLICATE_ZIP_ENTRY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v4, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v5, "JAR_SIG_DUPLICATE_MANIFEST_SECTION"

    const/4 v6, 0x3

    const-string v7, "Duplicate section in META-INF/MANIFEST.MF: %1$s"

    invoke-direct {v4, v5, v6, v7}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DUPLICATE_MANIFEST_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v5, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v6, "JAR_SIG_UNNNAMED_MANIFEST_SECTION"

    const/4 v7, 0x4

    const-string v8, "Malformed META-INF/MANIFEST.MF: invidual section #%1$d does not have a name"

    invoke-direct {v5, v6, v7, v8}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNNNAMED_MANIFEST_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v6, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v7, "JAR_SIG_UNNNAMED_SIG_FILE_SECTION"

    const/4 v8, 0x5

    const-string v9, "Malformed %1$s: invidual section #%2$d does not have a name"

    invoke-direct {v6, v7, v8, v9}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNNNAMED_SIG_FILE_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v7, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v8, "JAR_SIG_NO_MANIFEST"

    const/4 v9, 0x6

    const-string v10, "Missing META-INF/MANIFEST.MF"

    invoke-direct {v7, v8, v9, v10}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v8, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v9, "JAR_SIG_MISSING_ZIP_ENTRY_REFERENCED_IN_MANIFEST"

    const/4 v10, 0x7

    const-string v11, "%1$s entry referenced by META-INF/MANIFEST.MF not found in the APK"

    invoke-direct {v8, v9, v10, v11}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_ZIP_ENTRY_REFERENCED_IN_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v9, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v10, "JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_MANIFEST"

    const/16 v11, 0x8

    const-string v12, "No digest for %1$s in META-INF/MANIFEST.MF"

    invoke-direct {v9, v10, v11, v12}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v10, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v11, "JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_SIG_FILE"

    const/16 v12, 0x9

    const-string v13, "No digest for %1$s in %2$s"

    invoke-direct {v10, v11, v12, v13}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v11, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v12, "JAR_SIG_ZIP_ENTRY_NOT_SIGNED"

    const/16 v13, 0xa

    const-string v14, "%1$s entry not signed"

    invoke-direct {v11, v12, v13, v14}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_ZIP_ENTRY_NOT_SIGNED:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v12, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v13, "JAR_SIG_ZIP_ENTRY_SIGNERS_MISMATCH"

    const/16 v14, 0xb

    const-string v15, "Entries %1$s and %3$s are signed with different sets of signers : <%2$s> vs <%4$s>"

    invoke-direct {v12, v13, v14, v15}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_ZIP_ENTRY_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v13, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v14, "JAR_SIG_ZIP_ENTRY_DIGEST_DID_NOT_VERIFY"

    const/16 v15, 0xc

    const-string v16, "%2$s digest of %1$s does not match the digest specified in %3$s. Expected: <%5$s>, actual: <%4$s>"

    invoke-direct/range {v13 .. v16}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_ZIP_ENTRY_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v14, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v15, "JAR_SIG_MANIFEST_MAIN_SECTION_DIGEST_DID_NOT_VERIFY"

    const/16 v16, 0xd

    const-string v17, "%1$s digest of META-INF/MANIFEST.MF main section does not match the digest specified in %2$s. Expected: <%4$s>, actual: <%3$s>"

    invoke-direct/range {v14 .. v17}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MANIFEST_MAIN_SECTION_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v15, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v16, "JAR_SIG_MANIFEST_SECTION_DIGEST_DID_NOT_VERIFY"

    const/16 v17, 0xe

    const-string v18, "%2$s digest of META-INF/MANIFEST.MF section for %1$s does not match the digest specified in %3$s. Expected: <%5$s>, actual: <%4$s>"

    invoke-direct/range {v15 .. v18}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MANIFEST_SECTION_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v16, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v17, "JAR_SIG_NO_MANIFEST_DIGEST_IN_SIG_FILE"

    const/16 v18, 0xf

    const-string v19, "%1$s does not specify digest of META-INF/MANIFEST.MF. This slows down verification."

    invoke-direct/range {v16 .. v19}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v16, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_MANIFEST_DIGEST_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v17, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v18, "JAR_SIG_NO_APK_SIG_STRIP_PROTECTION"

    const/16 v19, 0x10

    const-string v20, "APK is signed using APK Signature Scheme v2 but these signatures may be stripped without being detected because %1$s does not contain anti-stripping protections."

    invoke-direct/range {v17 .. v20}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v17, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_APK_SIG_STRIP_PROTECTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v18, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v19, "JAR_SIG_MISSING_FILE"

    const/16 v20, 0x11

    const-string v21, "Partial JAR signature. Found: %1$s, missing: %2$s"

    invoke-direct/range {v18 .. v21}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v18, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v19, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v20, "JAR_SIG_VERIFY_EXCEPTION"

    const/16 v21, 0x12

    const-string v22, "Failed to verify JAR signature %1$s against %2$s: %3$s"

    invoke-direct/range {v19 .. v22}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v19, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v20, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v21, "JAR_SIG_UNSUPPORTED_SIG_ALG"

    const/16 v22, 0x13

    const-string v23, "JAR signature %1$s uses digest algorithm %5$s and signature algorithm %6$s which is not supported on API Level(s) %4$s for which this APK is being verified"

    invoke-direct/range {v20 .. v23}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v20, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNSUPPORTED_SIG_ALG:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v21, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v22, "JAR_SIG_PARSE_EXCEPTION"

    const/16 v23, 0x14

    const-string v24, "Failed to parse JAR signature %1$s: %2$s"

    invoke-direct/range {v21 .. v24}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v21, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_PARSE_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v22, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v23, "JAR_SIG_MALFORMED_CERTIFICATE"

    const/16 v24, 0x15

    const-string v25, "Malformed certificate in JAR signature %1$s: %2$s"

    invoke-direct/range {v22 .. v25}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v22, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v23, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v24, "JAR_SIG_DID_NOT_VERIFY"

    const/16 v25, 0x16

    const-string v26, "JAR signature %1$s did not verify against %2$s"

    invoke-direct/range {v23 .. v26}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v23, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v24, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v25, "JAR_SIG_NO_SIGNERS"

    const/16 v26, 0x17

    const-string v27, "JAR signature %1$s contains no signers"

    invoke-direct/range {v24 .. v27}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v24, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v25, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v26, "JAR_SIG_DUPLICATE_SIG_FILE_SECTION"

    const/16 v27, 0x18

    const-string v28, "Duplicate section in %1$s: %2$s"

    invoke-direct/range {v25 .. v28}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v25, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_DUPLICATE_SIG_FILE_SECTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v26, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v27, "JAR_SIG_MISSING_VERSION_ATTR_IN_SIG_FILE"

    const/16 v28, 0x19

    const-string v29, "Malformed %1$s: missing Signature-Version attribute"

    invoke-direct/range {v26 .. v29}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v26, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_VERSION_ATTR_IN_SIG_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v27, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v28, "JAR_SIG_UNKNOWN_APK_SIG_SCHEME_ID"

    const/16 v29, 0x1a

    const-string v30, "JAR signature %1$s references unknown APK signature scheme ID: %2$d"

    invoke-direct/range {v27 .. v30}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v27, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNKNOWN_APK_SIG_SCHEME_ID:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v28, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v29, "JAR_SIG_MISSING_APK_SIG_REFERENCED"

    const/16 v30, 0x1b

    const-string v31, "JAR signature %1$s indicates the APK is signed using %3$s but no such signature was found. Signature stripped?"

    invoke-direct/range {v28 .. v31}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v28, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_APK_SIG_REFERENCED:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v29, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v30, "JAR_SIG_UNPROTECTED_ZIP_ENTRY"

    const/16 v31, 0x1c

    const-string v32, "%1$s not protected by signature. Unauthorized modifications to this JAR entry will not be detected. Delete or move the entry outside of META-INF/."

    invoke-direct/range {v29 .. v32}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v29, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNPROTECTED_ZIP_ENTRY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v30, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v31, "JAR_SIG_MISSING"

    const/16 v32, 0x1d

    const-string v33, "No JAR signature from this signer"

    invoke-direct/range {v30 .. v33}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v30, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v31, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v32, "NO_SIG_FOR_TARGET_SANDBOX_VERSION"

    const/16 v33, 0x1e

    const-string v34, "Missing APK Signature Scheme v2 signature required for target sandbox version %1$d"

    invoke-direct/range {v31 .. v34}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v31, Lcom/android/apksig/ApkVerifier$Issue;->NO_SIG_FOR_TARGET_SANDBOX_VERSION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v32, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v33, "V2_SIG_MISSING"

    const/16 v34, 0x1f

    const-string v35, "No APK Signature Scheme v2 signature from this signer"

    invoke-direct/range {v32 .. v35}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v32, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v33, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v34, "V2_SIG_MALFORMED_SIGNERS"

    const/16 v35, 0x20

    const-string v36, "Malformed list of signers"

    invoke-direct/range {v33 .. v36}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v33, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v34, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v35, "V2_SIG_MALFORMED_SIGNER"

    const/16 v36, 0x21

    const-string v37, "Malformed signer block"

    invoke-direct/range {v34 .. v37}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v34, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v35, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v36, "V2_SIG_MALFORMED_PUBLIC_KEY"

    const/16 v37, 0x22

    const-string v38, "Malformed public key: %1$s"

    invoke-direct/range {v35 .. v38}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v35, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v36, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v37, "V2_SIG_MALFORMED_CERTIFICATE"

    const/16 v38, 0x23

    const-string v39, "Malformed certificate #%2$d: %3$s"

    invoke-direct/range {v36 .. v39}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v36, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v37, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v38, "V2_SIG_MALFORMED_SIGNATURE"

    const/16 v39, 0x24

    const-string v40, "Malformed APK Signature Scheme v2 signature record #%1$d"

    invoke-direct/range {v37 .. v40}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v37, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v38, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v39, "V2_SIG_MALFORMED_DIGEST"

    const/16 v40, 0x25

    const-string v41, "Malformed APK Signature Scheme v2 digest record #%1$d"

    invoke-direct/range {v38 .. v41}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v38, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v39, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v40, "V2_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE"

    const/16 v41, 0x26

    const-string v42, "Malformed additional attribute #%1$d"

    invoke-direct/range {v39 .. v42}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v39, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v40, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v41, "V2_SIG_UNKNOWN_APK_SIG_SCHEME_ID"

    const/16 v42, 0x27

    const-string v43, "APK Signature Scheme v2 signer: %1$s references unknown APK signature scheme ID: %2$d"

    invoke-direct/range {v40 .. v43}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v40, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_UNKNOWN_APK_SIG_SCHEME_ID:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v41, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v42, "V2_SIG_MISSING_APK_SIG_REFERENCED"

    const/16 v43, 0x28

    const-string v44, "APK Signature Scheme v2 signature %1$s indicates the APK is signed using %2$s but no such signature was found. Signature stripped?"

    invoke-direct/range {v41 .. v44}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v41, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MISSING_APK_SIG_REFERENCED:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v42, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v43, "V2_SIG_NO_SIGNERS"

    const/16 v44, 0x29

    const-string v45, "No signers in APK Signature Scheme v2 signature"

    invoke-direct/range {v42 .. v45}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v42, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v43, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v44, "V2_SIG_UNKNOWN_SIG_ALGORITHM"

    const/16 v45, 0x2a

    const-string v46, "Unknown signature algorithm: %1$#x"

    invoke-direct/range {v43 .. v46}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v43, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v44, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v45, "V2_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE"

    const/16 v46, 0x2b

    const-string v47, "Unknown additional attribute: ID %1$#x"

    invoke-direct/range {v44 .. v47}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v44, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v45, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v46, "V2_SIG_VERIFY_EXCEPTION"

    const/16 v47, 0x2c

    const-string v48, "Failed to verify %1$s signature: %2$s"

    invoke-direct/range {v45 .. v48}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v45, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v46, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v47, "V2_SIG_DID_NOT_VERIFY"

    const/16 v48, 0x2d

    const-string v49, "%1$s signature over signed-data did not verify"

    invoke-direct/range {v46 .. v49}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v46, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v47, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v48, "V2_SIG_NO_SIGNATURES"

    const/16 v49, 0x2e

    const-string v50, "No signatures"

    invoke-direct/range {v47 .. v50}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v47, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v48, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v49, "V2_SIG_NO_SUPPORTED_SIGNATURES"

    const/16 v50, 0x2f

    const-string v51, "No supported signatures: %1$s"

    invoke-direct/range {v48 .. v51}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v48, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v49, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v50, "V2_SIG_NO_CERTIFICATES"

    const/16 v51, 0x30

    const-string v52, "No certificates"

    invoke-direct/range {v49 .. v52}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v49, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_CERTIFICATES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v50, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v51, "V2_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD"

    const/16 v52, 0x31

    const-string v53, "Public key mismatch between certificate and signature record: <%1$s> vs <%2$s>"

    invoke-direct/range {v50 .. v53}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v50, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v51, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v52, "V2_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS"

    const/16 v53, 0x32

    const-string v54, "Signature algorithms mismatch between signatures and digests records: %1$s vs %2$s"

    invoke-direct/range {v51 .. v54}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v51, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v52, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v53, "V2_SIG_APK_DIGEST_DID_NOT_VERIFY"

    const/16 v54, 0x33

    const-string v55, "APK integrity check failed. %1$s digest mismatch. Expected: <%2$s>, actual: <%3$s>"

    invoke-direct/range {v52 .. v55}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v52, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_APK_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v53, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v54, "V3_SIG_MALFORMED_SIGNERS"

    const/16 v55, 0x34

    const-string v56, "Malformed list of signers"

    invoke-direct/range {v53 .. v56}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v53, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v54, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v55, "V3_SIG_MALFORMED_SIGNER"

    const/16 v56, 0x35

    const-string v57, "Malformed signer block"

    invoke-direct/range {v54 .. v57}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v54, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v55, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v56, "V3_SIG_MALFORMED_PUBLIC_KEY"

    const/16 v57, 0x36

    const-string v58, "Malformed public key: %1$s"

    invoke-direct/range {v55 .. v58}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v55, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v56, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v57, "V3_SIG_MALFORMED_CERTIFICATE"

    const/16 v58, 0x37

    const-string v59, "Malformed certificate #%2$d: %3$s"

    invoke-direct/range {v56 .. v59}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v56, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v57, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v58, "V3_SIG_MALFORMED_SIGNATURE"

    const/16 v59, 0x38

    const-string v60, "Malformed APK Signature Scheme v3 signature record #%1$d"

    invoke-direct/range {v57 .. v60}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v57, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v58, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v59, "V3_SIG_MALFORMED_DIGEST"

    const/16 v60, 0x39

    const-string v61, "Malformed APK Signature Scheme v3 digest record #%1$d"

    invoke-direct/range {v58 .. v61}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v58, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v59, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v60, "V3_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE"

    const/16 v61, 0x3a

    const-string v62, "Malformed additional attribute #%1$d"

    invoke-direct/range {v59 .. v62}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v59, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v60, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v61, "V3_SIG_NO_SIGNERS"

    const/16 v62, 0x3b

    const-string v63, "No signers in APK Signature Scheme v3 signature"

    invoke-direct/range {v60 .. v63}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v60, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v61, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v62, "V3_SIG_MULTIPLE_SIGNERS"

    const/16 v63, 0x3c

    const-string v64, "Multiple APK Signature Scheme v3 signatures found for a single  platform version."

    invoke-direct/range {v61 .. v64}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v61, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v62, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v63, "V3_SIG_MULTIPLE_PAST_SIGNERS"

    const/16 v64, 0x3d

    const-string v65, "Multiple signatures found for pre-v3 signing with an APK  Signature Scheme v3 signer.  Only one allowed."

    invoke-direct/range {v62 .. v65}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v62, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_PAST_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v63, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v64, "V3_SIG_PAST_SIGNERS_MISMATCH"

    const/16 v65, 0x3e

    const-string v66, "v3 signer differs from v1/v2 signer without proper signing certificate lineage."

    invoke-direct/range {v63 .. v66}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v63, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v64, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v65, "V3_SIG_UNKNOWN_SIG_ALGORITHM"

    const/16 v66, 0x3f

    const-string v67, "Unknown signature algorithm: %1$#x"

    invoke-direct/range {v64 .. v67}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v64, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v65, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v66, "V3_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE"

    const/16 v67, 0x40

    const-string v68, "Unknown additional attribute: ID %1$#x"

    invoke-direct/range {v65 .. v68}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v65, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v66, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v67, "V3_SIG_VERIFY_EXCEPTION"

    const/16 v68, 0x41

    const-string v69, "Failed to verify %1$s signature: %2$s"

    invoke-direct/range {v66 .. v69}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v66, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v67, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v68, "V3_SIG_INVALID_SDK_VERSIONS"

    const/16 v69, 0x42

    const-string v70, "Invalid SDK Version parameter(s) encountered in APK Signature scheme v3 signature: minSdkVersion %1$s maxSdkVersion: %2$s"

    invoke-direct/range {v67 .. v70}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v67, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_INVALID_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v68, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v69, "V3_SIG_DID_NOT_VERIFY"

    const/16 v70, 0x43

    const-string v71, "%1$s signature over signed-data did not verify"

    invoke-direct/range {v68 .. v71}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v68, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v69, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v70, "V3_SIG_NO_SIGNATURES"

    const/16 v71, 0x44

    const-string v72, "No signatures"

    invoke-direct/range {v69 .. v72}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v69, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v70, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v71, "V3_SIG_NO_SUPPORTED_SIGNATURES"

    const/16 v72, 0x45

    const-string v73, "No supported signatures"

    invoke-direct/range {v70 .. v73}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v70, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v71, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v72, "V3_SIG_NO_CERTIFICATES"

    const/16 v73, 0x46

    const-string v74, "No certificates"

    invoke-direct/range {v71 .. v74}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v71, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_CERTIFICATES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v72, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v73, "V3_MIN_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD"

    const/16 v74, 0x47

    const-string v75, "minSdkVersion mismatch between signed data and signature record: <%1$s> vs <%2$s>"

    invoke-direct/range {v72 .. v75}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v72, Lcom/android/apksig/ApkVerifier$Issue;->V3_MIN_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v73, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v74, "V3_MAX_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD"

    const/16 v75, 0x48

    const-string v76, "maxSdkVersion mismatch between signed data and signature record: <%1$s> vs <%2$s>"

    invoke-direct/range {v73 .. v76}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v73, Lcom/android/apksig/ApkVerifier$Issue;->V3_MAX_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v74, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v75, "V3_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD"

    const/16 v76, 0x49

    const-string v77, "Public key mismatch between certificate and signature record: <%1$s> vs <%2$s>"

    invoke-direct/range {v74 .. v77}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v74, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v75, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v76, "V3_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS"

    const/16 v77, 0x4a

    const-string v78, "Signature algorithms mismatch between signatures and digests records: %1$s vs %2$s"

    invoke-direct/range {v75 .. v78}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v75, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v76, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v77, "V3_SIG_APK_DIGEST_DID_NOT_VERIFY"

    const/16 v78, 0x4b

    const-string v79, "APK integrity check failed. %1$s digest mismatch. Expected: <%2$s>, actual: <%3$s>"

    invoke-direct/range {v76 .. v79}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v76, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_APK_DIGEST_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v77, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v78, "V3_SIG_POR_DID_NOT_VERIFY"

    const/16 v79, 0x4c

    const-string v80, "SigningCertificateLineage attribute containd a proof-of-rotation record with signature(s) that did not verify."

    invoke-direct/range {v77 .. v80}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v77, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_POR_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v78, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v79, "V3_SIG_MALFORMED_LINEAGE"

    const/16 v80, 0x4d

    const-string v81, "Failed to parse the SigningCertificateLineage structure in the APK Signature Scheme v3 signature\'s additional attributes section."

    invoke-direct/range {v78 .. v81}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v78, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_LINEAGE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v79, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v80, "V3_SIG_POR_CERT_MISMATCH"

    const/16 v81, 0x4e

    const-string v82, "APK signing certificate differs from the associated certificate found in the signer\'s SigningCertificateLineage."

    invoke-direct/range {v79 .. v82}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v79, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_POR_CERT_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v80, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v81, "V3_INCONSISTENT_SDK_VERSIONS"

    const/16 v82, 0x4f

    const-string v83, "APK Signature Scheme v3 signers supported min/max SDK versions are not continuous."

    invoke-direct/range {v80 .. v83}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v80, Lcom/android/apksig/ApkVerifier$Issue;->V3_INCONSISTENT_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v81, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v82, "V3_MISSING_SDK_VERSIONS"

    const/16 v83, 0x50

    const-string v84, "APK Signature Scheme v3 signers supported min/max SDK versions do not cover the entire desired range.  Found min:  %1$s max %2$s"

    invoke-direct/range {v81 .. v84}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v81, Lcom/android/apksig/ApkVerifier$Issue;->V3_MISSING_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v82, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v83, "V3_INCONSISTENT_LINEAGES"

    const/16 v84, 0x51

    const-string v85, "SigningCertificateLineages targeting different platform versions using APK Signature Scheme v3 are not all a part of the same overall lineage."

    invoke-direct/range {v82 .. v85}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v82, Lcom/android/apksig/ApkVerifier$Issue;->V3_INCONSISTENT_LINEAGES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v83, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v84, "APK_SIG_BLOCK_UNKNOWN_ENTRY_ID"

    const/16 v85, 0x52

    const-string v86, "APK Signing Block contains unknown entry: ID %1$#x"

    invoke-direct/range {v83 .. v86}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v83, Lcom/android/apksig/ApkVerifier$Issue;->APK_SIG_BLOCK_UNKNOWN_ENTRY_ID:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v84, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v85, "V4_SIG_MALFORMED_SIGNERS"

    const/16 v86, 0x53

    const-string v87, "V4 signature has malformed signer block"

    invoke-direct/range {v84 .. v87}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v84, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v85, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v86, "V4_SIG_UNKNOWN_SIG_ALGORITHM"

    const/16 v87, 0x54

    const-string v88, "V4 signature has unknown signing algorithm: %1$#x"

    invoke-direct/range {v85 .. v88}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v85, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v86, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v87, "V4_SIG_NO_SIGNATURES"

    const/16 v88, 0x55

    const-string v89, "V4 signature has no signature found"

    invoke-direct/range {v86 .. v89}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v86, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v87, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v88, "V4_SIG_NO_SUPPORTED_SIGNATURES"

    const/16 v89, 0x56

    const-string v90, "V4 signature has no supported signature"

    invoke-direct/range {v87 .. v90}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v87, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v88, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v89, "V4_SIG_DID_NOT_VERIFY"

    const/16 v90, 0x57

    const-string v91, "%1$s signature over signed-data did not verify"

    invoke-direct/range {v88 .. v91}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v88, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v89, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v90, "V4_SIG_VERIFY_EXCEPTION"

    const/16 v91, 0x58

    const-string v92, "Failed to verify %1$s signature: %2$s"

    invoke-direct/range {v89 .. v92}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v89, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v90, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v91, "V4_SIG_MALFORMED_PUBLIC_KEY"

    const/16 v92, 0x59

    const-string v93, "Malformed public key: %1$s"

    invoke-direct/range {v90 .. v93}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v90, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v91, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v92, "V4_SIG_MALFORMED_CERTIFICATE"

    const/16 v93, 0x5a

    const-string v94, "V4 signature has malformed certificate"

    invoke-direct/range {v91 .. v94}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v91, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v92, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v93, "V4_SIG_NO_CERTIFICATE"

    const/16 v94, 0x5b

    const-string v95, "V4 signature has no certificate"

    invoke-direct/range {v92 .. v95}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v92, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_NO_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v93, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v94, "V4_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD"

    const/16 v95, 0x5c

    const-string v96, "V4 signature has mismatched certificate and signature: <%1$s> vs <%2$s>"

    invoke-direct/range {v93 .. v96}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v93, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v94, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v95, "V4_SIG_APK_ROOT_DID_NOT_VERIFY"

    const/16 v96, 0x5d

    const-string v97, "V4 signature\'s hash tree root (content digest) did not verity"

    invoke-direct/range {v94 .. v97}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v94, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_APK_ROOT_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v95, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v96, "V4_SIG_APK_TREE_DID_NOT_VERIFY"

    const/16 v97, 0x5e

    const-string v98, "V4 signature\'s hash tree did not verity"

    invoke-direct/range {v95 .. v98}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v95, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_APK_TREE_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v96, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v97, "V4_SIG_MULTIPLE_SIGNERS"

    const/16 v98, 0x5f

    const-string v99, "V4 signature only supports one signer"

    invoke-direct/range {v96 .. v99}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v96, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v97, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v98, "V4_SIG_V2_V3_SIGNERS_MISMATCH"

    const/16 v99, 0x60

    const-string v100, "V4 signature and V2/V3 signature have mismatched certificates"

    invoke-direct/range {v97 .. v100}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v97, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v98, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v99, "V4_SIG_V2_V3_DIGESTS_MISMATCH"

    const/16 v100, 0x61

    const-string v101, "V4 signature and V2/V3 signature have mismatched digests"

    invoke-direct/range {v98 .. v101}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v98, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v99, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v100, "V4_SIG_VERSION_NOT_CURRENT"

    const/16 v101, 0x62

    const-string v102, "V4 signature format version %1$d is different from the tool\'s current version %2$d"

    invoke-direct/range {v99 .. v102}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v99, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_VERSION_NOT_CURRENT:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v100, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v101, "SOURCE_STAMP_SIG_MISSING"

    const/16 v102, 0x63

    const-string v103, "No SourceStamp signature"

    invoke-direct/range {v100 .. v103}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v100, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v101, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v102, "SOURCE_STAMP_MALFORMED_CERTIFICATE"

    const/16 v103, 0x64

    const-string v104, "Malformed certificate: %1$s"

    invoke-direct/range {v101 .. v104}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v101, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v102, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v103, "SOURCE_STAMP_MALFORMED_SIGNATURE"

    const/16 v104, 0x65

    const-string v105, "Malformed SourceStamp signature"

    invoke-direct/range {v102 .. v105}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v102, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v103, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v104, "SOURCE_STAMP_UNKNOWN_SIG_ALGORITHM"

    const/16 v105, 0x66

    const-string v106, "Unknown signature algorithm: %1$#x"

    invoke-direct/range {v103 .. v106}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v103, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v104, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v105, "SOURCE_STAMP_VERIFY_EXCEPTION"

    const/16 v106, 0x67

    const-string v107, "Failed to verify %1$s signature: %2$s"

    invoke-direct/range {v104 .. v107}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v104, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v105, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v106, "SOURCE_STAMP_DID_NOT_VERIFY"

    const/16 v107, 0x68

    const-string v108, "%1$s signature over signed-data did not verify"

    invoke-direct/range {v105 .. v108}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v105, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v106, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v107, "SOURCE_STAMP_NO_SIGNATURE"

    const/16 v108, 0x69

    const-string v109, "No signature"

    invoke-direct/range {v106 .. v109}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v106, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_NO_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v107, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v108, "SOURCE_STAMP_NO_SUPPORTED_SIGNATURE"

    const/16 v109, 0x6a

    const-string v110, "Signature not supported"

    invoke-direct/range {v107 .. v110}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v107, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_NO_SUPPORTED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    new-instance v108, Lcom/android/apksig/ApkVerifier$Issue;

    const-string v109, "SOURCE_STAMP_CERTIFICATE_MISMATCH_BETWEEN_SIGNATURE_BLOCK_AND_APK"

    const/16 v110, 0x6b

    const-string v111, "Certificate mismatch between SourceStamp block in APK signing block and SourceStamp file in APK: <%1$s> vs <%2$s>"

    invoke-direct/range {v108 .. v111}, Lcom/android/apksig/ApkVerifier$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v108, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_CERTIFICATE_MISMATCH_BETWEEN_SIGNATURE_BLOCK_AND_APK:Lcom/android/apksig/ApkVerifier$Issue;

    const/16 v109, 0x6c

    move/from16 v0, v109

    new-array v0, v0, [Lcom/android/apksig/ApkVerifier$Issue;

    move-object/from16 v109, v0

    const/16 v110, 0x0

    aput-object v1, v109, v110

    const/4 v1, 0x1

    aput-object v2, v109, v1

    const/4 v1, 0x2

    aput-object v3, v109, v1

    const/4 v1, 0x3

    aput-object v4, v109, v1

    const/4 v1, 0x4

    aput-object v5, v109, v1

    const/4 v1, 0x5

    aput-object v6, v109, v1

    const/4 v1, 0x6

    aput-object v7, v109, v1

    const/4 v1, 0x7

    aput-object v8, v109, v1

    const/16 v1, 0x8

    aput-object v9, v109, v1

    const/16 v1, 0x9

    aput-object v10, v109, v1

    const/16 v1, 0xa

    aput-object v11, v109, v1

    const/16 v1, 0xb

    aput-object v12, v109, v1

    const/16 v1, 0xc

    aput-object v13, v109, v1

    const/16 v1, 0xd

    aput-object v14, v109, v1

    const/16 v1, 0xe

    aput-object v15, v109, v1

    const/16 v1, 0xf

    aput-object v16, v109, v1

    const/16 v1, 0x10

    aput-object v17, v109, v1

    const/16 v1, 0x11

    aput-object v18, v109, v1

    const/16 v1, 0x12

    aput-object v19, v109, v1

    const/16 v1, 0x13

    aput-object v20, v109, v1

    const/16 v1, 0x14

    aput-object v21, v109, v1

    const/16 v1, 0x15

    aput-object v22, v109, v1

    const/16 v1, 0x16

    aput-object v23, v109, v1

    const/16 v1, 0x17

    aput-object v24, v109, v1

    const/16 v1, 0x18

    aput-object v25, v109, v1

    const/16 v1, 0x19

    aput-object v26, v109, v1

    const/16 v1, 0x1a

    aput-object v27, v109, v1

    const/16 v1, 0x1b

    aput-object v28, v109, v1

    const/16 v1, 0x1c

    aput-object v29, v109, v1

    const/16 v1, 0x1d

    aput-object v30, v109, v1

    const/16 v1, 0x1e

    aput-object v31, v109, v1

    const/16 v1, 0x1f

    aput-object v32, v109, v1

    const/16 v1, 0x20

    aput-object v33, v109, v1

    const/16 v1, 0x21

    aput-object v34, v109, v1

    const/16 v1, 0x22

    aput-object v35, v109, v1

    const/16 v1, 0x23

    aput-object v36, v109, v1

    const/16 v1, 0x24

    aput-object v37, v109, v1

    const/16 v1, 0x25

    aput-object v38, v109, v1

    const/16 v1, 0x26

    aput-object v39, v109, v1

    const/16 v1, 0x27

    aput-object v40, v109, v1

    const/16 v1, 0x28

    aput-object v41, v109, v1

    const/16 v1, 0x29

    aput-object v42, v109, v1

    const/16 v1, 0x2a

    aput-object v43, v109, v1

    const/16 v1, 0x2b

    aput-object v44, v109, v1

    const/16 v1, 0x2c

    aput-object v45, v109, v1

    const/16 v1, 0x2d

    aput-object v46, v109, v1

    const/16 v1, 0x2e

    aput-object v47, v109, v1

    const/16 v1, 0x2f

    aput-object v48, v109, v1

    const/16 v1, 0x30

    aput-object v49, v109, v1

    const/16 v1, 0x31

    aput-object v50, v109, v1

    const/16 v1, 0x32

    aput-object v51, v109, v1

    const/16 v1, 0x33

    aput-object v52, v109, v1

    const/16 v1, 0x34

    aput-object v53, v109, v1

    const/16 v1, 0x35

    aput-object v54, v109, v1

    const/16 v1, 0x36

    aput-object v55, v109, v1

    const/16 v1, 0x37

    aput-object v56, v109, v1

    const/16 v1, 0x38

    aput-object v57, v109, v1

    const/16 v1, 0x39

    aput-object v58, v109, v1

    const/16 v1, 0x3a

    aput-object v59, v109, v1

    const/16 v1, 0x3b

    aput-object v60, v109, v1

    const/16 v1, 0x3c

    aput-object v61, v109, v1

    const/16 v1, 0x3d

    aput-object v62, v109, v1

    const/16 v1, 0x3e

    aput-object v63, v109, v1

    const/16 v1, 0x3f

    aput-object v64, v109, v1

    const/16 v1, 0x40

    aput-object v65, v109, v1

    const/16 v1, 0x41

    aput-object v66, v109, v1

    const/16 v1, 0x42

    aput-object v67, v109, v1

    const/16 v1, 0x43

    aput-object v68, v109, v1

    const/16 v1, 0x44

    aput-object v69, v109, v1

    const/16 v1, 0x45

    aput-object v70, v109, v1

    const/16 v1, 0x46

    aput-object v71, v109, v1

    const/16 v1, 0x47

    aput-object v72, v109, v1

    const/16 v1, 0x48

    aput-object v73, v109, v1

    const/16 v1, 0x49

    aput-object v74, v109, v1

    const/16 v1, 0x4a

    aput-object v75, v109, v1

    const/16 v1, 0x4b

    aput-object v76, v109, v1

    const/16 v1, 0x4c

    aput-object v77, v109, v1

    const/16 v1, 0x4d

    aput-object v78, v109, v1

    const/16 v1, 0x4e

    aput-object v79, v109, v1

    const/16 v1, 0x4f

    aput-object v80, v109, v1

    const/16 v1, 0x50

    aput-object v81, v109, v1

    const/16 v1, 0x51

    aput-object v82, v109, v1

    const/16 v1, 0x52

    aput-object v83, v109, v1

    const/16 v1, 0x53

    aput-object v84, v109, v1

    const/16 v1, 0x54

    aput-object v85, v109, v1

    const/16 v1, 0x55

    aput-object v86, v109, v1

    const/16 v1, 0x56

    aput-object v87, v109, v1

    const/16 v1, 0x57

    aput-object v88, v109, v1

    const/16 v1, 0x58

    aput-object v89, v109, v1

    const/16 v1, 0x59

    aput-object v90, v109, v1

    const/16 v1, 0x5a

    aput-object v91, v109, v1

    const/16 v1, 0x5b

    aput-object v92, v109, v1

    const/16 v1, 0x5c

    aput-object v93, v109, v1

    const/16 v1, 0x5d

    aput-object v94, v109, v1

    const/16 v1, 0x5e

    aput-object v95, v109, v1

    const/16 v1, 0x5f

    aput-object v96, v109, v1

    const/16 v1, 0x60

    aput-object v97, v109, v1

    const/16 v1, 0x61

    aput-object v98, v109, v1

    const/16 v1, 0x62

    aput-object v99, v109, v1

    const/16 v1, 0x63

    aput-object v100, v109, v1

    const/16 v1, 0x64

    aput-object v101, v109, v1

    const/16 v1, 0x65

    aput-object v102, v109, v1

    const/16 v1, 0x66

    aput-object v103, v109, v1

    const/16 v1, 0x67

    aput-object v104, v109, v1

    const/16 v1, 0x68

    aput-object v105, v109, v1

    const/16 v1, 0x69

    aput-object v106, v109, v1

    const/16 v1, 0x6a

    aput-object v107, v109, v1

    const/16 v1, 0x6b

    aput-object v108, v109, v1

    sput-object v109, Lcom/android/apksig/ApkVerifier$Issue;->$VALUES:[Lcom/android/apksig/ApkVerifier$Issue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/apksig/ApkVerifier$Issue;->mFormat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1700(Lcom/android/apksig/ApkVerifier$Issue;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/ApkVerifier$Issue;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Issue;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Issue;
    .registers 2

    const-class v0, Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkVerifier$Issue;

    return-object v0
.end method

.method public static values()[Lcom/android/apksig/ApkVerifier$Issue;
    .registers 1

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->$VALUES:[Lcom/android/apksig/ApkVerifier$Issue;

    invoke-virtual {v0}, [Lcom/android/apksig/ApkVerifier$Issue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/ApkVerifier$Issue;

    return-object v0
.end method
