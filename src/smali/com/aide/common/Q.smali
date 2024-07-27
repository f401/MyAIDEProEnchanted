.class Lcom/aide/common/Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/S;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Lcom/aide/common/S;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/Q;

    const-wide v2, 0x45bbebac5e17d6f9L    # 8.641006815532585E27

    const-wide v4, 0x3eb71e764d2f3755L    # 1.3779993437326185E-6

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/S;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/Q;->FH:Lcom/aide/common/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x13f79561d2527e61L
    .end annotation

    const-wide v2, -0xf1a818f0c4459f7L    # -6.834111635542457E235

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf1a818f0c4459f7L    # -6.834111635542457E235

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/Q;->FH:Lcom/aide/common/S;

    iget-object v0, v0, Lcom/aide/common/S;->J0:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/Q;->FH:Lcom/aide/common/S;

    iget-object v0, v0, Lcom/aide/common/S;->J0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Q;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
