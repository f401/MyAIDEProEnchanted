.class public final Lcom/google/android/gms/internal/ads/Yx;
.super Lcom/google/android/gms/internal/ads/jy;


# static fields
.field private static final tp:Ljava/lang/Object;

.field private static volatile u7:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Yx;->tp:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V
    .registers 14

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    return-void
.end method


# virtual methods
.method protected final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    const-string v1, "E"

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->FH:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/Yx;->u7:Ljava/lang/String;

    if-nez v0, :cond_24

    sget-object v0, Lcom/google/android/gms/internal/ads/Yx;->tp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lcom/google/android/gms/internal/ads/Yx;->u7:Ljava/lang/String;

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/ads/Yx;->u7:Ljava/lang/String;

    :cond_1f
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v1

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v0

    :try_start_27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    sget-object v2, Lcom/google/android/gms/internal/ads/Yx;->u7:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/br;->FH:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    throw v1
.end method
