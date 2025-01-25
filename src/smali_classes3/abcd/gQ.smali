.class public Labcd/gQ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private j6:Ltv/ouya/console/api/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/ouya/console/api/k<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/k<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/gQ;->j6:Ltv/ouya/console/api/k;

    return-void
.end method

.method static synthetic j6(Labcd/gQ;)Ltv/ouya/console/api/k;
    .registers 1

    iget-object p0, p0, Labcd/gQ;->j6:Ltv/ouya/console/api/k;

    return-object p0
.end method


# virtual methods
.method public j6()V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Labcd/fQ;

    invoke-direct {v1, p0}, Labcd/fQ;-><init>(Labcd/gQ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j6(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Labcd/eQ;

    invoke-direct {v1, p0, p1, p2, p3}, Labcd/eQ;-><init>(Labcd/gQ;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j6(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Labcd/dQ;

    invoke-direct {v1, p0, p1}, Labcd/dQ;-><init>(Labcd/gQ;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
