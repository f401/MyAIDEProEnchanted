.class public final Lcom/google/android/gms/internal/ads/Rq;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/internal/ads/vs;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FH:Lcom/google/android/gms/internal/ads/vs;

.field public static final j6:Lcom/google/android/gms/internal/ads/vs;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    invoke-static {}, Lcom/google/android/gms/internal/ads/vs;->J0()Lcom/google/android/gms/internal/ads/vs$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Gq;->j6:Lcom/google/android/gms/internal/ads/vs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/vs$a;

    const-string v1, "TinkHybridDecrypt"

    const-string v2, "HybridDecrypt"

    const-string v3, "EciesAeadHkdfPrivateKey"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v6, "TinkHybridEncrypt"

    const-string v7, "HybridEncrypt"

    const-string v8, "EciesAeadHkdfPublicKey"

    invoke-static {v6, v7, v8, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v9, "TINK_HYBRID_1_0_0"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs;

    sput-object v0, Lcom/google/android/gms/internal/ads/Rq;->j6:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/vs;->J0()Lcom/google/android/gms/internal/ads/vs$a;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    move-object v0, v9

    check-cast v0, Lcom/google/android/gms/internal/ads/vs$a;

    const-string v0, "TINK_HYBRID_1_1_0"

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs;

    sput-object v0, Lcom/google/android/gms/internal/ads/Rq;->DW:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/vs;->J0()Lcom/google/android/gms/internal/ads/vs$a;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/internal/ads/Gq;->FH:Lcom/google/android/gms/internal/ads/vs;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/ads/vs$a;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-static {v6, v7, v8, v4, v5}, Lcom/google/android/gms/internal/ads/pq;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Lcom/google/android/gms/internal/ads/fs;)Lcom/google/android/gms/internal/ads/vs$a;

    const-string v2, "TINK_HYBRID"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/vs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vs$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs;

    sput-object v0, Lcom/google/android/gms/internal/ads/Rq;->FH:Lcom/google/android/gms/internal/ads/vs;

    :try_start_73
    invoke-static {}, Lcom/google/android/gms/internal/ads/Gq;->j6()V

    new-instance v2, Lcom/google/android/gms/internal/ads/Tq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Tq;-><init>()V

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oq;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Sq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Sq;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oq;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pq;->j6(Lcom/google/android/gms/internal/ads/vs;)V
    :try_end_89
    .catch Ljava/security/GeneralSecurityException; {:try_start_73 .. :try_end_89} :catch_8a

    return-void

    :catch_8a
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
