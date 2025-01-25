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
    .registers 3

    const-class v0, Lcom/aide/ui/scm/ua;

    const-wide v1, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2087ea6ef7c89ce0L  # 5.707899363908703E-152

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/scm/ua;->FH:Lcom/aide/ui/scm/wa;

    return-object p0
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->we(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1ba36d6a09c57e43L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_3b

    if-eqz v0, :cond_15

    const-string v0, "Git 分支..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v0, "Git branch..."

    .line 0
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0d0047

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    .line 99
    :cond_2a
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/aide/ui/scm/F;

    invoke-direct {v3, p0, v1, p2, v0}, Lcom/aide/ui/scm/F;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_17 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x1ba36d6a09c57e43L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x28f4bb377f4b4503L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x3bc5c64188023930L  # -4.837762409540312E20

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_4b

    if-eqz v0, :cond_19

    const-string v0, "Git 校验..."

    goto :goto_1b

    .line 99
    :cond_19
    const-string v0, "Git checkout..."

    .line 0
    :goto_1b
    :try_start_1b
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_4b

    if-eqz v1, :cond_24

    const-string v1, "正在校验分支中..."

    goto :goto_26

    .line 99
    :cond_24
    const-string v1, "Checking out branch..."

    .line 0
    :goto_26
    const/4 v2, 0x1

    :try_start_27
    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 99
    :cond_2e
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Labcd/Nk;->j6(ZZ)V

    iget-object v7, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/aide/ui/scm/H;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/aide/ui/scm/H;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_4b

    return-void

    :catchall_4b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_5d

    const-wide v2, -0x3bc5c64188023930L  # -4.837762409540312E20

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
.end method

.method private EQ()Lcom/aide/ui/scm/GitConfiguration;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2b8a0733edfe0dc0L
    .end annotation

    const-wide v0, 0x5a82bcfdef3b93c9L  # 1.01474564757024E128

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/GitConfiguration;

    invoke-static {}, Lcom/aide/ui/aa;->j3()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/aa;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/aa;->QX()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/aa;->XL()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/aide/ui/scm/GitConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-object v2

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method static synthetic FH(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/ua$a;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    return-object p0
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

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x14c8d04d52dac0d3L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_3f

    if-eqz v0, :cond_15

    const-string v0, "Git 删除分支..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v0, "Git delete branch..."

    .line 0
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3f

    if-eqz v1, :cond_20

    const-string v1, "正在删除分支中..."

    goto :goto_22

    .line 99
    :cond_20
    const-string v1, "Deleting branch..."

    .line 0
    :goto_22
    const/4 v2, 0x1

    :try_start_23
    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    .line 99
    :cond_2a
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Labcd/Nk;->j6(ZZ)V

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    iget-object v1, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/aide/ui/scm/q;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/aide/ui/scm/q;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, 0x14c8d04d52dac0d3L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    throw v0
.end method

.method private FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x86bb2cc32ec05ecL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x23d80456d9ecf815L  # 5.162972679332215E-136

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_50

    if-eqz v2, :cond_22

    const-string v2, "合并分支 \'"

    goto :goto_24

    .line 99
    :cond_22
    const-string v2, "Merge branch \'"

    .line 0
    :goto_24
    :try_start_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_50

    if-eqz v2, :cond_33

    const-string v2, "\' 进入当前分支 \'"

    goto :goto_35

    .line 99
    :cond_33
    const-string v2, "\' into current branch \'"

    .line 0
    :goto_35
    :try_start_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/scm/w;

    invoke-direct {v2, p0, p1, p3}, Lcom/aide/ui/scm/w;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Git"

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_50

    return-void

    .line 99
    :catchall_50
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, 0x23d80456d9ecf815L  # 5.162972679332215E-136

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v0
.end method

.method static synthetic Hw(Lcom/aide/ui/scm/ua;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method private J0(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x3b3550bd80848bfL
    .end annotation

    const-wide v0, -0xe62dda94137600L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_47

    if-eqz v2, :cond_15

    const-string v2, "Git 推送..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Git push..."

    .line 0
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_47

    if-eqz v3, :cond_20

    const-string v3, "正在连接中..."

    goto :goto_22

    .line 99
    :cond_20
    const-string v3, "Connecting..."

    .line 0
    :goto_22
    const/4 v4, 0x1

    :try_start_23
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    return-void

    .line 99
    :cond_2a
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->j6(ZZ)V

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/aide/ui/scm/U;

    invoke-direct {v6, p0, v4, v3, v2}, Lcom/aide/ui/scm/U;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_47

    return-void

    :catchall_47
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method private J0()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1641fe54f100e7f0L
    .end annotation

    const-wide v0, 0x1be4de5f76a01a9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->u7()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private J8(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b8dcbc9c57bcde8L
    .end annotation

    const-wide v0, -0x1640851512dabce3L  # -2.4096494952195337E201

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/FileSystemUtils;->QX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_17
    if-eqz v2, :cond_29

    invoke-direct {p0, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2b

    goto :goto_17

    :cond_29
    const/4 p1, 0x0

    return-object p1

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method private J8()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2ddbb469bc63908cL
    .end annotation

    const-wide v0, 0x18ab987d5f27d5cfL  # 7.742007321611037E-190

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Labcd/ji;

    invoke-direct {v3}, Labcd/ji;-><init>()V

    invoke-static {v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method private Ws(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x6d52810f1960fa65L
    .end annotation

    const-wide v0, -0x2507a283740f7ad0L  # -1.6889150209587744E130

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->j3()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Labcd/Zk;->j6(Ljava/util/List;Z)V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :cond_2d
    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method static synthetic Zo(Lcom/aide/ui/scm/ua;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->tp()V

    return-void
.end method

.method private gn()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2ebe0f4eafc2730L
    .end annotation

    const-wide v0, -0xcde87283d31d6e9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v2

    if-gtz v2, :cond_23

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-eqz v2, :cond_19

    goto :goto_23

    :cond_19
    new-instance v2, Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/scm/ua$a;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/I;)V

    iput-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    const/4 v0, 0x0

    return v0

    :cond_23
    :goto_23
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_39

    if-eqz v3, :cond_30

    const-string v3, "不允许一次运行多个 Git 操作"

    goto :goto_32

    .line 99
    :cond_30
    const-string v3, "Running multiple Git operations at once is not allowed"

    .line 0
    :goto_32
    :try_start_32
    const-string v4, "Git"

    invoke-static {v2, v4, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_39

    const/4 v0, 0x1

    return v0

    .line 99
    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
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
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;

    return-object p0
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
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private j6(Ljava/io/File;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x53418f6080af54b7L
    .end annotation

    const-wide v0, -0x186d7dd80a0b2824L  # -8.246443110822016E190

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    const-string v3, ".git"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return p1

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xa3c63ec78e65cb7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x28d07304010215c0L  # -9.484570854479309E111

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->gn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->u7()Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    :cond_23
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0, p1}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0, p2}, Lcom/aide/ui/scm/ua$a;->DW(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_32

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->J8()V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_34

    :cond_32
    const/4 p1, 0x1

    return p1

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, -0x28d07304010215c0L  # -9.484570854479309E111

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v0
.end method

.method private tp()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x63b756be7ecc87cL
    .end annotation

    const-wide v0, 0xd9b2c47d7941367L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1f

    :try_start_f
    iget-object v3, p0, Lcom/aide/ui/scm/ua;->FH:Lcom/aide/ui/scm/wa;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1c

    if-nez v3, :cond_1a

    :try_start_13
    iget-object v3, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    goto :goto_1a

    :catch_19
    move-exception v3

    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v2

    return-void

    :catchall_1c
    move-exception v3

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method private u7()Z
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3cc2df0364b434a9L
    .end annotation

    const-wide v0, 0x1c296f3547852e64L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->VH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_41

    :try_start_f
    iget-object v3, p0, Lcom/aide/ui/scm/ua;->FH:Lcom/aide/ui/scm/wa;

    const/4 v4, 0x1

    if-nez v3, :cond_3c

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/aide/ui/scm/ExternalGitService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/aide/ui/scm/ua;->Hw:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_3e

    if-eqz v3, :cond_34

    const-string v3, "无法绑定到 Gitservice"

    goto :goto_36

    .line 99
    :cond_34
    const-string v3, "Could not bind to Gitservice"

    .line 0
    :goto_36
    :try_start_36
    invoke-static {v3}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    monitor-exit v2

    const/4 v0, 0x0

    return v0

    .line 99
    :cond_3c
    monitor-exit v2

    return v4

    :catchall_3e
    move-exception v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_3e

    :try_start_40
    throw v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v2
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

    const-wide v0, -0x95306b685150dffL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "refs/heads/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_1b
    const-string v2, "refs/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    :cond_28
    :goto_28
    return-object p1

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private we()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x7d19e4c87d59dabL
    .end annotation

    const-wide v0, -0x933632422f84600L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->j3()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/aide/ui/aa;->j3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30

    invoke-static {}, Lcom/aide/ui/aa;->aM()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/aide/ui/aa;->aM()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_32

    if-lez v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x419b884d7c39e61L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_18

    if-nez v2, :cond_13

    const-string v0, ""

    goto :goto_17

    :cond_13
    :try_start_13
    invoke-static {v2}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    :goto_17
    return-object v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x47dfdf930cb2e9b9L  # -2.3696000761101053E-38

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/.git"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-object p1

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public DW(Lcom/aide/ui/scm/ua$e;)V
    .registers 6

    const-wide v0, 0x111093b1d9a26dd0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/aide/ui/scm/ua$a;->FH(Lcom/aide/ui/scm/ua$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    :cond_17
    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public EQ(Ljava/lang/String;)V
    .registers 8

    const-wide v0, 0x50e2f4b5e730b5f9L  # 4.495243952663308E81

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_3b

    if-eqz v2, :cond_15

    const-string v2, "Git 合并..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Git merge..."

    .line 0
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3b

    if-eqz v3, :cond_20

    const-string v3, "正在获取分支中..."

    goto :goto_22

    .line 99
    :cond_20
    const-string v3, "Getting branches..."

    .line 0
    :goto_22
    const/4 v4, 0x1

    :try_start_23
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    return-void

    .line 99
    :cond_2a
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/aide/ui/scm/t;

    invoke-direct {v5, p0, v3, v2}, Lcom/aide/ui/scm/t;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, -0x484213a06d5cd0ccL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    invoke-virtual {v2}, Lcom/aide/ui/scm/ua$a;->j6()I

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public FH(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x120a84ace045ff70L  # -4.8531780388571544E221

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_26

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Zk;->aM(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/ua;->Hw(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {p1}, Labcd/FileSystemUtils;->QX(Ljava/lang/String;)Z

    move-result p1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_28

    if-nez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, -0x5369665f80794210L  # -6.77160821741954E-94

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    invoke-virtual {v2}, Lcom/aide/ui/scm/ua$a;->DW()I

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x4a67a4d13b61c177L  # -1.6274586180216236E-50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 8

    const-wide v0, -0x32ac129d26ee0ef3L  # -3.279044576911264E64

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_3b

    if-eqz v2, :cond_15

    const-string v2, "Git 校验..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Git checkout..."

    .line 0
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3b

    if-eqz v3, :cond_20

    const-string v3, "正在获取分支中..."

    goto :goto_22

    .line 99
    :cond_20
    const-string v3, "Getting branches..."

    .line 0
    :goto_22
    const/4 v4, 0x1

    :try_start_23
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    return-void

    .line 99
    :cond_2a
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/aide/ui/scm/A;

    invoke-direct {v5, p0, v3, v2, p1}, Lcom/aide/ui/scm/A;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public VH()Z
    .registers 5

    const-wide v0, 0x40432d2ec881d6dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Zo()V
    .registers 11

    const-wide v0, -0x5adf353da3cf2c9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/aide/ui/scm/I;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/I;-><init>(Lcom/aide/ui/scm/ua;)V

    iput-object v2, p0, Lcom/aide/ui/scm/ua;->Hw:Landroid/content/ServiceConnection;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 8

    const-wide v0, -0x42a45c1ed07fbc05L  # -3.927902242938546E-13

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_3b

    if-eqz v2, :cond_15

    const-string v2, "Git 推送..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Git push..."

    .line 0
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3b

    if-eqz v3, :cond_20

    const-string v3, "正在获取分支中..."

    goto :goto_22

    .line 99
    :cond_20
    const-string v3, "Getting branch..."

    .line 0
    :goto_22
    const/4 v4, 0x1

    :try_start_23
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    return-void

    .line 99
    :cond_2a
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/aide/ui/scm/S;

    invoke-direct {v5, p0, v3, v2, p1}, Lcom/aide/ui/scm/S;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public gn(Ljava/lang/String;)V
    .registers 8

    const-wide v0, 0x19ecd34d7badd840L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->we()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_63

    if-eqz v3, :cond_1f

    const-string v3, "未在 Git 源代码管理设置中设置用户名和电子邮件。"

    goto :goto_21

    .line 98
    :cond_1f
    const-string v3, "User name and email not set in Git Source Control Settings."

    .line 0
    :goto_21
    :try_start_21
    new-instance v4, Lcom/aide/ui/scm/V;

    invoke-direct {v4, p0}, Lcom/aide/ui/scm/V;-><init>(Lcom/aide/ui/scm/ua;)V

    const-string v5, "Git"

    invoke-static {v2, v5, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 98
    :cond_2c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_63

    if-eqz v2, :cond_35

    const-string v2, "Git 提交..."

    goto :goto_37

    .line 99
    :cond_35
    const-string v2, "Git commit..."

    .line 98
    :goto_37
    :try_start_37
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_63

    if-eqz v3, :cond_40

    const-string v3, "正在获取文件状态..."

    goto :goto_42

    .line 99
    :cond_40
    const-string v3, "Getting file status..."

    .line 98
    :goto_42
    const/4 v4, 0x1

    :try_start_43
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4a

    return-void

    .line 99
    :cond_4a
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->j6(ZZ)V

    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/aide/ui/scm/X;

    invoke-direct {v5, p0, v3, v2}, Lcom/aide/ui/scm/X;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_62
    .catchall {:try_start_43 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_6b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    throw v2
.end method

.method public j6()V
    .registers 6

    const-wide v0, -0x207271cb02e7f469L  # -1.9349336631514864E152

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Z)Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_26

    :try_start_12
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->FH:Lcom/aide/ui/scm/wa;

    invoke-interface {v2}, Lcom/aide/ui/scm/wa;->cancel()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_26

    goto :goto_25

    :catch_18
    move-exception v2

    :try_start_19
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Git"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_26

    :goto_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public j6(Lcom/aide/ui/scm/ua$e;)V
    .registers 6

    const-wide v0, 0x600f3337d7c08d9dL  # 5.229056965832765E154

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/aide/ui/scm/ua$a;->FH(Lcom/aide/ui/scm/ua$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    :cond_17
    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public j6(Ljava/lang/String;Lcom/aide/ui/scm/ua$d;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/ua$d<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x4d2c5b4b7e22cc9L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->J0()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    new-instance v5, Lcom/aide/ui/scm/ua$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/aide/ui/scm/ua$a;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/I;)V

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/aide/ui/scm/k;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/scm/k;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$d;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x4d2c5b4b7e22cc9L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x1c465e303a8dd9e4L  # -2.4764030441821898E172

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_44

    if-eqz v0, :cond_19

    const-string v0, "Git 克隆..."

    goto :goto_1b

    .line 99
    :cond_19
    const-string v0, "Git clone..."

    .line 0
    :goto_1b
    :try_start_1b
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_44

    if-eqz v1, :cond_24

    const-string v1, "正在连接中..."

    goto :goto_26

    .line 99
    :cond_24
    const-string v1, "Connecting..."

    .line 0
    :goto_26
    const/4 v2, 0x1

    :try_start_27
    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 99
    :cond_2e
    iget-object v7, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v3

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/aide/ui/scm/M;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/aide/ui/scm/M;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_44

    return-void

    :catchall_44
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, -0x1c465e303a8dd9e4L  # -2.4764030441821898E172

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x1ef9b8422364e534L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_46

    if-eqz v0, :cond_1a

    const-string v0, "Git 创建..."

    goto :goto_1c

    .line 99
    :cond_1a
    const-string v0, "Git create..."

    .line 0
    :goto_1c
    :try_start_1c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_46

    if-eqz v1, :cond_25

    const-string v1, "正在创建中"

    goto :goto_27

    .line 99
    :cond_25
    const-string v1, "Creating..."

    .line 0
    :goto_27
    const/4 v2, 0x1

    :try_start_28
    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2f

    return-void

    .line 99
    :cond_2f
    iget-object v7, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v3

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/aide/ui/scm/K;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/aide/ui/scm/K;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/ua$a;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, 0x1ef9b8422364e534L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/ua$c;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Lcom/aide/ui/scm/ua$c;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x498d93d33737040L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_40

    if-eqz v0, :cond_19

    const-string v0, "Git 丢弃..."

    goto :goto_1b

    .line 99
    :cond_19
    const-string v0, "Git discard..."

    .line 0
    :goto_1b
    :try_start_1b
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_40

    if-eqz v1, :cond_24

    const-string v1, "正在舍弃更改.."

    goto :goto_26

    .line 99
    :cond_24
    const-string v1, "Discarding changes..."

    .line 0
    :goto_26
    const/4 v2, 0x1

    :try_start_27
    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 99
    :cond_2e
    iget-object v5, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/aide/ui/scm/i;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/scm/i;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x498d93d33737040L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/ua$c;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/ua$c;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x9e0d70d8f0fb0bdL  # -9.581930258209906E260

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_4d

    if-eqz v0, :cond_1a

    const-string v0, "Git 提交..."

    goto :goto_1c

    .line 99
    :cond_1a
    const-string v0, "Git commit..."

    .line 0
    :goto_1c
    :try_start_1c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_4d

    if-eqz v1, :cond_25

    const-string v1, "正在提交更改中..."

    goto :goto_27

    .line 99
    :cond_25
    const-string v1, "Committing changes..."

    .line 0
    :goto_27
    const/4 v2, 0x1

    :try_start_28
    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2f

    return-void

    .line 99
    :cond_2f
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Ji;->Zo(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v3

    iget-object v0, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/aide/ui/scm/Z;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/aide/ui/scm/Z;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_60

    const-wide v2, -0x9e0d70d8f0fb0bdL  # -9.581930258209906E260

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    throw v0
.end method

.method public j6(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0xc04cb4aff940ac0L  # -4.86966737481888E250

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_16

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/ua;->Hw(Ljava/lang/String;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x67a82624afadd67L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_30

    if-eqz v2, :cond_29

    return v1

    :cond_29
    :try_start_29
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2e
    .catchall {:try_start_29 .. :try_end_2c} :catchall_30

    const/4 p1, 0x1

    return p1

    :catch_2e
    move-exception p1

    return v1

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v1, :cond_41

    const-wide v2, -0x67a82624afadd67L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v0
.end method

.method public tp(Ljava/lang/String;)V
    .registers 8

    const-wide v0, -0x57472e28a84e63c0L  # -1.612567936307889E-112

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_3b

    if-eqz v2, :cond_15

    const-string v2, "Git 删除分支..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Git delete branch..."

    .line 0
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3b

    if-eqz v3, :cond_20

    const-string v3, "正在获取分支中..."

    goto :goto_22

    .line 99
    :cond_20
    const-string v3, "Getting branches..."

    .line 0
    :goto_22
    const/4 v4, 0x1

    :try_start_23
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    return-void

    .line 99
    :cond_2a
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/aide/ui/scm/o;

    invoke-direct {v5, p0, v3, v2}, Lcom/aide/ui/scm/o;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public u7(Ljava/lang/String;)V
    .registers 8

    const-wide v0, 0x48c968af8970f8a1L  # 4.426859685978088E42

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_3b

    if-eqz v2, :cond_15

    const-string v2, "Git 分支..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Git branch..."

    .line 0
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3b

    if-eqz v3, :cond_20

    const-string v3, "正在获取分支中..."

    goto :goto_22

    .line 99
    :cond_20
    const-string v3, "Getting branch..."

    .line 0
    :goto_22
    const/4 v4, 0x1

    :try_start_23
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    return-void

    .line 99
    :cond_2a
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/aide/ui/scm/D;

    invoke-direct {v5, p0, v3, v2, p1}, Lcom/aide/ui/scm/D;-><init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x3652d107453a1e7fL  # -8.330411701774194E46

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_18

    if-nez v2, :cond_13

    const-string v0, ""

    goto :goto_17

    :cond_13
    :try_start_13
    invoke-static {v2}, Lcom/aide/ui/scm/ua$a;->DW(Lcom/aide/ui/scm/ua$a;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    :goto_17
    return-object v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public v5(Ljava/lang/String;)V
    .registers 9

    const-wide v0, -0x31a6d3ac89324600L  # -2.714666970567211E69

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_3f

    if-eqz v2, :cond_15

    const-string v2, "Git 拉取..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Git pull..."

    .line 0
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3f

    if-eqz v3, :cond_20

    const-string v3, "正在连接中..."

    goto :goto_22

    .line 99
    :cond_20
    const-string v3, "Connecting..."

    .line 0
    :goto_22
    const/4 v4, 0x1

    :try_start_23
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    return-void

    .line 99
    :cond_2a
    iget-object v2, p0, Lcom/aide/ui/scm/ua;->Zo:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/aide/ui/scm/ua;->EQ()Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/scm/ua;->v5:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/aide/ui/scm/O;

    invoke-direct {v6, p0, v4, v3, v2}, Lcom/aide/ui/scm/O;-><init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method
