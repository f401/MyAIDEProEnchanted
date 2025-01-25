.class public Labcd/ff;
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

    const-class v0, Labcd/ff;

    const-wide v1, 0x45f861e2426c01a0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x134b1fff080f6013L  # -4.497629785336536E215

    :try_start_6
    sget-boolean v3, Labcd/ff;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/ff;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v0, -0x240ade948a7fffa0L  # -9.599061910993171E134

    :try_start_5
    sget-boolean v2, Labcd/ff;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->tp()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return v3

    :cond_18
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Tl;->j6()Z

    move-result v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2d

    if-eqz v0, :cond_2b

    return v3

    :cond_2b
    const/4 v0, 0x1

    return v0

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/ff;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0x12a31cdd09177b30L  # -6.373281533366067E218

    :try_start_5
    sget-boolean v2, Labcd/ff;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f080074

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/ff;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, -0x83808b8e09beb48L  # -9.891460329438124E268

    :try_start_5
    sget-boolean v2, Labcd/ff;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-nez p1, :cond_16

    invoke-virtual {p0}, Labcd/ff;->isEnabled()Z

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

    sget-boolean v3, Labcd/ff;->DW:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public run()Z
    .registers 5

    const-wide v0, -0x134b7ff85d458f60L  # -4.41685601668423E215

    :try_start_5
    sget-boolean v2, Labcd/ff;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->gn()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    const/4 v0, 0x1

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/ff;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
