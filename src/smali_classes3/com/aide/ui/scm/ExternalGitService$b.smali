.class Lcom/aide/ui/scm/ExternalGitService$b;
.super Labcd/QK;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/ExternalGitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private v5:Labcd/QK;
    .annotation runtime Labcd/ru;
        field = 0x15c45aa6b6fd5e50L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/scm/ExternalGitService$b;

    const-wide v1, 0x89fb8e3a80c8310L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/QK;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x580edecc1d1cb1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x16c2def0c8a40251L  # 4.930654860694455E-199

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/QK;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW(Labcd/gE;Labcd/pK;)Labcd/FG;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x72177e3e4eaa24dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x3fef52b077e935a0L  # 0.9788439123164387

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v0, p1, p2}, Labcd/QK;->DW(Labcd/gE;Labcd/pK;)Labcd/FG;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v1, :cond_24

    const-wide v2, 0x3fef52b077e935a0L  # 0.9788439123164387

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method

.method public DW()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1917d26fe51374c0L
    .end annotation

    const-wide v0, -0x1fcff9dff6746563L  # -2.148457267869725E155

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v2}, Labcd/QK;->DW()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4b97b3ad0f8bed0L
    .end annotation

    const-wide v0, -0x3e7be0178a24a98fL  # -4.220443073209847E7

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v2, p1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(J)I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xd00104289708d1fL
    .end annotation

    const-wide v0, 0x1d0482d38985b0e0L  # 6.793602450356195E-169

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v2, p1, p2}, Labcd/QK;->j6(J)I

    move-result p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return p1

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6()J
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4170fc516f482493L
    .end annotation

    const-wide v0, -0x3ce565028e0b994L  # -1.721299158996857E290

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v2}, Labcd/QK;->j6()J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-wide v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(Labcd/gE;Labcd/pK;)Labcd/FG;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9feb1af3c695e7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x737db791de77970L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v0, p1, p2}, Labcd/QK;->j6(Labcd/gE;Labcd/pK;)Labcd/FG;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v1, :cond_24

    const-wide v2, -0x737db791de77970L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x31593fee3908f200L
    .end annotation

    const-wide v0, 0x4282cbb34093f07L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v2, p1}, Labcd/QK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method
