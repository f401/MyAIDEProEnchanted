.class Lcom/aide/ui/scm/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final v5:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x211b08b7829df4fcL  # 3.303492113476146E-149

    const-class v4, Lcom/aide/ui/scm/w;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/w;->v5:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/w;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/w;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x195ee4dcccc8491bL
    .end annotation

    const-wide v0, -0x1b710b91ee712e4cL  # -2.449940552896963E176

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/w;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_49

    if-eqz v3, :cond_17

    const-string v3, "Git 合并..."

    goto :goto_19

    .line 99
    :cond_17
    const-string v3, "Git merge..."

    .line 0
    :goto_19
    :try_start_19
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_49

    if-eqz v4, :cond_22

    const-string v4, "合并分支..."

    goto :goto_24

    .line 99
    :cond_22
    const-string v4, "Merging branches..."

    .line 0
    :goto_24
    const/4 v5, 0x1

    :try_start_25
    invoke-static {v2, v3, v4, v5}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2c

    return-void

    :cond_2c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->j6(ZZ)V

    iget-object v2, p0, Lcom/aide/ui/scm/w;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->FH(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/ua$a;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/w;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {v3}, Lcom/aide/ui/scm/ua;->Hw(Lcom/aide/ui/scm/ua;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/scm/v;

    invoke-direct {v4, p0, v2}, Lcom/aide/ui/scm/v;-><init>(Lcom/aide/ui/scm/w;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_49

    return-void

    .line 99
    :catchall_49
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/w;->DW:Z

    if-eqz v3, :cond_51

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_51
    throw v2
.end method
