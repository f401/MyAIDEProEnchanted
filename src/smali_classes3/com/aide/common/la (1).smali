.class final Lcom/aide/common/la;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
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

.field final gn:Ljava/util/List;

.field final tp:Ljava/lang/String;

.field final u7:Lcom/aide/common/ab;

.field final we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, -0x36effd56629fd5f8L  # -8.926096616411787E43

    const-class v4, Lcom/aide/common/la;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/aide/common/ab;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/aide/common/la;->gn:Ljava/util/List;

    iput-object p2, p0, Lcom/aide/common/la;->u7:Lcom/aide/common/ab;

    iput-object p3, p0, Lcom/aide/common/la;->tp:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/common/la;->EQ:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/aide/common/la;->we:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1fdd306f04cea185L
    .end annotation

    const-wide v0, 0x84429e5e5937cd7L  # 7.63349344281613E-269

    :try_start_5
    sget-boolean v2, Lcom/aide/common/la;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/common/la;->gn:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/aide/common/ka;

    invoke-direct {v6, p0}, Lcom/aide/common/ka;-><init>(Lcom/aide/common/la;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/common/la;->tp:Ljava/lang/String;

    new-instance v6, Lcom/aide/common/ja;

    invoke-direct {v6, p0}, Lcom/aide/common/ja;-><init>(Lcom/aide/common/la;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/aide/common/la;->we:Ljava/lang/String;

    if-eqz v4, :cond_3b

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_3b
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    return-object v2

    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/aide/common/la;->VH:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v2
.end method
