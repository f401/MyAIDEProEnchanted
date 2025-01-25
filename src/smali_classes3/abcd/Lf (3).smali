.class public Labcd/Lf;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Yl;


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

    const-class v0, Labcd/Lf;

    const-wide v1, -0x232743af43c79e68L  # -1.8410288107325348E139

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1db455d5fb202161L

    :try_start_6
    sget-boolean v3, Labcd/Lf;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Lf;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public isEnabled()Z
    .registers 6

    const-wide v0, -0x119ef2613f6eb010L  # -4.931428869525798E223

    :try_start_5
    sget-boolean v2, Labcd/Lf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->j3()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->tp()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    iget v3, v2, Labcd/Tl;->Hw:I

    iget v4, v2, Labcd/Tl;->Zo:I

    if-ne v3, v4, :cond_3c

    iget v3, v2, Labcd/Tl;->VH:I

    iget v0, v2, Labcd/Tl;->v5:I
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3e

    sub-int/2addr v3, v0

    const/4 v0, 0x2

    if-le v3, v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    return v0

    :catchall_3e
    move-exception v2

    sget-boolean v3, Labcd/Lf;->DW:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_46
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0x1be972915a2b4c10L  # -1.394477840161709E174

    :try_start_5
    sget-boolean v2, Labcd/Lf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f08007c

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Lf;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public run()Z
    .registers 5

    const-wide v0, 0x92508bc40c4c960L

    :try_start_5
    sget-boolean v2, Labcd/Lf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getSelectionContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/ul;->j6(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_25

    const/4 v0, 0x1

    return v0

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Lf;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method
