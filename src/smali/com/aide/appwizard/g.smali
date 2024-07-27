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
    .registers 6

    const-class v0, Lcom/aide/appwizard/g;

    const-wide v2, 0x2cb3d8bbc8f7fe1cL    # 2.378635005665573E-93

    const-wide v4, 0x5a62838ead635f7L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0x59a6752b30fd00L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/g;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x59a6752b30fd00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/g;->j3:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Lcom/aide/uidesigner/s;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x103fe73414179693L
    .end annotation

    const-wide v2, -0x5218c48c67ca990L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/g;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5218c48c67ca990L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->DW()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/aide/uidesigner/L;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/g;->j3:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Z)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x281b365fc371ca87L
    .end annotation

    const-wide v4, -0x2ab9dc84d548a0e0L    # -6.198101094307351E102

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/g;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ab9dc84d548a0e0L    # -6.198101094307351E102

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-static {v0}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/h;)Lcom/aide/uidesigner/Pa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-static {v0}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/h;)Lcom/aide/uidesigner/Pa;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-static {v1}, Lcom/aide/appwizard/h;->DW(Lcom/aide/appwizard/h;)Lcom/aide/appwizard/AppWizardDesignActivity;

    move-result-object v1

    iget v2, p0, Lcom/aide/appwizard/g;->Mr:I

    invoke-virtual {v1, v2}, Lcom/aide/appwizard/AppWizardDesignActivity;->FH(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Pa;->j6(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    iget-object v1, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-static {v1}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/h;)Lcom/aide/uidesigner/Pa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/g;->j3:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected we()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x6c51fb418cabfe78L
    .end annotation

    const-wide v4, 0x53364eb589b3d79bL    # 7.270574970705398E92

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/g;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x53364eb589b3d79bL    # 7.270574970705398E92

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->DW()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6dfb\u52a0..."

    :goto_0
    :try_start_1
    new-instance v2, Lcom/aide/appwizard/f;

    invoke-direct {v2, p0}, Lcom/aide/appwizard/f;-><init>(Lcom/aide/appwizard/g;)V

    invoke-static {v1, v0, v2}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "Add..."

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/g;->j3:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
