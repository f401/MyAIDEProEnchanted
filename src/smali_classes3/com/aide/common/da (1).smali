.class final Lcom/aide/common/da;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;)V
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

.field final u7:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, -0x36eef94ecabf3533L  # -9.492391071376506E43

    const-class v4, Lcom/aide/common/da;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/common/da;->gn:Ljava/util/List;

    iput-object p2, p0, Lcom/aide/common/da;->u7:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/da;->tp:Lcom/aide/common/ab;

    iput-object p4, p0, Lcom/aide/common/da;->EQ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1ffc7746b6537f88L
    .end annotation

    const-wide v0, 0x654c7fa4dc0dd70L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/da;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/aide/common/da;->gn:Ljava/util/List;

    iget-object v4, p0, Lcom/aide/common/da;->u7:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/aide/common/da;->gn:Ljava/util/List;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    new-instance v7, Lcom/aide/common/ca;

    invoke-direct {v7, p0}, Lcom/aide/common/ca;-><init>(Lcom/aide/common/da;)V

    invoke-virtual {v5, v6, v3, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/aide/ui/Ra;->dialog_ok:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/ba;

    invoke-direct {v6, p0}, Lcom/aide/common/ba;-><init>(Lcom/aide/common/da;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aide/common/da;->EQ:Ljava/lang/String;

    if-eqz v3, :cond_4b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_4b
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_53

    return-object v2

    :catchall_53
    move-exception v2

    sget-boolean v3, Lcom/aide/common/da;->VH:Z

    if-eqz v3, :cond_5b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v2
.end method
