.class final Lcom/aide/common/aa;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZLcom/aide/common/ab;)V
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

.field final gn:Z

.field final tp:Lcom/aide/common/ab;

.field final u7:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, -0x36eea2a197a2ff20L  # -9.681155905794445E43

    const-class v4, Lcom/aide/common/aa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(ZLjava/util/List;Lcom/aide/common/ab;Ljava/lang/String;)V
    .registers 5

    iput-boolean p1, p0, Lcom/aide/common/aa;->gn:Z

    iput-object p2, p0, Lcom/aide/common/aa;->u7:Ljava/util/List;

    iput-object p3, p0, Lcom/aide/common/aa;->tp:Lcom/aide/common/ab;

    iput-object p4, p0, Lcom/aide/common/aa;->EQ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xe0769d67eb02218L
    .end annotation

    const-wide v0, -0x1867842429d1d915L  # -1.0908788027445744E191

    :try_start_5
    sget-boolean v2, Lcom/aide/common/aa;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v3, p0, Lcom/aide/common/aa;->gn:Z

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/common/aa;->u7:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    new-instance v5, Lcom/aide/common/Z;

    invoke-direct {v5, p0}, Lcom/aide/common/Z;-><init>(Lcom/aide/common/aa;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aide/common/aa;->EQ:Ljava/lang/String;

    if-eqz v3, :cond_31

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_31
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aide/common/aa;->gn:Z

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    return-object v2

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/common/aa;->VH:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method
