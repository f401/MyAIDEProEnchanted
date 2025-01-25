.class public Lcom/android/apksig/internal/oid/OidConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/oid/OidConstants$OidToUserFriendlyNameMapper;
    }
.end annotation


# static fields
.field public static final OID_DIGEST_MD5:Ljava/lang/String; = "1.2.840.113549.2.5"

.field public static final OID_DIGEST_SHA1:Ljava/lang/String; = "1.3.14.3.2.26"

.field public static final OID_DIGEST_SHA224:Ljava/lang/String; = "2.16.840.1.101.3.4.2.4"

.field public static final OID_DIGEST_SHA256:Ljava/lang/String; = "2.16.840.1.101.3.4.2.1"

.field public static final OID_DIGEST_SHA384:Ljava/lang/String; = "2.16.840.1.101.3.4.2.2"

.field public static final OID_DIGEST_SHA512:Ljava/lang/String; = "2.16.840.1.101.3.4.2.3"

.field public static final OID_SIG_DSA:Ljava/lang/String; = "1.2.840.10040.4.1"

.field public static final OID_SIG_EC_PUBLIC_KEY:Ljava/lang/String; = "1.2.840.10045.2.1"

.field public static final OID_SIG_MD5_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.4"

.field public static final OID_SIG_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.1"

.field public static final OID_SIG_SHA1_WITH_DSA:Ljava/lang/String; = "1.2.840.10040.4.3"

.field public static final OID_SIG_SHA1_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.1"

.field public static final OID_SIG_SHA1_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.5"

.field public static final OID_SIG_SHA224_WITH_DSA:Ljava/lang/String; = "2.16.840.1.101.3.4.3.1"

.field public static final OID_SIG_SHA224_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.3.1"

.field public static final OID_SIG_SHA224_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.14"

.field public static final OID_SIG_SHA256_WITH_DSA:Ljava/lang/String; = "2.16.840.1.101.3.4.3.2"

.field public static final OID_SIG_SHA256_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.3.2"

.field public static final OID_SIG_SHA256_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.11"

.field public static final OID_SIG_SHA384_WITH_DSA:Ljava/lang/String; = "2.16.840.1.101.3.4.3.3"

.field public static final OID_SIG_SHA384_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.3.3"

.field public static final OID_SIG_SHA384_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.12"

.field public static final OID_SIG_SHA512_WITH_DSA:Ljava/lang/String; = "2.16.840.1.101.3.4.3.4"

.field public static final OID_SIG_SHA512_WITH_ECDSA:Ljava/lang/String; = "1.2.840.10045.4.3.4"

.field public static final OID_SIG_SHA512_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.13"

