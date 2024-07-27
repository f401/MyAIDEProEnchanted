.class public Lcom/aide/ui/scm/ua;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/scm/ua$a;,
        Lcom/aide/ui/scm/ua$b;
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
.field private FH:Lcom/aide/ui/scm/wa;
    .annotation runtime Labcd/ru;
        field = -0x2220fca97c2f5005L
    .end annotation
.end field

.field private Hw:Landroid/content/ServiceConnection;
    .annotation runtime Labcd/ru;
        field = -0x231510d3b8752adL
    .end annotation
.end field

.field private VH:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x25958ebfbe05a680L
    .end annotation
.end field

.field private Zo:Lcom/aide/ui/scm/ua$a;
    .annotation runtime Labcd/ru;
        field = 0x1812ad0d63c2f0d3L
    .end annotation
.end field

.field private v5:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation runtime Labcd/ru;
        field = -0x58533af37b2d480L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-class v0, Lcom/aide/ui/scm/ua;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x2087ea6ef7c89ce0L    # 5.707899363908703E-152

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2087ea6ef7c89ce0L    # 5.707899363908703E-152

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->FH:Lcom/aide/ui/scm/wa;

    return-object v0
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->we(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/ua;->DW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/scm/ua;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x27842c0a13745814L
    .end annotation

    const-wide v2, 0x1ba36d6a09c57e43L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ba36d6a09c57e43L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u5206\u652f..."

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v4, 0x7f0d0047

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 99
    :goto_1
    return-void

    :cond_1
    const-string v0, "Git branch..."

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/aide/ui/scm/F;

    invoke-direct {v5, p0, v1, p2, v0}, Lcom/aide/ui/scm/F;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x28f4bb377f4b4503L
    .end annotation

    const-wide v8, -0x3bc5c64188023930L    # -4.837762409540312E20

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3bc5c64188023930L    # -4.837762409540312E20

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u6821\u9a8c..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u6821\u9a8c\u5206\u652f\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git checkout..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Checking out branch..."

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    iget-object v5, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/aide/ui/scm/H;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/scm/H;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_4

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private EQ()Lcom/aide/ui/scm/GitConfiguration;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2b8a0733edfe0dc0L
    .end annotation

    const-wide v6, 0x5a82bcfdef3b93c9L    # 1.01474564757024E128

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5a82bcfdef3b93c9L    # 1.01474564757024E128

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/GitConfiguration;

    invoke-static {}, Lcom/aide/ui/aa;->j3()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/aa;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->QX()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/aa;->XL()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/ui/scm/GitConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic FH(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/ua$a;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    return-object v0
.end method

.method static synthetic FH(Lcom/aide/ui/scm/ua;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J0(Ljava/lang/String;)V

    return-void
.end method

.method private FH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x40dc2d43acb5f490L
    .end annotation

    const-wide v2, 0x14c8d04d52dac0d3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14c8d04d52dac0d3L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u5220\u9664\u5206\u652f..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u5220\u9664\u5206\u652f\u4e2d..."

    :goto_1
    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git delete branch..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Deleting branch..."

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Labcd/Nk;->j6(ZZ)V

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    iget-object v1, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/aide/ui/scm/q;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/aide/ui/scm/q;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x86bb2cc32ec05ecL
    .end annotation

    const-wide v6, 0x23d80456d9ecf815L    # 5.162972679332215E-136

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23d80456d9ecf815L    # 5.162972679332215E-136

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5408\u5e76\u5206\u652f \'"

    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\' \u8fdb\u5165\u5f53\u524d\u5206\u652f \'"

    :goto_1
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/aide/ui/scm/w;

    invoke-direct {v2, p0, p1, p3}, Lcom/aide/ui/scm/w;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Git"

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v2, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "Merge branch \'"

    goto :goto_0

    :cond_2
    const-string v0, "\' into current branch \'"

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_3

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method static synthetic Hw(Lcom/aide/ui/scm/ua;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private J0(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3b3550bd80848bfL
    .end annotation

    const-wide v6, -0xe62dda94137600L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe62dda94137600L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u63a8\u9001..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u8fde\u63a5\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git push..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Connecting..."

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/aide/ui/scm/U;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/aide/ui/scm/U;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private J0()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1641fe54f100e7f0L
    .end annotation

    const-wide v2, 0x1be4de5f76a01a9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1be4de5f76a01a9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->u7()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private J8(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b8dcbc9c57bcde8L
    .end annotation

    const-wide v2, -0x1640851512dabce3L    # -2.4096494952195337E201

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1640851512dabce3L    # -2.4096494952195337E201

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/FileSystemUtils;->QX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/aide/ui/scm/ua;->j6(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private J8()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2ddbb469bc63908cL
    .end annotation

    const-wide v2, 0x18ab987d5f27d5cfL    # 7.742007321611037E-190

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18ab987d5f27d5cfL    # 7.742007321611037E-190

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Labcd/ji;

    invoke-direct {v1}, Labcd/ji;-><init>()V

    invoke-static {v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Ws(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x6d52810f1960fa65L
    .end annotation

    const-wide v4, -0x2507a283740f7ad0L    # -1.6889150209587744E130

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2507a283740f7ad0L    # -1.6889150209587744E130

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->j3()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Zk;->j6(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic Zo(Lcom/aide/ui/scm/ua;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->tp()V

    return-void
.end method

.method private gn()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2ebe0f4eafc2730L
    .end annotation

    const-wide v4, -0xcde87283d31d6e9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcde87283d31d6e9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u4e0d\u5141\u8bb8\u4e00\u6b21\u8fd0\u884c\u591a\u4e2a Git \u64cd\u4f5c"

    :goto_0
    :try_start_1
    const-string v2, "Git"

    invoke-static {v1, v2, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    new-instance v0, Lcom/aide/ui/scm/ua$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/scm/ua$a;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/I;)V

    iput-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_1

    .line 99
    :cond_3
    const-string v0, "Running multiple Git operations at once is not allowed"

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/ua$a;)Lcom/aide/ui/scm/ua$a;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/wa;)Lcom/aide/ui/scm/wa;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/ua;->FH:Lcom/aide/ui/scm/wa;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->Ws(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/ua;->FH(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/scm/ua;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private j6(Ljava/io/File;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x53418f6080af54b7L
    .end annotation

    const-wide v2, -0x186d7dd80a0b2824L    # -8.246443110822016E190

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x186d7dd80a0b2824L    # -8.246443110822016E190

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".git"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xa3c63ec78e65cb7L
    .end annotation

    const-wide v8, -0x28d07304010215c0L    # -9.484570854479309E111

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x28d07304010215c0L    # -9.484570854479309E111

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->gn()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->u7()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0, p1}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0, p2}, Lcom/aide/ui/scm/ua$a;->DW(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->J8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_4

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private tp()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x63b756be7ecc87cL
    .end annotation

    const-wide v2, 0xd9b2c47d7941367L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd9b2c47d7941367L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->FH:Lcom/aide/ui/scm/wa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private u7()Z
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3cc2df0364b434a9L
    .end annotation

    const-wide v6, 0x1c296f3547852e64L

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1c296f3547852e64L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->FH:Lcom/aide/ui/scm/wa;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/aide/ui/scm/ExternalGitService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/aide/ui/scm/ua;->Hw:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u65e0\u6cd5\u7ed1\u5b9a\u5230 Gitservice"

    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 99
    :goto_1
    return v0

    :cond_1
    const-string v0, "Could not bind to Gitservice"

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method static synthetic v5(Lcom/aide/ui/scm/ua;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->J8()V

    return-void
.end method

.method private we(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1eb4a4f86d28bbd4L
    .end annotation

    const-wide v2, -0x95306b685150dffL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x95306b685150dffL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "refs/heads/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private we()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x7d19e4c87d59dabL
    .end annotation

    const-wide v2, -0x933632422f84600L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x933632422f84600L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->j3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/aa;->j3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/aa;->aM()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/aa;->aM()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x419b884d7c39e61L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x419b884d7c39e61L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v2, -0x47dfdf930cb2e9b9L    # -2.3696000761101053E-38

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x47dfdf930cb2e9b9L    # -2.3696000761101053E-38

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.git"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Lcom/aide/ui/scm/ua$e;)V
    .registers 6

    const-wide v2, 0x111093b1d9a26dd0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x111093b1d9a26dd0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0}, Lcom/aide/ui/scm/ua$a;->FH(Lcom/aide/ui/scm/ua$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public EQ(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x50e2f4b5e730b5f9L    # 4.495243952663308E81

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x50e2f4b5e730b5f9L    # 4.495243952663308E81

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u5408\u5e76..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u83b7\u53d6\u5206\u652f\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git merge..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Getting branches..."

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/aide/ui/scm/t;

    invoke-direct {v3, p0, v1, v0}, Lcom/aide/ui/scm/t;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0x484213a06d5cd0ccL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x484213a06d5cd0ccL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-virtual {v0}, Lcom/aide/ui/scm/ua$a;->j6()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, -0x120a84ace045ff70L    # -4.8531780388571544E221

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x120a84ace045ff70L    # -4.8531780388571544E221

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Zk;->aM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/ua;->Hw(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Labcd/FileSystemUtils;->QX(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, -0x5369665f80794210L    # -6.77160821741954E-94

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5369665f80794210L    # -6.77160821741954E-94

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-virtual {v0}, Lcom/aide/ui/scm/ua$a;->DW()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, -0x4a67a4d13b61c177L    # -1.6274586180216236E-50

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4a67a4d13b61c177L    # -1.6274586180216236E-50

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public VH(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x32ac129d26ee0ef3L    # -3.279044576911264E64

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32ac129d26ee0ef3L    # -3.279044576911264E64

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u6821\u9a8c..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u83b7\u53d6\u5206\u652f\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git checkout..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Getting branches..."

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/aide/ui/scm/A;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/aide/ui/scm/A;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public VH()Z
    .registers 5

    const-wide v2, 0x40432d2ec881d6dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x40432d2ec881d6dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Zo()V
    .registers 11

    const-wide v8, -0x5adf353da3cf2c9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5adf353da3cf2c9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/aide/ui/scm/I;

    invoke-direct {v0, p0}, Lcom/aide/ui/scm/I;-><init>(Lcom/aide/ui/scm/ua;)V

    iput-object v0, p0, Lcom/aide/ui/scm/ua;->Hw:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x42a45c1ed07fbc05L    # -3.927902242938546E-13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x42a45c1ed07fbc05L    # -3.927902242938546E-13

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u63a8\u9001..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u83b7\u53d6\u5206\u652f\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git push..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Getting branch..."

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/aide/ui/scm/S;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/aide/ui/scm/S;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public gn(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x19ecd34d7badd840L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19ecd34d7badd840L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->we()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u672a\u5728 Git \u6e90\u4ee3\u7801\u7ba1\u7406\u8bbe\u7f6e\u4e2d\u8bbe\u7f6e\u7528\u6237\u540d\u548c\u7535\u5b50\u90ae\u4ef6\u3002"

    :goto_0
    :try_start_1
    new-instance v2, Lcom/aide/ui/scm/V;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/V;-><init>(Lcom/aide/ui/scm/ua;)V

    const-string v3, "Git"

    invoke-static {v1, v3, v0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :cond_1
    :goto_1
    return-void

    .line 98
    :cond_2
    const-string v0, "User name and email not set in Git Source Control Settings."

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Git \u63d0\u4ea4..."

    move-object v1, v0

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u6b63\u5728\u83b7\u53d6\u6587\u4ef6\u72b6\u6001..."

    :goto_3
    const/4 v2, 0x1

    :try_start_4
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/aide/ui/scm/X;

    invoke-direct {v3, p0, v1, v0}, Lcom/aide/ui/scm/X;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    const-string v0, "Git commit..."

    move-object v1, v0

    goto :goto_2

    :cond_6
    const-string v0, "Getting file status..."

    goto :goto_3
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x207271cb02e7f469L    # -1.9349336631514864E152

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x207271cb02e7f469L    # -1.9349336631514864E152

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->FH:Lcom/aide/ui/scm/wa;

    invoke-interface {v0}, Lcom/aide/ui/scm/wa;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Git"

    invoke-static {v1, v2, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/scm/ua$e;)V
    .registers 6

    const-wide v2, 0x600f3337d7c08d9dL    # 5.229056965832765E154

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x600f3337d7c08d9dL    # 5.229056965832765E154

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0}, Lcom/aide/ui/scm/ua$a;->FH(Lcom/aide/ui/scm/ua$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/ui/scm/ua$d;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/ua$d",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x4d2c5b4b7e22cc9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4d2c5b4b7e22cc9L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->J0()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v4, Lcom/aide/ui/scm/ua$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/aide/ui/scm/ua$a;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/I;)V

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/aide/ui/scm/k;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/scm/k;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$d;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-wide v8, -0x1c465e303a8dd9e4L    # -2.4764030441821898E172

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c465e303a8dd9e4L    # -2.4764030441821898E172

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u514b\u9686..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u8fde\u63a5\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git clone..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Connecting..."

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v2

    iget-object v7, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/aide/ui/scm/M;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/scm/M;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_4

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ef9b8422364e534L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u521b\u5efa..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u521b\u5efa\u4e2d"

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git create..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Creating..."

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v2

    iget-object v8, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/aide/ui/scm/K;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/aide/ui/scm/K;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/ua$a;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, 0x1ef9b8422364e534L

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/ua$c;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Lcom/aide/ui/scm/ua$c;",
            ")V"
        }
    .end annotation

    const-wide v8, 0x498d93d33737040L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x498d93d33737040L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u4e22\u5f03..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u820d\u5f03\u66f4\u6539.."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git discard..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Discarding changes..."

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    iget-object v6, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/aide/ui/scm/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/scm/i;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_4

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/ua$c;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/ua$c;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9e0d70d8f0fb0bdL    # -9.581930258209906E260

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u63d0\u4ea4..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u63d0\u4ea4\u66f4\u6539\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git commit..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Committing changes..."

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Ji;->Zo(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v2

    iget-object v8, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/aide/ui/scm/Z;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/aide/ui/scm/Z;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, -0x9e0d70d8f0fb0bdL    # -9.581930258209906E260

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, -0xc04cb4aff940ac0L    # -4.86966737481888E250

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc04cb4aff940ac0L    # -4.86966737481888E250

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/ua;->Hw(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-wide v2, -0x67a82624afadd67L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v1, :cond_0

    const-wide v4, -0x67a82624afadd67L

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public tp(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x57472e28a84e63c0L    # -1.612567936307889E-112

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x57472e28a84e63c0L    # -1.612567936307889E-112

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u5220\u9664\u5206\u652f..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u83b7\u53d6\u5206\u652f\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git delete branch..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Getting branches..."

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/aide/ui/scm/o;

    invoke-direct {v3, p0, v1, v0}, Lcom/aide/ui/scm/o;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public u7(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x48c968af8970f8a1L    # 4.426859685978088E42

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x48c968af8970f8a1L    # 4.426859685978088E42

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u5206\u652f..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u83b7\u53d6\u5206\u652f\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git branch..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Getting branch..."

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/aide/ui/scm/D;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/aide/ui/scm/D;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x3652d107453a1e7fL    # -8.330411701774194E46

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3652d107453a1e7fL    # -8.330411701774194E46

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0}, Lcom/aide/ui/scm/ua$a;->DW(Lcom/aide/ui/scm/ua$a;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public v5(Ljava/lang/String;)V
    .registers 10

    const-wide v6, -0x31a6d3ac89324600L    # -2.714666970567211E69

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x31a6d3ac89324600L    # -2.714666970567211E69

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Git \u62c9\u53d6..."

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u8fde\u63a5\u4e2d..."

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :goto_2
    return-void

    :cond_1
    const-string v0, "Git pull..."

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "Connecting..."

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/aide/ui/scm/O;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/aide/ui/scm/O;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method
