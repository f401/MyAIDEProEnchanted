.class final Lcom/google/android/gms/internal/ads/Xt;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/internal/ads/Vt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;"
        }
    .end annotation
.end field

.field private static final j6:Lcom/google/android/gms/internal/ads/Vt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Wt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Wt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Xt;->j6:Lcom/google/android/gms/internal/ads/Vt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Xt;->FH()Lcom/google/android/gms/internal/ads/Vt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Xt;->DW:Lcom/google/android/gms/internal/ads/Vt;

    return-void
.end method

.method static DW()Lcom/google/android/gms/internal/ads/Vt;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/Xt;->DW:Lcom/google/android/gms/internal/ads/Vt;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static FH()Lcom/google/android/gms/internal/ads/Vt;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Vt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j6()Lcom/google/android/gms/internal/ads/Vt;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/Xt;->j6:Lcom/google/android/gms/internal/ads/Vt;

    return-object v0
.end method
