.class Lcom/aide/ui/activities/O;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/ShopLearningPopupActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x16d3b28e19a2a2b8L  # -4.2312847618367747E198

    const-wide v2, -0x5fbe700ce8ccaef7L  # -2.619712798745659E-153

    const-class v4, Lcom/aide/ui/activities/O;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/ShopLearningPopupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x29ce8ad05d62282dL
    .end annotation

    const-wide v0, -0x71f2451017525afL  # -1.823961623152063E274

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/O;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    const v5, 0x7f0a0043

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    iget-object v3, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v3, v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/activities/K;

    invoke-direct {v4, p0}, Lcom/aide/ui/activities/K;-><init>(Lcom/aide/ui/activities/O;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-static {v3}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v3, v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v5, 0x7f080168

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/aide/ui/activities/L;

    invoke-direct {v5, p0}, Lcom/aide/ui/activities/L;-><init>(Lcom/aide/ui/activities/O;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_50
    iget-object v3, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v3, v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v5, 0x7f080169

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/aide/ui/activities/M;

    invoke-direct {v5, p0}, Lcom/aide/ui/activities/M;-><init>(Lcom/aide/ui/activities/O;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v3, v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v5, 0x7f080171

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/aide/ui/activities/N;

    invoke-direct {v5, p0}, Lcom/aide/ui/activities/N;-><init>(Lcom/aide/ui/activities/O;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v3, v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v5, 0x7f08016e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v5, v5, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v6, 0x7f080170

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {}, Lcom/aide/ui/Ha;->gn()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_ad

    iget-object v6, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "20%"

    aput-object v9, v8, v4

    const v9, 0x7f0d0618

    invoke-virtual {v6, v9, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b9

    :cond_ad
    iget-object v5, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    const v6, 0x7f0d0617

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b9
    iget-object v3, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v2, v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw:Landroid/app/AlertDialog;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object v2, v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/aide/ui/activities/O;->gn:Lcom/aide/ui/activities/ShopLearningPopupActivity;

    iget-object p1, v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Hw:Landroid/app/AlertDialog;
    :try_end_d3
    .catchall {:try_start_5 .. :try_end_d3} :catchall_d4

    return-object p1

    :catchall_d4
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/O;->VH:Z

    if-eqz v3, :cond_dc

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_dc
    throw v2
.end method
