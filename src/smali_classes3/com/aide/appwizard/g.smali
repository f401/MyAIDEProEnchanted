.class Lcom/aide/appwizard/g;
.super Lcom/aide/uidesigner/Pa;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/h;->j6(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static aM:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static j3:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Mr:I

.field final U2:Lcom/aide/appwizard/h;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2cb3d8bbc8f7fe1cL  # 2.378635005665573E-93

    const-wide v2, 0x5a62838ead635f7L

    const-class v4, Lcom/aide/appwizard/g;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/h;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;I)V
    .registers 7

    iput-object p1, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    iput p6, p0, Lcom/aide/appwizard/g;->Mr:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/aide/uidesigner/Pa;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V

    return-void
.end method


# virtual methods
.method protected J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4e3d4cb8216c94bL
    .end annotation

    const-wide v0, 0x59a6752b30fd00L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/g;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/g;->j3:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method protected j6(Lcom/aide/uidesigner/s;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x103fe73414179693L
    .end annotation

    const-wide v0, -0x5218c48c67ca990L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/g;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->DW()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/aide/uidesigner/L;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/g;->j3:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method protected j6(Z)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x281b365fc371ca87L
    .end annotation

    const-wide v0, -0x2ab9dc84d548a0e0L  # -6.198101094307351E102

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/g;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-static {v2}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/h;)Lcom/aide/uidesigner/Pa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-static {v2}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/h;)Lcom/aide/uidesigner/Pa;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-static {v3}, Lcom/aide/appwizard/h;->DW(Lcom/aide/appwizard/h;)Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v3

    iget v4, p0, Lcom/aide/appwizard/g;->Mr:I

    invoke-virtual {v3, v4}, Lcom/aide/appwizard/AppWizardDesignActivity;->FH(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->j6(Ljava/lang/String;)V

    :cond_2d
    iget-object v2, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-static {v2}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/h;)Lcom/aide/uidesigner/Pa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/h;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/g;->j3:Z

    if-eqz v3, :cond_48

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v2
.end method

.method protected we()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x6c51fb418cabfe78L
    .end annotation

    const-wide v0, 0x53364eb589b3d79bL  # 7.270574970705398E92

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/g;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->DW()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_26

    if-eqz v3, :cond_1b

    const-string v3, "添加..."

    goto :goto_1d

    .line 99
    :cond_1b
    const-string v3, "Add..."

    .line 0
    :goto_1d
    :try_start_1d
    new-instance v4, Lcom/aide/appwizard/f;

    invoke-direct {v4, p0}, Lcom/aide/appwizard/f;-><init>(Lcom/aide/appwizard/g;)V

    invoke-static {v2, v3, v4}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_26

    return-void

    .line 99
    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/g;->j3:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method
