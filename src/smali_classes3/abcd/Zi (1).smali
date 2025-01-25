.class public Labcd/Zi;
.super Ljava/lang/Object;


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

    const-class v0, Labcd/Zi;

    const-wide v1, 0xa7d87b311cbd940L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x434e8c3e1080f590L  # -2.421976226709997E-16

    :try_start_6
    sget-boolean v3, Labcd/Zi;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Zi;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x189c35afd9a26540L  # -1.1021972943534958E190

    :try_start_6
    sget-boolean v3, Labcd/Zi;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    :cond_d
    const p0, 0x7f07003c

    return p0

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Zi;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static FH(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xc905cf331f936c1L

    :try_start_6
    sget-boolean v3, Labcd/Zi;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/Zi;->v5(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const p0, 0x7f0d0021

    return p0

    :cond_17
    invoke-static {p0}, Labcd/Zi;->Hw(Ljava/lang/String;)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_23

    if-eqz p0, :cond_21

    const p0, 0x7f0d0022

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Labcd/Zi;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method private static Hw(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3d2abd1d455e638L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7a1dc839f10170cL

    :try_start_6
    sget-boolean v3, Labcd/Zi;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "res"

    invoke-static {p0, v3}, Labcd/FileSystemUtils;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_27

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Labcd/Zi;->DW:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method public static j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/s1243808733/aide/MainListener;->onCreateClass(Ljava/lang/String;Lcom/aide/common/ab;)V

    return-void
.end method

.method public static j6(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x133276b234e85fd5L  # -1.2727515520869425E216

    :try_start_6
    sget-boolean v3, Labcd/Zi;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/Zi;->v5(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {p0}, Labcd/Zi;->Hw(Ljava/lang/String;)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1e

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0

    :catchall_1e
    move-exception v3

    sget-boolean v4, Labcd/Zi;->DW:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method public static j6_SOURCE(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 9
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
    sget-boolean v0, Labcd/Zi;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1cf1ad8875693dd8L  # -1.4304325500539307E169

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/Zi;->v5(Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_3e

    const-string v1, ""

    const v2, 0x7f0d05ca

    if-eqz v0, :cond_28

    :try_start_18
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v3, Labcd/Xi;

    invoke-direct {v3, p0, p1}, Labcd/Xi;-><init>(Ljava/lang/String;Lcom/aide/common/ab;)V

    const v4, 0x7f0d0021

    invoke-static {v0, v4, v2, v1, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ab;)V

    goto :goto_3d

    :cond_28
    invoke-static {p0}, Labcd/Zi;->Hw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v3, Labcd/Yi;

    invoke-direct {v3, p0, p1}, Labcd/Yi;-><init>(Ljava/lang/String;Lcom/aide/common/ab;)V

    const v4, 0x7f0d0022

    invoke-static {v0, v4, v2, v1, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ab;)V
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3e

    :cond_3d
    :goto_3d
    return-void

    :catchall_3e
    move-exception v0

    sget-boolean v1, Labcd/Zi;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, -0x1cf1ad8875693dd8L  # -1.4304325500539307E169

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method private static v5(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x28454ddf00a7bd63L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xc349c5c3073d7fL

    :try_start_6
    sget-boolean v3, Labcd/Zi;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Labcd/gj;->DW(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_27

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Labcd/Zi;->DW:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method
