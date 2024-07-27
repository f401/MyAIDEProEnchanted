.class Lcom/aide/appwizard/runtime/a;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static Qq:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static sy:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final aj:Lcom/aide/appwizard/runtime/i$c;

.field final lp:Lcom/aide/appwizard/runtime/AppWizardActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/appwizard/runtime/a;

    const-wide v2, 0x43daa093d23e6f19L    # 7.6747838898388593E18

    const-wide v4, 0x11b2fec7f4cc26d0L    # 2.052711800125936E-223

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/runtime/AppWizardActivity;Lcom/aide/appwizard/runtime/i$c;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/appwizard/runtime/a;->lp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    iput-object p2, p0, Lcom/aide/appwizard/runtime/a;->aj:Lcom/aide/appwizard/runtime/i$c;

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x61ab7cccc41310dL
    .end annotation

    const-wide v6, 0x9195ff2523e4129L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/a;->Qq:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9195ff2523e4129L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/a;->aj:Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$c;->Hw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/appwizard/runtime/a;->lp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    const-string v1, "layout"

    iget-object v2, p0, Lcom/aide/appwizard/runtime/a;->aj:Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$c;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lcom/aide/appwizard/runtime/AppWizardActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/a;->lp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/a;->sy:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
