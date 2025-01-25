.class final Lcom/google/android/gms/common/images/ImageManager$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final DW:Landroid/graphics/Bitmap;

.field private final FH:Ljava/util/concurrent/CountDownLatch;

.field private Hw:Z

.field private final j6:Landroid/net/Uri;

.field private final v5:Lcom/google/android/gms/common/images/ImageManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$c;->v5:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->j6:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/ImageManager$c;->DW:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Hw:Z

    iput-object p5, p0, Lcom/google/android/gms/common/images/ImageManager$c;->FH:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const-string v0, "OnBitmapLoadedRunnable must be executed in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->DW:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->v5:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->gn(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$a;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-boolean v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Hw:Z

    const/4 v3, 0x0

    if-nez v2, :cond_30

    if-nez v0, :cond_1d

    goto :goto_3a

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->v5:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->gn(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/images/b;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->j6:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/images/b;-><init>(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->DW:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Labcd/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->v5:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->gn(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/q;->j6()V

    throw v3

    :cond_3a
    :goto_3a
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->v5:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->v5(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$c;->j6:Landroid/net/Uri;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v2, :cond_95

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->j6(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_53
    if-ge v4, v3, :cond_95

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/images/a;

    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$c;->v5:Lcom/google/android/gms/common/images/ImageManager;

    if-eqz v0, :cond_69

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->DW(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/common/images/ImageManager$c;->DW:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7, v1}, Lcom/google/android/gms/common/images/a;->j6(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    goto :goto_89

    :cond_69
    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->Hw(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/common/images/ImageManager$c;->j6:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$c;->v5:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->DW(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/common/images/ImageManager$c;->v5:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v7}, Lcom/google/android/gms/common/images/ImageManager;->FH(Lcom/google/android/gms/common/images/ImageManager;)Labcd/Ax;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/google/android/gms/common/images/a;->j6(Landroid/content/Context;Labcd/Ax;Z)V

    :goto_89
    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$c;->v5:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->j6(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->FH:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->j6()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9f
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->DW()Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$c;->j6:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_aa
    move-exception v1

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_9f .. :try_end_ac} :catchall_aa

    goto :goto_ae

    :goto_ad
    throw v1

    :goto_ae
    goto :goto_ad
.end method
