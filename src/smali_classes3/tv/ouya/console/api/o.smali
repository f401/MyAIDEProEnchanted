.class public abstract Ltv/ouya/console/api/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private DW:Ljava/lang/String;

.field protected j6:Ltv/ouya/console/api/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/ouya/console/api/k<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/k;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/k<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/o;->j6:Ltv/ouya/console/api/k;

    iput-object p2, p0, Ltv/ouya/console/api/o;->DW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract j6()V
.end method

.method public run()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Ltv/ouya/console/api/o;->j6()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_2b

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/ouya/console/api/o;->DW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OUYASDK"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Ltv/ouya/console/api/o;->j6:Ltv/ouya/console/api/k;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0xbbb

    const-string v3, ""

    invoke-interface {v0, v2, v3, v1}, Ltv/ouya/console/api/k;->j6(ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_2b
    return-void
.end method
