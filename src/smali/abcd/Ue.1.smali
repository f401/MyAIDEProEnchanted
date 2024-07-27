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
    .registers 4

    const-wide v2, 0xd2a15a15a8f0cfdL    # 2.9845299921595454E-245

    const-class v0, Labcd/Ue;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x119b138bada715f5L    # 7.314983572582605E-224

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ue;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x119b138bada715f5L    # 7.314983572582605E-224

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ue;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public isEnabled()Z
    .registers 7

    const-wide v4, 0x1a9667bb44b6e367L

    :try_start_0
    sget-boolean v0, Labcd/Ue;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a9667bb44b6e367L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v0

    iget-object v1, v0, Labcd/Tl;->FH:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    iget v2, v0, Labcd/Tl;->Hw:I

    iget v0, v0, Labcd/Tl;->v5:I

    invoke-virtual {v1, v2, v0}, Lcom/aide/ui/AIDEEditorPager;->DW(II)Lcom/aide/engine/SyntaxError;
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

    sget-boolean v1, Labcd/Ue;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, -0x4226eebc3d4d296bL    # -9.11948161731099E-11

    :try_start_0
    sget-boolean v0, Labcd/Ue;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4226eebc3d4d296bL    # -9.11948161731099E-11

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f08006f

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ue;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v2, 0xb116db287c40c95L

    :try_start_0
    sget-boolean v0, Labcd/Ue;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb116db287c40c95L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-virtual {p0}, Labcd/Ue;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ue;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()Z
    .registers 9

    const-wide v6, 0x2055d0759f34061L

    :try_start_0
    sget-boolean v0, Labcd/Ue;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2055d0759f34061L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    iget v2, v0, Labcd/Tl;->Hw:I

    iget v0, v0, Labcd/Tl;->v5:I

    invoke-virtual {v1, v2, v0}, Lcom/aide/ui/AIDEEditorPager;->DW(II)Lcom/aide/engine/SyntaxError;

    move-result-object v0

    iget v1, v0, Lcom/aide/engine/SyntaxError;->Hw:I

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;

    new-instance v4, Labcd/Te;

    invoke-direct {v4, p0, v0}, Labcd/Te;-><init>(Labcd/Ue;Lcom/aide/engine/SyntaxError;)V

    const-string v0, "Choose Color"

    invoke-direct {v3, v0, v1, v4}, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;-><init>(Ljava/lang/String;ILcom/a4455jkjh/colorpicker/ColorPickerDialog$a;)V

    invoke-static {v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ue;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
