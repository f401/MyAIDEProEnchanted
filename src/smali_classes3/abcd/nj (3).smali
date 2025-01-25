.class public Labcd/nj;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/IProject;


# annotations
.annotation runtime Labcd/xu;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/nj;

    const-wide v1, 0x63572b601615d00L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x16b3750e3e6abe0L

    :try_start_6
    sget-boolean v3, Labcd/nj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/nj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private J0()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2376bb3b4e6c88bL
    .end annotation

    const-wide v0, 0x408ba896d7e2e728L  # 885.0736539580148

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x2

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method private J8()Z
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xef062b50a0ed8ccL
    .end annotation

    const-wide v0, 0x13fd5eda0cdae8e7L  # 2.18109522500606E-212

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Labcd/nj;->J0()I

    move-result v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, ".js"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0}, Labcd/nj;->J0()I

    move-result v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2d

    if-lt v2, v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    return v4

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, 0x44c42d04f37cea40L  # 1.9055557981370173E23

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x30aeb2fadb20f743L  # 3.3935737570261485E-74

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x671a151ab10ce597L  # -9.838410984250534E-189

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public EQ(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x26c2ad1c5b7259d0L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x11d74b4fc844a95L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/nj;->J8(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_17

    if-nez p1, :cond_15

    const-string p1, "com.aide.ui"

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public FH()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/g$b;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x1c850759c45e28f3L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/trainer/g$b;

    const-string v3, "course_javascript"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "com.aide.ui"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/16 v6, 0xa

    invoke-direct {v2, v3, v6, v5}, Lcom/aide/ui/trainer/g$b;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    new-array v3, v4, [Lcom/aide/ui/trainer/g$b;

    aput-object v2, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-object v0

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x7dff525fe565800L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x2bbba4282c705a00L  # -8.69721033974069E97

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public J0(Ljava/lang/String;)I
    .registers 6

    const-wide v0, 0x1e6f5586e7fb37b0L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public J8(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x4151477c5a36a069L  # 4529649.409584143

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.ui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_21

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public QX(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x29e17eee5bab2477L  # 5.959721466068599E-107

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    const-string v3, "main.js"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return p1

    :catchall_18
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public VH()Lcom/aide/engine/EngineSolution;
    .registers 5

    const-wide v0, -0x441ca0c43f96a555L  # -3.281745380405861E-20

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v3

    invoke-virtual {v3}, Labcd/vj;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/mj;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/aide/engine/EngineSolution;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v0

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x1cdedc8291a92be0L  # -3.234027786481385E169

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Ws(Ljava/lang/String;)I
    .registers 6

    const-wide v0, 0x44ca5f0449da429L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, -0x1

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public XL(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x15d85e843fd307e8L  # -2.315290099362105E203

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, -0x29e5dcca5497fdbL  # -9.00962352863147E295

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->u7()Z

    move-result v2

    if-eqz v2, :cond_1f

    return v3

    :cond_1f
    invoke-direct {p0}, Labcd/nj;->J8()Z

    move-result v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public Zo(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0xdcfca7ed11e6b48L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public aM(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x14c887d5262a811L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getProjectAttribute()Ljava/lang/String;
    .registers 5

    const-wide v0, -0xe7c600e91784d45L  # -6.389565477903566E238

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_3e

    if-eqz v3, :cond_1f

    const-string v3, "项目路径:"

    goto :goto_21

    :cond_1f
    const-string v3, "JavaScript Project Home:"

    :goto_21
    :try_start_21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</b><br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3e

    return-object v0

    :catchall_3e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_46
    throw v2
.end method

.method public getTemplates()[Labcd/Sk$a;
    .registers 19

    move-object/from16 v13, p0

    const-wide v14, -0xbec07bcd8b25d60L

    :try_start_7
    sget-boolean v0, Labcd/nj;->j6:Z

    if-eqz v0, :cond_e

    invoke-static {v14, v15, v13}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v0, Labcd/Sk$b;

    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v1

    const/16 v16, 0x0

    const/4 v12, 0x1

    if-nez v1, :cond_27

    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_27

    :cond_24
    const/16 v17, 0x0

    goto :goto_29

    :cond_27
    :goto_27
    const/16 v17, 0x1

    :goto_29
    const/4 v3, 0x7

    const-string v4, "JavaScript Application"

    const-string v5, "JavaScript"

    const-string v6, "MyJavaScriptApplication"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "com.aide.ui"

    const-string v10, "JAVASCRIPT"

    const-string v11, "course_javascript"

    move-object v1, v0

    move-object/from16 v2, p0

    const/4 v14, 0x1

    move/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Labcd/Sk$b;-><init>(Labcd/IProject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Labcd/Sk$a;

    const-string v2, "JavaScript Application"

    const v4, 0x7f07007a

    const-string v5, "HelloJavaScript.zip"

    new-array v6, v14, [Ljava/lang/String;

    const-string v1, "main.js"

    aput-object v1, v6, v16

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Labcd/Sk$a;-><init>(Ljava/lang/String;Labcd/Sk$b;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_5b

    new-array v0, v14, [Labcd/Sk$a;

    aput-object v8, v0, v16

    return-object v0

    :catchall_5b
    move-exception v0

    sget-boolean v1, Labcd/nj;->DW:Z

    if-eqz v1, :cond_68

    const-wide v1, -0xbec07bcd8b25d60L

    invoke-static {v0, v1, v2, v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_68
    throw v0
.end method

.method public gn(Ljava/lang/String;)I
    .registers 6

    const-wide v0, -0x131733f9272853L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const p1, 0x7f0d002f

    return p1

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j3(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x1c3f1f144d7838d5L  # 1.25829268694712E-172

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x447004e70125894dL  # -8.465260549819842E-22

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x1b01e1683720807L  # -2.668932806384441E300

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/nj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x2148b78d8b651000L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Labcd/nj;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, -0x2148b78d8b651000L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/nj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x719658b4e297340L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Labcd/nj;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x719658b4e297340L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/nj;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x277a855e3c2971d0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/nj;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x277a855e3c2971d0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method public j6(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/nj;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x58b9b5191a52d50fL  # 2.593084664570742E119

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/nj;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x58b9b5191a52d50fL  # 2.593084664570742E119

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public j6(Z)V
    .registers 11

    const-wide v0, 0x17d3a8df9dbadf45L  # 6.732848627205032E-194

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->DW(ZZ)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    sget-object v3, Lcom/aide/ui/build/f;->v5:Lcom/aide/ui/build/javascript/a;

    invoke-virtual {v2, v3}, Labcd/we;->j6(Labcd/ze;)V

    sget-object v2, Lcom/aide/ui/build/f;->v5:Lcom/aide/ui/build/javascript/a;

    invoke-virtual {v2}, Lcom/aide/ui/build/javascript/a;->gn()V

    goto :goto_38

    :cond_26
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0611

    const-string v6, "large_project"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    :goto_38
    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_46

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v2
.end method

.method public tp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x52938cbb52e87cbdL  # -6.983250908491241E-90

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public tp()Z
    .registers 5

    const-wide v0, -0x364be7215aebaa00L  # -1.1473442840234002E47

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public u7(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x22caf822bf5618d8L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public u7()V
    .registers 10

    const-wide v0, -0x1b689610b0b5a35L  # -2.131579110218775E300

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0611

    const-string v6, "large_project"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public v5()Z
    .registers 5

    const-wide v0, -0x6f68e1225434eba0L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public v5(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x4eb28c84df6b9a8L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_32

    if-eqz v3, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v2

    :goto_3c
    goto :goto_3b
.end method

.method public we()Z
    .registers 5

    const-wide v0, 0x1455b611153728L

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public we(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x2e546c556a77b8f1L  # 1.6426482293869194E-85

    :try_start_5
    sget-boolean v2, Labcd/nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method
