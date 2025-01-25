.class final Lcom/aide/uidesigner/na;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;ZZLcom/aide/common/ab;)V
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
.field final EQ:Lcom/aide/common/ab;

.field final gn:Ljava/util/List;

.field final tp:Z

.field final u7:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x47466ea2f3f500L

    const-wide v2, 0x438e7d0f1277117L

    const-class v4, Lcom/aide/uidesigner/na;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/String;ZLcom/aide/common/ab;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/uidesigner/na;->gn:Ljava/util/List;

    iput-object p2, p0, Lcom/aide/uidesigner/na;->u7:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/aide/uidesigner/na;->tp:Z

    iput-object p4, p0, Lcom/aide/uidesigner/na;->EQ:Lcom/aide/common/ab;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x288a47819a2d107L
    .end annotation

    const-wide v0, 0x273986f4a933fadL  # 7.49064964747231E-297

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/na;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/s1243808733/widget/CustomExpandableListView;

    invoke-direct {v2, p1}, Lcom/s1243808733/widget/CustomExpandableListView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/aide/uidesigner/Ka$b;

    iget-object v4, p0, Lcom/aide/uidesigner/na;->gn:Ljava/util/List;

    invoke-direct {v3, p1, v4}, Lcom/aide/uidesigner/Ka$b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/aide/uidesigner/na;->u7:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    new-instance v5, Lcom/aide/uidesigner/ma;

    invoke-direct {v5, p0, v3}, Lcom/aide/uidesigner/ma;-><init>(Lcom/aide/uidesigner/na;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    return-object v3

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/na;->VH:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method
