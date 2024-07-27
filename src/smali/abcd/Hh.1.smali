.class public abstract Labcd/Hh;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private gn:Landroid/app/AlertDialog;
    .annotation runtime Labcd/ru;
        field = 0x7858ef48a214ad7L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0xe64241f87cbebddL    # 2.416444213707961E-239

    const-class v0, Labcd/Hh;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x38833bda9d7fb398L    # 1.8087382878134487E-36

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Hh;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x38833bda9d7fb398L    # 1.8087382878134487E-36

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Hh;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Landroid/app/AlertDialog;)Landroid/widget/ProgressBar;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1f4aea1570e2939cL
    .end annotation

    const-wide v2, -0x33763a7b9e8eb8d8L    # -5.1766607640080966E60

    :try_start_0
    sget-boolean v0, Labcd/Hh;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x33763a7b9e8eb8d8L    # -5.1766607640080966E60

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f080136

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Hh;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Landroid/app/AlertDialog;)Landroid/widget/TextView;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x92cfa96b6df9b50L
    .end annotation

    const-wide v2, -0x787698d211a378L

    :try_start_0
    sget-boolean v0, Labcd/Hh;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x787698d211a378L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f080135

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Hh;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected abstract EQ()Ljava/lang/String;
.end method

.method protected abstract J0()V
.end method

.method protected J8()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x559d3f7a72cd944cL
    .end annotation

    const-wide v4, 0x42a178cd856327e0L    # 9.605270909331938E12

    :try_start_0
    sget-boolean v0, Labcd/Hh;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x42a178cd856327e0L    # 9.605270909331938E12

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Hh;->Ws()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Labcd/Hh;->gn()I

    move-result v1

    invoke-virtual {p0}, Labcd/Hh;->u7()I

    move-result v2

    invoke-virtual {p0}, Labcd/Hh;->tp()Ljava/lang/String;

    move-result-object v0

    if-lez v2, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    invoke-direct {p0, v3}, Labcd/Hh;->DW(Landroid/app/AlertDialog;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Labcd/Hh;->DW(Landroid/app/AlertDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v1, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Labcd/Hh;->j6(Landroid/app/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Labcd/Hh;->EQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Hh;->VH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public VH()V
    .registers 5

    const-wide v2, 0x1289bd9460e0d99cL

    :try_start_0
    sget-boolean v0, Labcd/Hh;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1289bd9460e0d99cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Hh;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected abstract Ws()Z
.end method

.method protected abstract Zo()V
.end method

.method protected abstract gn()I
.end method

.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2b9d0d03298b8db7L
    .end annotation

    const-wide v4, -0x16e34ab100e37243L    # -2.1459701745735998E198

    :try_start_0
    sget-boolean v0, Labcd/Hh;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16e34ab100e37243L    # -2.1459701745735998E198

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Labcd/Hh;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Labcd/Dh;

    invoke-direct {v2, p0}, Labcd/Dh;-><init>(Labcd/Hh;)V

    const v3, 0x7f0d06a0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Labcd/Hh;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Labcd/Eh;

    invoke-direct {v0, p0}, Labcd/Eh;-><init>(Labcd/Hh;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    iget-object v0, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    new-instance v1, Labcd/Fh;

    invoke-direct {v1, p0}, Labcd/Fh;-><init>(Labcd/Hh;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Labcd/Hh;->we()V

    iget-object v0, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    new-instance v1, Labcd/Gh;

    invoke-direct {v1, p0}, Labcd/Gh;-><init>(Labcd/Hh;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Labcd/Hh;->gn:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Hh;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected abstract tp()Ljava/lang/String;
.end method

.method protected abstract u7()I
.end method

.method protected abstract v5()Z
.end method

.method protected abstract we()V
.end method
