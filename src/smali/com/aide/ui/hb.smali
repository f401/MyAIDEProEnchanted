.class final Lcom/aide/ui/hb;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/ib;->J8(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field private gn:Landroid/app/AlertDialog;
    .annotation runtime Labcd/ru;
        field = 0x2bec04defa2d5470L
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = -0xdb628825eff32b8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/hb;

    const-wide v2, -0xfe2d89ab5b35368L    # -1.131548515611858E232

    const-wide v4, -0x468824eb47a06a27L    # -7.351131282435267E-32

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/hb;->u7:Z

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/hb;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/hb;->gn:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private j6(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x266699f19809063dL
    .end annotation

    const-wide v10, -0x75cfeb5e89bc4c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/hb;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x75cfeb5e89bc4c0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->DW()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/aide/ui/hb;->u7:Z

    new-instance v4, Lcom/aide/ui/eb;

    invoke-direct {v4, p0, p1}, Lcom/aide/ui/eb;-><init>(Lcom/aide/ui/hb;Landroid/app/Activity;)V

    new-instance v5, Lcom/aide/ui/fb;

    invoke-direct {v5, p0, p1, p2}, Lcom/aide/ui/fb;-><init>(Lcom/aide/ui/hb;Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    new-instance v7, Lcom/aide/ui/gb;

    invoke-direct {v7, p0, p1}, Lcom/aide/ui/gb;-><init>(Lcom/aide/ui/hb;Landroid/app/Activity;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;Ljava/util/List;ZZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/hb;->VH:Z

    if-eqz v0, :cond_1

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/hb;Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/hb;->j6(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/hb;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/hb;->u7:Z

    return p1
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xda34634631f34b0L
    .end annotation

    const-wide v4, -0x160a41d66c8d9d15L    # -2.6628886831738637E202

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/hb;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x160a41d66c8d9d15L    # -2.6628886831738637E202

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08018a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/hb;->j6(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d063c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/hb;->gn:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/aide/ui/hb;->gn:Landroid/app/AlertDialog;

    new-instance v1, Lcom/aide/ui/db;

    invoke-direct {v1, p0, p1}, Lcom/aide/ui/db;-><init>(Lcom/aide/ui/hb;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/aide/ui/hb;->gn:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/hb;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
