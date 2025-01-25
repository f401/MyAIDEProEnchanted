.class public Labcd/Ue;
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

    const-class v0, Labcd/Ue;

    const-wide v1, 0xd2a15a15a8f0cfdL  # 2.9845299921595454E-245

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x119b138bada715f5L  # 7.314983572582605E-224

    :try_start_6
    sget-boolean v3, Labcd/Ue;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Ue;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public isEnabled()Z
    .registers 6

    const-wide v0, 0x1a9667bb44b6e367L

    :try_start_5
    sget-boolean v2, Labcd/Ue;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    iget-object v3, v2, Labcd/Tl;->FH:Ljava/lang/String;

    if-eqz v3, :cond_30

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    iget v4, v2, Labcd/Tl;->Hw:I

    iget v2, v2, Labcd/Tl;->v5:I

    invoke-virtual {v3, v4, v2}, Lcom/aide/ui/AIDEEditorPager;->DW(II)Lcom/aide/engine/SyntaxError;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_32

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Ue;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0x4226eebc3d4d296bL  # -9.11948161731099E-11

    :try_start_5
    sget-boolean v2, Labcd/Ue;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f08006f

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Ue;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, 0xb116db287c40c95L

    :try_start_5
    sget-boolean v2, Labcd/Ue;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-virtual {p0}, Labcd/Ue;->isEnabled()Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Ue;->DW:Z

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public run()Z
    .registers 8

    const-wide v0, 0x2055d0759f34061L

    :try_start_5
    sget-boolean v2, Labcd/Ue;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    iget v4, v2, Labcd/Tl;->Hw:I

    iget v2, v2, Labcd/Tl;->v5:I

    invoke-virtual {v3, v4, v2}, Lcom/aide/ui/AIDEEditorPager;->DW(II)Lcom/aide/engine/SyntaxError;

    move-result-object v2

    iget v3, v2, Lcom/aide/engine/SyntaxError;->Hw:I

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    new-instance v5, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;

    new-instance v6, Labcd/Te;

    invoke-direct {v6, p0, v2}, Labcd/Te;-><init>(Labcd/Ue;Lcom/aide/engine/SyntaxError;)V

    const-string v2, "Choose Color"

    invoke-direct {v5, v2, v3, v6}, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;-><init>(Ljava/lang/String;ILcom/a4455jkjh/colorpicker/ColorPickerDialog$a;)V

    invoke-static {v4, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3f

    const/4 v0, 0x1

    return v0

    :catchall_3f
    move-exception v2

    sget-boolean v3, Labcd/Ue;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_47
    throw v2
.end method
