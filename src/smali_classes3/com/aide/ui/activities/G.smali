.class Lcom/aide/ui/activities/G;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/ShopExpertPopupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x25f9816461dca1e8L

    const-wide v2, -0x356caca87cdd9483L  # -1.8076370516172634E51

    const-class v4, Lcom/aide/ui/activities/G;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/ShopExpertPopupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x11c303245ecc7c9L
    .end annotation

    const-wide v0, 0x16549eb2fbeb999L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/G;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    const v5, 0x7f0a0042

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    iget-object v3, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v3, v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/activities/D;

    invoke-direct {v4, p0}, Lcom/aide/ui/activities/D;-><init>(Lcom/aide/ui/activities/G;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-static {v3}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6(Lcom/aide/ui/activities/ShopExpertPopupActivity;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v3, v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v5, 0x7f080162

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/aide/ui/activities/E;

    invoke-direct {v5, p0}, Lcom/aide/ui/activities/E;-><init>(Lcom/aide/ui/activities/G;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_50
    iget-object v3, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v3, v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v5, 0x7f08015f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/aide/ui/activities/F;

    invoke-direct {v5, p0}, Lcom/aide/ui/activities/F;-><init>(Lcom/aide/ui/activities/G;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v3, v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v5, 0x7f080163

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v5, v5, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v6, 0x7f080160

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {}, Lcom/aide/ui/Ha;->Zo()Z

    move-result v6
    :try_end_81
    .catchall {:try_start_5 .. :try_end_81} :catchall_d8

    const-string v7, "33%"

    const/4 v8, 0x1

    if-eqz v6, :cond_9a

    :try_start_86
    iget-object v6, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v7, v9, v4

    const v7, 0x7f0d0609

    invoke-virtual {v6, v7, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_96
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_bd

    :cond_9a
    invoke-static {}, Lcom/aide/ui/Ha;->v5()Z

    move-result v6

    if-eqz v6, :cond_b1

    iget-object v6, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v7, v9, v4

    const v7, 0x7f0d0608

    invoke-virtual {v6, v7, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_96

    :cond_b1
    iget-object v5, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    const v6, 0x7f0d0607

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_bd
    iget-object v3, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->Hw:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v2, v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->Hw:Landroid/app/AlertDialog;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object v2, v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->Hw:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/aide/ui/activities/G;->gn:Lcom/aide/ui/activities/ShopExpertPopupActivity;

    iget-object p1, v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->Hw:Landroid/app/AlertDialog;
    :try_end_d7
    .catchall {:try_start_86 .. :try_end_d7} :catchall_d8

    return-object p1

    :catchall_d8
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/G;->VH:Z

    if-eqz v3, :cond_e0

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e0
    goto :goto_e2

    :goto_e1
    throw v2

    :goto_e2
    goto :goto_e1
.end method
