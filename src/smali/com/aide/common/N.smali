.class final Lcom/aide/common/N;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
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
.field final EQ:Ljava/lang/Runnable;

.field final J0:Ljava/lang/Runnable;

.field final J8:Ljava/lang/String;

.field final gn:Ljava/lang/String;

.field final tp:Ljava/lang/String;

.field final u7:Z

.field final we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/N;

    const-wide v2, 0x45bbebac5e17d6f9L    # 8.641006815532585E27

    const-wide v4, -0x36ed9e99fcda5b73L    # -1.0247450457337359E44

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/aide/common/N;->gn:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/aide/common/N;->u7:Z

    iput-object p3, p0, Lcom/aide/common/N;->tp:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/common/N;->EQ:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/aide/common/N;->we:Ljava/lang/String;

    iput-object p6, p0, Lcom/aide/common/N;->J0:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/aide/common/N;->J8:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x20fb175dc16abda3L
    .end annotation

    const-wide v4, 0x55bf8386806db4cL

    :try_start_0
    sget-boolean v0, Lcom/aide/common/N;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x55bf8386806db4cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aide/common/N;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/aide/common/N;->u7:Z

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/aide/common/N;->tp:Ljava/lang/String;

    new-instance v2, Lcom/aide/common/K;

    invoke-direct {v2, p0}, Lcom/aide/common/K;-><init>(Lcom/aide/common/N;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/aide/common/N;->we:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aide/common/N;->we:Ljava/lang/String;

    new-instance v2, Lcom/aide/common/L;

    invoke-direct {v2, p0}, Lcom/aide/common/L;-><init>(Lcom/aide/common/N;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    new-instance v1, Lcom/aide/common/M;

    invoke-direct {v1, p0}, Lcom/aide/common/M;-><init>(Lcom/aide/common/N;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/aide/common/N;->J8:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aide/common/N;->J8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aide/common/N;->u7:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/N;->VH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method
