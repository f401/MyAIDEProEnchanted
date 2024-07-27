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
    .registers 4

    const-wide v2, 0x89fb8e3a80c8310L

    const-class v0, Lcom/aide/ui/scm/ExternalGitService$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/QK;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x580edecc1d1cb1L
    .end annotation

    const-wide v4, 0x16c2def0c8a40251L    # 4.930654860694455E-199

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16c2def0c8a40251L    # 4.930654860694455E-199

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/QK;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW(Labcd/gE;Labcd/pK;)Labcd/FG;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x72177e3e4eaa24dL
    .end annotation

    const-wide v2, 0x3fef52b077e935a0L    # 0.9788439123164387

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3fef52b077e935a0L    # 0.9788439123164387

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v0, p1, p2}, Labcd/QK;->DW(Labcd/gE;Labcd/pK;)Labcd/FG;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public DW()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1917d26fe51374c0L
    .end annotation

    const-wide v2, -0x1fcff9dff6746563L    # -2.148457267869725E155

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1fcff9dff6746563L    # -2.148457267869725E155

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v0}, Labcd/QK;->DW()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4b97b3ad0f8bed0L
    .end annotation

    const-wide v2, -0x3e7be0178a24a98fL    # -4.220443073209847E7

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3e7be0178a24a98fL    # -4.220443073209847E7

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v0, p1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(J)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xd00104289708d1fL
    .end annotation

    const-wide v4, 0x1d0482d38985b0e0L    # 6.793602450356195E-169

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x1d0482d38985b0e0L    # 6.793602450356195E-169

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v0, p1, p2}, Labcd/QK;->j6(J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()J
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4170fc516f482493L
    .end annotation

    const-wide v2, -0x3ce565028e0b994L    # -1.721299158996857E290

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ce565028e0b994L    # -1.721299158996857E290

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v0}, Labcd/QK;->j6()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/gE;Labcd/pK;)Labcd/FG;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9feb1af3c695e7L
    .end annotation

    const-wide v2, -0x737db791de77970L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x737db791de77970L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v0, p1, p2}, Labcd/QK;->j6(Labcd/gE;Labcd/pK;)Labcd/FG;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x31593fee3908f200L
    .end annotation

    const-wide v2, 0x4282cbb34093f07L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4282cbb34093f07L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$b;->v5:Labcd/QK;

    invoke-virtual {v0, p1}, Labcd/QK;->j6(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$b;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
