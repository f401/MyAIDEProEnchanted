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
    .registers 6

    const-class v0, Lcom/aide/ui/scm/w;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, 0x211b08b7829df4fcL    # 3.303492113476146E-149

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v4, -0x1b710b91ee712e4cL    # -2.449940552896963E176

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b710b91ee712e4cL    # -2.449940552896963E176

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/aide/ui/scm/w;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Git \u5408\u5e76..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5408\u5e76\u5206\u652f..."

    :goto_1
    const/4 v3, 0x1

    :try_start_2
    invoke-static {v2, v1, v0, v3}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    return-void

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    iget-object v0, p0, Lcom/aide/ui/scm/w;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->FH(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/ua$a;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/scm/w;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {v1}, Lcom/aide/ui/scm/ua;->Hw(Lcom/aide/ui/scm/ua;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/scm/v;

    invoke-direct {v2, p0, v0}, Lcom/aide/ui/scm/v;-><init>(Lcom/aide/ui/scm/w;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/w;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    const-string v0, "Git merge..."

    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string v0, "Merging branches..."

    goto :goto_1
.end method
