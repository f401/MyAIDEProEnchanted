.class final Lcom/aide/common/J;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
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

.field final gn:Ljava/lang/String;

.field final tp:Ljava/lang/Runnable;

.field final u7:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, -0x36ed47ecc8c62468L  # -1.043621532394803E44

    const-class v4, Lcom/aide/common/J;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/common/J;->gn:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/common/J;->u7:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/J;->tp:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/aide/common/J;->EQ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xc00af8185442ebbL
    .end annotation

    const-wide v0, 0x58fff5f409fc5c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/J;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/aide/common/J;->gn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/aide/ui/Ra;->dialog_ok:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/y;

    invoke-direct {v6, p0}, Lcom/aide/common/y;-><init>(Lcom/aide/common/J;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aide/common/J;->u7:Ljava/lang/String;

    if-eqz v3, :cond_3b

    new-instance v5, Lcom/aide/common/z;

    invoke-direct {v5, p0}, Lcom/aide/common/z;-><init>(Lcom/aide/common/J;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    :cond_3b
    iget-object v3, p0, Lcom/aide/common/J;->EQ:Ljava/lang/String;

    if-eqz v3, :cond_43

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    :cond_43
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_4b

    return-object v2

    :catchall_4b
    move-exception v2

    sget-boolean v3, Lcom/aide/common/J;->VH:Z

    if-eqz v3, :cond_53

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v2
.end method
