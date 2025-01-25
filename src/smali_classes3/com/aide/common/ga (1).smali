.class final Lcom/aide/common/ga;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aide/common/ab;)V
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
.field final EQ:Ljava/lang/String;

.field final gn:Ljava/util/List;

.field final tp:Lcom/aide/common/ab;

.field final u7:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, -0x36ef4ffbfd9d6b08L  # -9.30362624500675E43

    const-class v4, Lcom/aide/common/ga;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/aide/common/ab;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/common/ga;->gn:Ljava/util/List;

    iput-object p2, p0, Lcom/aide/common/ga;->u7:Ljava/util/List;

    iput-object p3, p0, Lcom/aide/common/ga;->tp:Lcom/aide/common/ab;

    iput-object p4, p0, Lcom/aide/common/ga;->EQ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3118cec526a3e5dbL
    .end annotation

    const-wide v0, -0x11171c283c5451cL

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ga;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/aide/common/ga;->gn:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v3, :cond_2e

    iget-object v7, p0, Lcom/aide/common/ga;->gn:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/aide/common/ga;->u7:Ljava/util/List;

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v7, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v7, Lcom/aide/common/fa;

    invoke-direct {v7, p0}, Lcom/aide/common/fa;-><init>(Lcom/aide/common/ga;)V

    invoke-virtual {v6, v5, v4, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/aide/ui/Ra;->dialog_ok:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/ea;

    invoke-direct {v6, p0}, Lcom/aide/common/ea;-><init>(Lcom/aide/common/ga;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/aide/common/ga;->EQ:Ljava/lang/String;

    if-eqz v4, :cond_5f

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_5f
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_67

    return-object v2

    :catchall_67
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ga;->VH:Z

    if-eqz v3, :cond_6f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    goto :goto_71

    :goto_70
    throw v2

    :goto_71
    goto :goto_70
.end method
