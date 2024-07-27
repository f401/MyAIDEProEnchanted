.class public final Lcom/google/android/gms/internal/ads/ow;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv",
        "<",
        "Lcom/google/android/gms/internal/ads/ow;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile FH:[Lcom/google/android/gms/internal/ads/ow;


# instance fields
.field public Hw:[B

.field public v5:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ow;->Hw:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ow;->v5:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method

.method public static Hw()[Lcom/google/android/gms/internal/ads/ow;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/ow;->FH:[Lcom/google/android/gms/internal/ads/ow;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/aw;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ow;->FH:[Lcom/google/android/gms/internal/ads/ow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/ow;

    sput-object v0, Lcom/google/android/gms/internal/ads/ow;->FH:[Lcom/google/android/gms/internal/ads/ow;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/ow;->FH:[Lcom/google/android/gms/internal/ads/ow;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final FH()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ow;->Hw:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ow;->v5:[B

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ow;->v5:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ow;->Hw:[B

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ow;->Hw:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ow;->v5:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
