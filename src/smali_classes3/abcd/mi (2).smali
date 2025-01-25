.class public Labcd/mi;
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
        field = -0x29bcf0040cb5baf9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/mi;

    const-wide v1, 0x17cca7e36ef3485fL  # 4.906881348902889E-194

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x59cfdbb72930d0L

    :try_start_6
    sget-boolean v3, Labcd/mi;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/mi;->VH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x2f4dcef156895e3L
    .end annotation

    const-string v0, ""

    const-wide v1, 0xbf38930e069d345L

    :try_start_7
    sget-boolean v3, Labcd/mi;->Zo:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->QX()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41200000  # 10.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v6

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v6

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v9, v6

    float-to-int v6, v9

    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/s1243808733/aide/MainListener;->addProjectInfoDialogMoreButton(Landroid/app/AlertDialog$Builder;Landroid/app/Activity;)V

    new-instance v6, Labcd/ki;

    invoke-direct {v6, p0}, Labcd/ki;-><init>(Labcd/mi;)V

    const v7, 0x7f0d05da

    invoke-virtual {v3, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const v5, 0x7f0d05db

    invoke-virtual {v3, v5, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Labcd/mi;->gn:Landroid/app/AlertDialog;
    :try_end_b6
    .catchall {:try_start_7 .. :try_end_b6} :catchall_c1

    :try_start_b6
    invoke-static {v0}, Lcom/s1243808733/aide/MainListener;->setProjectInfoDialog(Landroid/app/AlertDialog;)V

    iget-object p1, p0, Labcd/mi;->gn:Landroid/app/AlertDialog;
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_bc

    return-object p1

    :catchall_bc
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_c2

    :catchall_c1
    move-exception v0

    :goto_c2
    sget-boolean v3, Labcd/mi;->VH:Z

    if-eqz v3, :cond_c9

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c9
    throw v0
.end method
