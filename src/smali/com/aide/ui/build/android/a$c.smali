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
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
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
    .registers 4

    const-wide v2, -0x8f6e5d7f8dd7f81L    # -2.5294000361954E265

    const-class v0, Lcom/aide/ui/build/android/a$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/android/a;Lcom/aide/ui/build/android/a$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x67ad42b351dfe54dL
    .end annotation

    const-wide v2, 0x35eb94a2ece225dfL    # 5.897318710318919E-49

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x35eb94a2ece225dfL    # 5.897318710318919E-49

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/aide/ui/build/android/a$c;->FH:Lcom/aide/ui/build/android/a$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/a$c;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method protected done()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1acd5d596b300cffL
    .end annotation

    const-wide v2, -0x117b8b54416f4840L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x117b8b54416f4840L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-static {v0}, Lcom/aide/ui/build/android/a;->j6(Lcom/aide/ui/build/android/a;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-static {v1, v0}, Lcom/aide/ui/build/android/a;->j6(Lcom/aide/ui/build/android/a;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-static {v0}, Lcom/aide/ui/build/android/a;->DW(Lcom/aide/ui/build/android/a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a$c;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :catch_2
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/aide/ui/build/android/a$c;->Hw:Lcom/aide/ui/build/android/a;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aide/ui/build/android/a;->j6(Lcom/aide/ui/build/android/a;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
