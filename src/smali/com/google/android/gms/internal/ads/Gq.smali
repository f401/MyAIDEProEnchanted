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
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vs;->J0()Lcom/google/android/gms/internal/ads/vs$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cr;->j6:Lcom/google/android/gms/internal/ads/vs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesCtrHmacAeadKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesEaxKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesGcmKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "ChaCha20Poly1305Key"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "KmsAeadKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "KmsEnvelopeAeadKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TINK_AEAD_1_0_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs;

    sput-object v0, Lcom/google/android/gms/internal/ads/Gq;->j6:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/vs;->J0()Lcom/google/android/gms/internal/ads/vs$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Gq;->j6:Lcom/google/android/gms/internal/ads/vs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TINK_AEAD_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs;

    sput-object v0, Lcom/google/android/gms/internal/ads/Gq;->DW:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/vs;->J0()Lcom/google/android/gms/internal/ads/vs$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cr;->FH:Lcom/google/android/gms/internal/ads/vs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesCtrHmacAeadKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesEaxKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesGcmKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "ChaCha20Poly1305Key"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "KmsAeadKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "KmsEnvelopeAeadKey"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TINK_AEAD"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs;

    sput-object v0, Lcom/google/android/gms/internal/ads/Gq;->FH:Lcom/google/android/gms/internal/ads/vs;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/Gq;->j6()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static j6()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/cr;->j6()V

    const-string v0, "TinkAead"

    new-instance v1, Lcom/google/android/gms/internal/ads/Fq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Fq;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oq;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Gq;->FH:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pq;->j6(Lcom/google/android/gms/internal/ads/vs;)V

    return-void
.end method
