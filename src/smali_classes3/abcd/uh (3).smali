.class public Labcd/uh;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/uh$a;
    }
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
        field = -0x12178069e7de7d0cL
    .end annotation
.end field

.field private tp:Z
    .annotation runtime Labcd/ru;
        field = -0x33c0a65de2453f58L
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = 0xc91cb96f065f330L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/uh;

    const-wide v1, -0x675b35579a4b358L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/uh;->Zo:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x4d1455578c1f1b4L  # -2.284739363850131E285

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/uh;->tp:Z

    iput-object p1, p0, Labcd/uh;->gn:Ljava/lang/String;

    iput-boolean p2, p0, Labcd/uh;->u7:Z
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/uh;->VH:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x4d1455578c1f1b4L  # -2.284739363850131E285

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method static synthetic DW(Labcd/uh;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Labcd/uh;->gn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j6(Labcd/uh;)V
    .registers 1

    invoke-direct {p0}, Labcd/uh;->v5()V

    return-void
.end method

.method static synthetic j6(Labcd/uh;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/uh;->tp:Z

    return p1
.end method

.method private v5()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2945c6c6fa974408L
    .end annotation

    const-wide v0, -0x9fcc95d97f551b0L  # -2.954138442649464E260

    :try_start_5
    sget-boolean v2, Labcd/uh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Labcd/uh;->u7:Z

    if-eqz v2, :cond_28

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-boolean v3, p0, Labcd/uh;->tp:Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_29

    if-eqz v3, :cond_1c

    const-string v3, "cancelled"

    goto :goto_1e

    :cond_1c
    const-string v3, "createContinued"

    :goto_1e
    :try_start_1e
    const-string v4, "exit"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "New user experience"

    invoke-static {v3, v2}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_29

    :cond_28
    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/uh;->VH:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x28153ce12d5eeaa5L
    .end annotation

    const-wide v0, 0x1ec9f01b7c6aa33dL  # 2.306149491867985E-160

    :try_start_5
    sget-boolean v2, Labcd/uh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Sk;->j6()Ljava/util/List;

    move-result-object v9

    new-instance v3, Lcom/s1243808733/widget/CustomExpandableListView;

    invoke-direct {v3, p1}, Lcom/s1243808733/widget/CustomExpandableListView;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    new-instance v6, Labcd/uh$a;

    invoke-direct {v6, p1, v9}, Labcd/uh$a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v6}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    const v4, 0x7f0d05d1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Labcd/sh;

    invoke-direct {v4, p0}, Labcd/sh;-><init>(Labcd/uh;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v11, Labcd/th;

    move-object v4, v11

    move-object v5, p0

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Labcd/th;-><init>(Labcd/uh;Labcd/uh$a;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v3, v11}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    invoke-virtual {v3, v10}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_50

    return-object v2

    :catchall_50
    move-exception v2

    sget-boolean v3, Labcd/uh;->VH:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v2
.end method
