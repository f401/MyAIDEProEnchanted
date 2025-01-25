.class Lcom/aide/common/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/da;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Lcom/aide/common/da;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, 0x3eba7caa3cd26160L  # 1.5787465941549724E-6

    const-class v4, Lcom/aide/common/ba;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/da;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/ba;->FH:Lcom/aide/common/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x119a291576f166f1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ba;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1545ce428a9496e1L  # -1.3140255251554136E206

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    :goto_22
    iget-object v2, p0, Lcom/aide/common/ba;->FH:Lcom/aide/common/da;

    iget-object v2, v2, Lcom/aide/common/da;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/aide/common/ba;->FH:Lcom/aide/common/da;

    iget-object v2, v2, Lcom/aide/common/da;->tp:Lcom/aide/common/ab;

    iget-object v3, p0, Lcom/aide/common/ba;->FH:Lcom/aide/common/da;

    iget-object v3, v3, Lcom/aide/common/da;->gn:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_45

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_44
    return-void

    :catchall_45
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ba;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, -0x1545ce428a9496e1L  # -1.3140255251554136E206

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method
