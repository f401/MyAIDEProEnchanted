.class public Labcd/wf;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_l;
.implements Labcd/Wl;


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

    const-class v0, Labcd/wf;

    const-wide v1, 0x1298307f917b3980L  # 4.282812849239566E-219

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x6814401eea64bbefL

    :try_start_6
    sget-boolean v3, Labcd/wf;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/wf;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .registers 6

    const-wide v0, -0x4430036edf71d61fL  # -1.3546847573518018E-20

    :try_start_5
    sget-boolean v2, Labcd/wf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v4}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/wf;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x238efa909ff6d880L

    :try_start_5
    sget-boolean v2, Labcd/wf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "Files - Delete"

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/wf;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, -0xe21749201c5f8f4L  # -3.1823773091253837E240

    :try_start_5
    sget-boolean v2, Labcd/wf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Labcd/wf;->j6(Z)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return v0

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/wf;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x2f502309bd273f80L  # 8.505902491221837E-81

    :try_start_5
    sget-boolean v2, Labcd/wf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800ab

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/wf;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    .line 93
    const-wide v0, -0x257639ac853ca80L

    :try_start_5
    sget-boolean v2, Labcd/wf;->j6:Z

    if-eqz v2, :cond_c

    .line 94
    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    .line 96
    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->FH()Ljava/lang/String;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_22

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    if-eqz v0, :cond_22

    .line 99
    const/4 p1, 0x1

    .line 101
    :cond_22
    return p1

    :catchall_23
    move-exception v2

    .line 103
    sget-boolean v3, Labcd/wf;->DW:Z

    if-eqz v3, :cond_30

    .line 104
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :cond_30
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public run()Z
    .registers 9

    const-wide v0, -0x1b67fa04ea691448L

    :try_start_5
    sget-boolean v2, Labcd/wf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const v6, 0x7f0d05d3

    invoke-static {v6, v5}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v4

    const v4, 0x7f0d05d2

    invoke-static {v4, v7}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Labcd/vf;

    invoke-direct {v7, p0, v2}, Labcd/vf;-><init>(Labcd/wf;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v5, v4, v7, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    return v6

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/wf;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method
