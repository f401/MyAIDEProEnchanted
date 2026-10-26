.class public final Lcom/google/android/gms/internal/ads/by;
.super Lcom/google/android/gms/internal/ads/jy;


# instance fields
.field private final u7:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/by;->u7:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method protected final j6()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/by;->u7:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/yx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/yx;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yx;->DW:Ljava/lang/Long;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/br;->sG:Ljava/lang/Long;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yx;->FH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yx;->Hw:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->sy:Ljava/lang/Integer;

    monitor-exit v2

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
