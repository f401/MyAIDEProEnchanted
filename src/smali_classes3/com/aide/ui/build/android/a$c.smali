.class Lcom/aide/ui/build/android/a$c;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/aide/engine/SyntaxError;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Lcom/aide/ui/build/android/a$a;
    .annotation runtime Labcd/ru;
        field = -0x2382aacc878ae164L
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/build/android/a;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/a$c;

    const-wide v1, -0x8f6e5d7f8dd7f81L  # -2.5294000361954E265

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/android/a;Lcom/aide/ui/build/android/a$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x67ad42b351dfe54dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a$c;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x35eb94a2ece225dfL  # 5.897318710318919E-49

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/aide/ui/build/android/a$c;->FH:Lcom/aide/ui/build/android/a$a;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a$c;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x35eb94a2ece225dfL  # 5.897318710318919E-49

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method protected done()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1acd5d596b300cffL
    .end annotation

    const-wide v0, -0x117b8b54416f4840L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_38

    if-nez v2, :cond_37

    :try_start_12
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-static {v2}, Lcom/aide/ui/build/android/a;->j6(Lcom/aide/ui/build/android/a;)V

    goto :goto_37

    :cond_20
    iget-object v3, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-static {v3, v2}, Lcom/aide/ui/build/android/a;->j6(Lcom/aide/ui/build/android/a;Ljava/util/Map;)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_25} :catch_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_25} :catch_26
    .catchall {:try_start_12 .. :try_end_25} :catchall_38

    goto :goto_37

    :catch_26
    move-exception v2

    :try_start_27
    iget-object v3, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/aide/ui/build/android/a;->j6(Lcom/aide/ui/build/android/a;Ljava/lang/Throwable;)V

    goto :goto_37

    :catch_31
    move-exception v2

    iget-object v2, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-static {v2}, Lcom/aide/ui/build/android/a;->DW(Lcom/aide/ui/build/android/a;)V
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_38

    :cond_37
    :goto_37
    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a$c;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method
