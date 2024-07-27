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

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    return-object v0

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Pu;->Hw()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wu;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/wu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wu;->j6()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wu;->j6()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yt;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ru;->j6()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/wu;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ru;->j6()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/wu;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wu;->DW:Lcom/google/android/gms/internal/ads/yt;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/yt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;

    monitor-exit p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->FH:Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Pu;->DW()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->Hw:Lcom/google/android/gms/internal/ads/yt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
