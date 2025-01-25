.class final Lcom/google/android/gms/internal/ads/gu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ou;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/gu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/gu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/gu;->j6:Lcom/google/android/gms/internal/ads/gu;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6()Lcom/google/android/gms/internal/ads/gu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/gu;->j6:Lcom/google/android/gms/internal/ads/gu;

    return-object v0
.end method


# virtual methods
.method public final DW(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/Nu;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/Nu;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/hu;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Unsupported message type: "

    if-eqz v0, :cond_1d

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_1d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :try_start_28
    const-class v0, Lcom/google/android/gms/internal/ads/hu;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->FH:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Nu;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3b} :catch_3c

    return-object v0

    :catch_3c
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Unable to get message info for "

    if-eqz v1, :cond_52

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_57

    :cond_52
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_57
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final j6(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/hu;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
