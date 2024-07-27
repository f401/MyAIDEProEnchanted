.class public Labcd/hQ;
.super Labcd/cQ$a;


# instance fields
.field private j6:Labcd/gQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgQ",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/k",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/cQ$a;-><init>()V

    new-instance v0, Labcd/gQ;

    invoke-direct {v0, p1}, Labcd/gQ;-><init>(Ltv/ouya/console/api/k;)V

    iput-object v0, p0, Labcd/hQ;->j6:Labcd/gQ;

    return-void
.end method


# virtual methods
.method public Mr(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Labcd/hQ;->j6:Labcd/gQ;

    invoke-virtual {v0, p1}, Labcd/gQ;->j6(Ljava/lang/Object;)V

    return-void
.end method

.method public j6(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Labcd/hQ;->j6:Labcd/gQ;

    invoke-virtual {v0, p1, p2, p3}, Labcd/gQ;->j6(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCancel()V
    .registers 2

    iget-object v0, p0, Labcd/hQ;->j6:Labcd/gQ;

    invoke-virtual {v0}, Labcd/gQ;->j6()V

    return-void
.end method
