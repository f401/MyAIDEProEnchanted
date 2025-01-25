.class public Labcd/ED;
.super Labcd/KD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LKD<",
        "Labcd/FD;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/KD;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Labcd/FD;",
            ">;"
        }
    .end annotation

    const-class v0, Labcd/FD;

    return-object v0
.end method

.method public j6(Labcd/FD;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/FD;->j6(Labcd/ED;)V

    return-void
.end method

.method public bridge synthetic j6(Labcd/LD;)V
    .registers 2

    check-cast p1, Labcd/FD;

    invoke-virtual {p0, p1}, Labcd/ED;->j6(Labcd/FD;)V

    return-void
.end method
