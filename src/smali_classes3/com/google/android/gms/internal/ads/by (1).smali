.class public final Lcom/google/android/gms/internal/ads/by;
.super Lcom/google/android/gms/internal/ads/jy;


# instance fields
.field private final u7:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II[Ljava/lang/StackTraceElement;)V
    .registers 15

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
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/by;->u7:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    new-instance v2, Lcom/google/android/gms/internal/ads/yx;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/yx;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/yx;->DW:Ljava/lang/Long;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/br;->sG:Ljava/lang/Long;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/yx;->FH:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yx;->Hw:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_36
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/br;->sy:Ljava/lang/Integer;

    goto :goto_41

    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_36

    :goto_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_1b .. :try_end_45} :catchall_43

    throw v1

    :cond_46
    return-void
.end method
