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
    .registers 6

    const-class v0, Lcom/aide/uidesigner/na;

    const-wide v2, -0x47466ea2f3f500L

    const-wide v4, 0x438e7d0f1277117L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v4, 0x273986f4a933fadL    # 7.49064964747231E-297

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/na;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x273986f4a933fadL    # 7.49064964747231E-297

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/s1243808733/widget/CustomExpandableListView;

    invoke-direct {v0, p1}, Lcom/s1243808733/widget/CustomExpandableListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/aide/uidesigner/Ka$b;

    iget-object v2, p0, Lcom/aide/uidesigner/na;->gn:Ljava/util/List;

    invoke-direct {v1, p1, v2}, Lcom/aide/uidesigner/Ka$b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/uidesigner/na;->u7:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/aide/uidesigner/ma;

    invoke-direct {v2, p0, v1}, Lcom/aide/uidesigner/ma;-><init>(Lcom/aide/uidesigner/na;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/na;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
