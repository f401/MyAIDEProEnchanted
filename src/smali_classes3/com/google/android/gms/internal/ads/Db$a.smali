.class final Lcom/google/android/gms/internal/ads/Db$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/Db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final j6:Z


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/Xb;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/Db;->DW:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/Db$a;->j6:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Db$a;->DW:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Db$a;->FH:Z

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Db$a;->FH:Z

    if-nez v0, :cond_11

    const-string v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Db$a;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Db;->DW(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Db$a;->FH:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Db$a;->DW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_11

    move-wide v7, v2

    goto :goto_2b

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Db$a;->DW:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Xb;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/Xb;->FH:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Db$a;->DW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Xb;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/Xb;->FH:J
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_7f

    sub-long/2addr v7, v5

    :goto_2b
    cmp-long v1, v7, v2

    if-gtz v1, :cond_31

    monitor-exit p0

    return-void

    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Db$a;->DW:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Xb;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/Xb;->FH:J

    const-string v3, "(%-4d ms) %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p1, v6, v0

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Db$a;->DW:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/Xb;

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/Xb;->FH:J

    const-string v8, "(+%-4d) [%2d] %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v4

    iget-wide v1, v3, Lcom/google/android/gms/internal/ads/Xb;->DW:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/Xb;->j6:Ljava/lang/String;

    aput-object v1, v9, v5

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_31 .. :try_end_7b} :catchall_7f

    move-wide v1, v6

    goto :goto_51

    :cond_7d
    monitor-exit p0

    return-void

    :catchall_7f
    move-exception p1

    monitor-exit p0

    goto :goto_83

    :goto_82
    throw p1

    :goto_83
    goto :goto_82
.end method

.method public final j6(Ljava/lang/String;J)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Db$a;->FH:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Db$a;->DW:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/ads/Xb;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Xb;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_20

    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Marker added to finished log"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method
