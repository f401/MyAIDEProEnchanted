.class Lcom/aide/common/ea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ga;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Lcom/aide/common/ga;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, 0x3ebbd66abc8779a9L  # 1.659248242906131E-6

    const-class v4, Lcom/aide/common/ea;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/ga;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/ea;->FH:Lcom/aide/common/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xd0aeab3acfb7580L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ea;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x17a60ffabe0d3d1dL  # 9.444651938495724E-195

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    if-eqz v1, :cond_41

    const/4 v2, 0x0

    :goto_27
    iget-object v3, p0, Lcom/aide/common/ea;->FH:Lcom/aide/common/ga;

    iget-object v3, v3, Lcom/aide/common/ga;->u7:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_41
    iget-object v1, p0, Lcom/aide/common/ea;->FH:Lcom/aide/common/ga;

    iget-object v1, v1, Lcom/aide/common/ga;->tp:Lcom/aide/common/ab;

    invoke-interface {v1, v0}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ea;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, 0x17a60ffabe0d3d1dL  # 9.444651938495724E-195

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v0

    :goto_60
    goto :goto_5f
.end method