.field public static final OID_TO_JCA_DIGEST_ALG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OID_TO_JCA_SIGNATURE_ALG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_SIG_ALG_OIDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/util/InclusiveIntRange;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x12

    const/16 v7, 0x17

    const/16 v6, 0x15

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/oid/OidConstants;->SUPPORTED_SIG_ALG_OIDS:Ljava/util/Map;

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.113549.1.1.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v4}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.113549.1.1.4"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    const/16 v3, 0x8

    invoke-static {v4, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.113549.1.1.5"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.113549.1.1.14"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.113549.1.1.11"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.113549.1.1.12"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.113549.1.1.13"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.113549.1.1.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v4}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.113549.1.1.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.113549.1.1.5"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v4}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.113549.1.1.14"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.113549.1.1.11"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.113549.1.1.12"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.113549.1.1.13"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.113549.1.1.1"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    const/16 v3, 0x8

    invoke-static {v4, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.113549.1.1.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.113549.1.1.5"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.113549.1.1.14"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    const/16 v3, 0x8

    invoke-static {v4, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.113549.1.1.11"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.113549.1.1.12"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.113549.1.1.13"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.113549.1.1.1"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    const/16 v3, 0x8

    invoke-static {v4, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.113549.1.1.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.113549.1.1.5"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.113549.1.1.14"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.113549.1.1.11"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    const/16 v3, 0x8

    invoke-static {v4, v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.113549.1.1.12"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.113549.1.1.13"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.113549.1.1.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.113549.1.1.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.113549.1.1.5"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.113549.1.1.14"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.113549.1.1.11"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.113549.1.1.12"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.113549.1.1.13"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.113549.1.1.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.113549.1.1.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.113549.1.1.5"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.113549.1.1.14"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.113549.1.1.11"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.113549.1.1.12"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.113549.1.1.13"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.10040.4.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "2.16.840.1.101.3.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "2.16.840.1.101.3.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.10040.4.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v4}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.10040.4.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    const/16 v3, 0x9

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "2.16.840.1.101.3.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "2.16.840.1.101.3.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.10040.4.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    const/16 v3, 0x16

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.10040.4.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "2.16.840.1.101.3.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "2.16.840.1.101.3.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.10040.4.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    const/16 v3, 0x16

    invoke-static {v3}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.10040.4.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "2.16.840.1.101.3.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "2.16.840.1.101.3.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.10040.4.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "2.16.840.1.101.3.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "2.16.840.1.101.3.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.10040.4.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "2.16.840.1.101.3.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "2.16.840.1.101.3.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.10045.2.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.10045.2.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.10045.2.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.10045.2.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.10045.2.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.10045.4.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.10045.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.10045.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.10045.4.3.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.2.840.113549.2.5"

    const-string v1, "1.2.840.10045.4.3.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.10045.4.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v8}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.10045.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.10045.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.10045.4.3.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "1.3.14.3.2.26"

    const-string v1, "1.2.840.10045.4.3.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.10045.4.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.10045.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.10045.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.10045.4.3.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.4"

    const-string v1, "1.2.840.10045.4.3.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.10045.4.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.10045.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.10045.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.10045.4.3.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.1"

    const-string v1, "1.2.840.10045.4.3.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.10045.4.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.10045.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.10045.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.10045.4.3.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.2"

    const-string v1, "1.2.840.10045.4.3.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.10045.4.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.10045.4.3.1"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.10045.4.3.2"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.10045.4.3.3"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    const-string v0, "2.16.840.1.101.3.4.2.3"

    const-string v1, "1.2.840.10045.4.3.4"

    new-array v2, v5, [Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-static {v6}, Lcom/android/apksig/internal/util/InclusiveIntRange;->from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/oid/OidConstants;->addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/oid/OidConstants;->OID_TO_JCA_DIGEST_ALG:Ljava/util/Map;

    const-string v1, "1.2.840.113549.2.5"

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.3.14.3.2.26"

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.2.4"

    const-string v2, "SHA-224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.2.1"

    const-string v2, "SHA-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.2.2"

    const-string v2, "SHA-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.2.3"

    const-string v2, "SHA-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/oid/OidConstants;->OID_TO_JCA_SIGNATURE_ALG:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.4"

    const-string v2, "MD5withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.113549.1.1.5"

    const-string v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.113549.1.1.14"

    const-string v2, "SHA224withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.113549.1.1.11"

    const-string v2, "SHA256withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.113549.1.1.12"

    const-string v2, "SHA384withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.113549.1.1.13"

    const-string v2, "SHA512withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.10040.4.3"

    const-string v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.3.1"

    const-string v2, "SHA224withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2.16.840.1.101.3.4.3.2"

    const-string v2, "SHA256withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.10045.4.1"

    const-string v2, "SHA1withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.10045.4.3.1"

    const-string v2, "SHA224withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.10045.4.3.2"

    const-string v2, "SHA256withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.10045.4.3.3"

    const-string v2, "SHA384withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.10045.4.3.4"

    const-string v2, "SHA512withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addSupportedSigAlg(Ljava/lang/String;Ljava/lang/String;[Lcom/android/apksig/internal/util/InclusiveIntRange;)V
    .registers 6

    sget-object v0, Lcom/android/apksig/internal/oid/OidConstants;->SUPPORTED_SIG_ALG_OIDS:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSigAlgSupportedApiLevels(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/util/InclusiveIntRange;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/apksig/internal/oid/OidConstants;->SUPPORTED_SIG_ALG_OIDS:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1e
.end method
