.class public abstract Lcom/google/android/gms/internal/ads/cw;
.super Ljava/lang/Object;


# instance fields
.field protected volatile j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method

.method public static final j6(Lcom/google/android/gms/internal/ads/cw;[B)Lcom/google/android/gms/internal/ads/cw;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/cw;",
            ">(TT;[B)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;[BII)Lcom/google/android/gms/internal/ads/cw;

    return-object p0
.end method

.method private static final j6(Lcom/google/android/gms/internal/ads/cw;[BII)Lcom/google/android/gms/internal/ads/cw;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/cw;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/ads/Uv;->j6([BII)Lcom/google/android/gms/internal/ads/Uv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Uv;->j6(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/bw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method

.method public static final j6(Lcom/google/android/gms/internal/ads/cw;)[B
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cw;->j6()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->j6([BII)Lcom/google/android/gms/internal/ads/Vv;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Vv;->j6()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public DW()Lcom/google/android/gms/internal/ads/cw;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cw;

    return-object v0
.end method

.method protected FH()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cw;->DW()Lcom/google/android/gms/internal/ads/cw;

    move-result-object v0

    return-object v0
.end method

.method public final j6()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cw;->FH()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return v0
.end method

.method public abstract j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
.end method

.method public j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ew;->j6(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
