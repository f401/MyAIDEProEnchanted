.class public Labcd/CD;
.super Labcd/KD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LKD",
        "<",
        "Labcd/DD;",
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
            "Ljava/lang/Class",
            "<",
            "Labcd/DD;",
            ">;"
        }
    .end annotation

    const-class v0, Labcd/DD;

    return-object v0
.end method

.method public j6(Labcd/DD;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/DD;->j6(Labcd/CD;)V

    return-void
.end method

.method public bridge synthetic j6(Labcd/LD;)V
    .registers 2

    check-cast p1, Labcd/DD;

    invoke-virtual {p0, p1}, Labcd/CD;->j6(Labcd/DD;)V

    return-void
.end method
