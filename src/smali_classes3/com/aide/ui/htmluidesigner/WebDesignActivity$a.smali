.class Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/htmluidesigner/WebDesignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x20faa5d08ab58c53L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2111a5a88c4e6fb9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    const-wide v1, 0x8860f7674eeeb9L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x213605c77fcc2bdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->Zo:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2842a3c46eb4929dL  # -4.5189612862893884E114

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->gn:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->u7:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->VH:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x2842a3c46eb4929dL  # -4.5189612862893884E114

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->gn:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1cbc59b10c567700L
    .end annotation

    const-wide v0, -0x10a6744f25c58b30L  # -2.4206610516245906E228

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->u7:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<br/><br/><a href=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->gn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->gn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</a><br/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/aide/ui/htmluidesigner/r;

    invoke-direct {v4, p0, p1}, Lcom/aide/ui/htmluidesigner/r;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41200000  # 10.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v5, 0x41800000  # 16.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, 0x7f0d06a7

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/aide/ui/htmluidesigner/s;

    invoke-direct {v3, p0}, Lcom/aide/ui/htmluidesigner/s;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;)V

    const v5, 0x7f0d05d7

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/aide/ui/htmluidesigner/t;

    invoke-direct {v3, p0}, Lcom/aide/ui/htmluidesigner/t;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_8f
    .catchall {:try_start_5 .. :try_end_8f} :catchall_90

    return-object v2

    :catchall_90
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->VH:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_98
    throw v2
.end method
