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
    .registers 4

    const-wide v2, 0xa7d87b311cbd940L

    const-class v0, Labcd/Zi;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x434e8c3e1080f590L    # -2.421976226709997E-16

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x434e8c3e1080f590L    # -2.421976226709997E-16

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zi;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW(Ljava/lang/String;)I
    .registers 7

    const-wide v4, -0x189c35afd9a26540L    # -1.1021972943534958E190

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x189c35afd9a26540L    # -1.1021972943534958E190

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f07003c

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zi;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static FH(Ljava/lang/String;)I
    .registers 7

    const-wide v4, -0xc905cf331f936c1L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc905cf331f936c1L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Labcd/Zi;->v5(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d0021

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Labcd/Zi;->Hw(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d0022

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zi;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private static Hw(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x3d2abd1d455e638L
    .end annotation

    const-wide v4, 0x7a1dc839f10170cL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7a1dc839f10170cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "res"

    invoke-static {p0, v0}, Labcd/FileSystemUtils;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z
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

    sget-boolean v1, Labcd/Zi;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/s1243808733/aide/MainListener;->onCreateClass(Ljava/lang/String;Lcom/aide/common/ab;)V

    return-void
.end method

.method public static j6(Ljava/lang/String;)Z
    .registers 7

    const-wide v4, -0x133276b234e85fd5L    # -1.2727515520869425E216

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x133276b234e85fd5L    # -1.2727515520869425E216

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Labcd/Zi;->v5(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Labcd/Zi;->Hw(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zi;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public static j6_SOURCE(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x1cf1ad8875693dd8L    # -1.4304325500539307E169

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1cf1ad8875693dd8L    # -1.4304325500539307E169

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Labcd/Zi;->v5(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v1, Labcd/Xi;

    invoke-direct {v1, p0, p1}, Labcd/Xi;-><init>(Ljava/lang/String;Lcom/aide/common/ab;)V

    const v5, 0x7f0d0021

    const v6, 0x7f0d05ca

    const-string v7, ""

    invoke-static {v0, v5, v6, v7, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ab;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p0}, Labcd/Zi;->Hw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v1, Labcd/Yi;

    invoke-direct {v1, p0, p1}, Labcd/Yi;-><init>(Ljava/lang/String;Lcom/aide/common/ab;)V

    const v5, 0x7f0d0022

    const v6, 0x7f0d05ca

    const-string v7, ""

    invoke-static {v0, v5, v6, v7, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Zi;->DW:Z

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private static v5(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x28454ddf00a7bd63L
    .end annotation

    const-wide v4, -0xc349c5c3073d7fL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc349c5c3073d7fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Labcd/gj;->DW(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

    sget-boolean v1, Labcd/Zi;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
