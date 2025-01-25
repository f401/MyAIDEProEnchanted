.class public Lcom/aide/common/ua;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/common/ua$b;
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
.field private gn:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x3e17832b72dc1df5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x29d9638cc788c068L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/ua;

    const-wide v1, -0x4f7e369653a49c70L  # -4.91550504032781E-75

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/aide/common/ua$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ua;->Zo:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x5f39607f15bbccabL  # 5.191789644302773E150

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Lcom/aide/common/ua;->u7:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/common/ua;->gn:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/common/ua$a;

    invoke-interface {v1}, Lcom/aide/common/ua$a;->DW()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/aide/common/ua;->gn:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_36

    goto :goto_1d

    :cond_35
    return-void

    :catchall_36
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ua;->VH:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x5f39607f15bbccabL  # 5.191789644302773E150

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method

.method static synthetic j6(Lcom/aide/common/ua;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/ua;->gn:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xa2940bdf2ad9c00L
    .end annotation

    const-wide v0, 0xa500d270f680985L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ua;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/s1243808733/widget/CustomListView;

    invoke-direct {v2, p1}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/aide/common/ua$b;

    iget-object v4, p0, Lcom/aide/common/ua;->gn:Ljava/util/List;

    invoke-direct {v3, p1, v4}, Lcom/aide/common/ua$b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/aide/common/ua;->u7:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v4, Lcom/aide/common/ta;

    invoke-direct {v4, p0, v3}, Lcom/aide/common/ta;-><init>(Lcom/aide/common/ua;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    return-object v3

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ua;->VH:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method
