.class public Lcom/google/android/gms/internal/ads/wu;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/Ut;


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/yt;

.field private volatile FH:Lcom/google/android/gms/internal/ads/Pu;

.field private volatile Hw:Lcom/google/android/gms/internal/ads/yt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ut;->DW()Lcom/google/android/gms/internal/ads/Ut;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/wu;->j6:Lcom/google/android/gms/internal/ads/Ut;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    if-nez v0, :cond_1d

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    goto :goto_1d

    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;
    :try_end_11
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    goto :goto_9

    :catch_12
    move-exception v0

    :try_start_13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    sget-object p1, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    goto :goto_9

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p1

    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    return-object p1
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Pu;->Hw()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wu;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/wu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wu;->j6()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wu;->j6()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ru;->j6()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/wu;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ru;->j6()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/wu;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wu;->DW:Lcom/google/android/gms/internal/ads/yt;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/yt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    if-nez v0, :cond_19

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    :goto_16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Pu;->DW()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    goto :goto_16

    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method
