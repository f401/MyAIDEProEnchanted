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
    .registers 5

    const-wide v0, -0xfe2d89ab5b35368L  # -1.131548515611858E232

    const-wide v2, -0x468824eb47a06a27L  # -7.351131282435267E-32

    const-class v4, Lcom/aide/ui/hb;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/hb;->gn:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private j6(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x266699f19809063dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/hb;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x75cfeb5e89bc4c0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->DW()Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aide/ui/hb;->u7:Z

    new-instance v5, Lcom/aide/ui/eb;

    invoke-direct {v5, p0, p1}, Lcom/aide/ui/eb;-><init>(Lcom/aide/ui/hb;Landroid/app/Activity;)V

    new-instance v6, Lcom/aide/ui/fb;

    invoke-direct {v6, p0, p1, p2}, Lcom/aide/ui/fb;-><init>(Lcom/aide/ui/hb;Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    new-instance v8, Lcom/aide/ui/gb;

    invoke-direct {v8, p0, p1}, Lcom/aide/ui/gb;-><init>(Lcom/aide/ui/hb;Landroid/app/Activity;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v9}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;Ljava/util/List;ZZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/hb;->VH:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x75cfeb5e89bc4c0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
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
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xda34634631f34b0L
    .end annotation

    const-wide v0, -0x160a41d66c8d9d15L  # -2.6628886831738637E202

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/hb;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a004b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08018a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v3}, Lcom/aide/ui/hb;->j6(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d063c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/hb;->gn:Landroid/app/AlertDialog;

    new-instance v3, Lcom/aide/ui/db;

    invoke-direct {v3, p0, p1}, Lcom/aide/ui/db;-><init>(Lcom/aide/ui/hb;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/aide/ui/hb;->gn:Landroid/app/AlertDialog;
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4a

    return-object p1

    :catchall_4a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/hb;->VH:Z

    if-eqz v3, :cond_52

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v2
.end method
