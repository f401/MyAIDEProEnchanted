.class Lcom/aide/ui/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/hb;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# instance fields
.field final FH:Landroid/app/Activity;

.field final Hw:Lcom/aide/ui/hb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xfe2d89ab5b35368L  # -1.131548515611858E232

    const-wide v2, 0x4e7ecdce047f6ee0L  # 1.3287554728303011E70

    const-class v4, Lcom/aide/ui/db;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/hb;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/db;->Hw:Lcom/aide/ui/hb;

    iput-object p2, p0, Lcom/aide/ui/db;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x9186a3fd1115450L
    .end annotation

    const-wide v0, 0xc32a70ce1a8ae98L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/db;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/db;->Hw:Lcom/aide/ui/hb;

    invoke-static {v2}, Lcom/aide/ui/hb;->j6(Lcom/aide/ui/hb;)Landroid/app/AlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/db;->FH:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android:id/title_template"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_29

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_29
    iget-object v2, p0, Lcom/aide/ui/db;->Hw:Lcom/aide/ui/hb;

    invoke-static {v2}, Lcom/aide/ui/hb;->j6(Lcom/aide/ui/hb;)Landroid/app/AlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/db;->FH:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android:id/alertTitle"

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_4b

    check-cast v2, Landroid/widget/TextView;

    const v3, -0x444445

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_4c

    :cond_4b
    return-void

    :catchall_4c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/db;->DW:Z

    if-eqz v3, :cond_54

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v2
.end method
