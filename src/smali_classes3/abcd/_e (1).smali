.class public Labcd/_e;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_l;


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

    const-class v0, Labcd/_e;

    const-wide v1, 0x1340c821601c26bL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x131bace7e60e4ac9L  # 1.254403476348997E-216

    :try_start_6
    sget-boolean v3, Labcd/_e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/_e;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v0, -0x878ea8ae833d21bL  # -5.954616591312488E267

    :try_start_5
    sget-boolean v2, Labcd/_e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->tp()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/_e;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x20fedba4c36cd7bbL  # 9.426917388110548E-150

    :try_start_5
    sget-boolean v2, Labcd/_e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f080070

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/_e;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, 0x4d8e9b964f7522bL

    :try_start_5
    sget-boolean v2, Labcd/_e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-nez p1, :cond_1c

    invoke-virtual {p0}, Labcd/_e;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/_e;->DW:Z

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public run()Z
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/aide/FileTabListener;->editorMenuClose(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run_()Z
    .registers 8

    const-wide v0, 0xa0a6ebb1ae91977L

    :try_start_5
    sget-boolean v2, Labcd/_e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v3

    invoke-interface {v3}, Labcd/Nk$a;->J0()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    new-instance v4, Labcd/Ze;

    invoke-direct {v4, p0, v2}, Labcd/Ze;-><init>(Labcd/_e;Ljava/lang/String;)V

    const v2, 0x7f0d05bf

    const/4 v5, 0x0

    const v6, 0x7f0d05c0

    invoke-static {v3, v6, v2, v4, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_3d

    :cond_36
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Nk;->j6(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3f

    :goto_3d
    const/4 v0, 0x1

    return v0

    :catchall_3f
    move-exception v2

    sget-boolean v3, Labcd/_e;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_47
    throw v2
.end method
