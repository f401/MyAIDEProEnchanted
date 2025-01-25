.class public final Lcom/google/android/gms/internal/ads/Gq;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/internal/ads/vs;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FH:Lcom/google/android/gms/internal/ads/vs;

.field public static final j6:Lcom/google/android/gms/internal/ads/vs;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    invoke-static {}, Lcom/google/android/gms/internal/ads/vs;->J0()Lcom/google/android/gms/internal/ads/vs$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cr;->j6:Lcom/google/android/gms/internal/ads/vs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesCtrHmacAeadKey"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v6, "AesEaxKey"

    invoke-static {v1, v2, v6, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v7, "AesGcmKey"

    invoke-static {v1, v2, v7, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v8, "ChaCha20Poly1305Key"

    invoke-static {v1, v2, v8, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v9, "KmsAeadKey"

    invoke-static {v1, v2, v9, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v10, "KmsEnvelopeAeadKey"

    invoke-static {v1, v2, v10, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v11, "TINK_AEAD_1_0_0"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs;

    sput-object v0, Lcom/google/android/gms/internal/ads/Gq;->j6:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/vs;->J0()Lcom/google/android/gms/internal/ads/vs$a;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/ads/vs$a;

    const-string v0, "TINK_AEAD_1_1_0"

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs;

    sput-object v0, Lcom/google/android/gms/internal/ads/Gq;->DW:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/vs;->J0()Lcom/google/android/gms/internal/ads/vs$a;

    move-result-object v0

    sget-object v11, Lcom/google/android/gms/internal/ads/cr;->FH:Lcom/google/android/gms/internal/ads/vs;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/ads/vs$a;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-static {v1, v2, v6, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-static {v1, v2, v7, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-static {v1, v2, v8, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-static {v1, v2, v9, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-static {v1, v2, v10, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TINK_AEAD"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs;

    sput-object v0, Lcom/google/android/gms/internal/ads/Gq;->FH:Lcom/google/android/gms/internal/ads/vs;

    :try_start_af
    invoke-static {}, Lcom/google/android/gms/internal/ads/Gq;->j6()V
    :try_end_b2
    .catch Ljava/security/GeneralSecurityException; {:try_start_af .. :try_end_b2} :catch_b3

    return-void

    :catch_b3
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static j6()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/cr;->j6()V

    new-instance v0, Lcom/google/android/gms/internal/ads/Fq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Fq;-><init>()V

    const-string v1, "TinkAead"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oq;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Gq;->FH:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pq;->j6(Lcom/google/android/gms/internal/ads/vs;)V

    return-void
.end method
