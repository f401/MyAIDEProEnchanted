.class final Lcom/aide/common/ia;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
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
.field final gn:Ljava/util/List;

.field final tp:Ljava/lang/String;

.field final u7:Lcom/aide/common/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, -0x36efa6a9303da09fL  # -9.114861426685177E43

    const-class v4, Lcom/aide/common/ia;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/aide/common/ab;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/ia;->gn:Ljava/util/List;

    iput-object p2, p0, Lcom/aide/common/ia;->u7:Lcom/aide/common/ab;

    iput-object p3, p0, Lcom/aide/common/ia;->tp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x29ed641b6eab5a67L
    .end annotation

    const-wide v0, -0x235c8e0b60659b30L  # -1.809085434542526E138

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ia;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/common/ia;->gn:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/aide/common/ha;

    invoke-direct {v6, p0}, Lcom/aide/common/ha;-><init>(Lcom/aide/common/ia;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/aide/common/ia;->tp:Ljava/lang/String;

    if-eqz v4, :cond_30

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_30
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    return-object v2

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ia;->VH:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v2
.end method
