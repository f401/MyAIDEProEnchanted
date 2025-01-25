.class public Labcd/ID;
.super Labcd/KD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LKD<",
        "Labcd/JD;",
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
            "Labcd/JD;",
            ">;"
        }
    .end annotation

    const-class v0, Labcd/JD;

    return-object v0
.end method

.method public j6(Labcd/JD;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/JD;->j6(Labcd/ID;)V

    return-void
.end method

.method public bridge synthetic j6(Labcd/LD;)V
    .registers 2

    check-cast p1, Labcd/JD;

    invoke-virtual {p0, p1}, Labcd/ID;->j6(Labcd/JD;)V

    return-void
.end method
