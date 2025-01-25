.class public Labcd/pf;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_l;
.implements Labcd/Jl;


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

    const-class v0, Labcd/pf;

    const-wide v1, 0x3209ea158a4599d3L  # 1.2015227392767764E-67

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x20b6c7ae82c330L

    :try_start_6
    sget-boolean v3, Labcd/pf;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/pf;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x1d4ee5e604dcab69L

    :try_start_5
    sget-boolean v2, Labcd/pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->gn(Ljava/lang/String;)I

    move-result v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/pf;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Zo()I
    .registers 5

    const-wide v0, 0x2e4156125b261528L

    :try_start_5
    sget-boolean v2, Labcd/pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->VH(Ljava/lang/String;)I

    move-result v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/pf;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, 0x2f908198b5204204L

    :try_start_5
    sget-boolean v2, Labcd/pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Labcd/pf;->j6(Z)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return v0

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/pf;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x1db88f8e55893080L

    :try_start_5
    sget-boolean v2, Labcd/pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800af

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/pf;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, 0x6c40206c4310400L

    :try_start_5
    sget-boolean v2, Labcd/pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mk;->FH()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    invoke-static {v2}, Labcd/FileSystemUtils;->QX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->v5(Ljava/lang/String;)Z

    move-result p1
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_34

    if-eqz p1, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    return p1

    :catchall_34
    move-exception v2

    sget-boolean v3, Labcd/pf;->DW:Z

    if-eqz v3, :cond_41

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public run()Z
    .registers 6

    const-wide v0, 0x107ef71b336eaa08L

    :try_start_5
    sget-boolean v2, Labcd/pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    new-instance v4, Labcd/of;

    invoke-direct {v4, p0}, Labcd/of;-><init>(Labcd/pf;)V

    invoke-virtual {v3, v2, v4}, Labcd/Zk;->j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_22

    const/4 v0, 0x1

    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/pf;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method
