.class public abstract Labcd/kI;
.super Ljava/lang/Object;


# static fields
.field private static volatile j6:Labcd/kI;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6()Labcd/kI;
    .registers 1

    sget-object v0, Labcd/kI;->j6:Labcd/kI;

    return-object v0
.end method


# virtual methods
.method public abstract DW()Z
.end method

.method public j6(Labcd/HJ;)V
    .registers 2

    return-void
.end method

.method public j6(Labcd/HJ;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/HJ;",
            "Ljava/util/List",
            "<",
            "Labcd/jI;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Labcd/jI;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/jI;

    invoke-virtual {p0, p1, v0}, Labcd/kI;->j6(Labcd/HJ;[Labcd/jI;)Z

    move-result v0

    return v0
.end method

.method public varargs abstract j6(Labcd/HJ;[Labcd/jI;)Z
.end method

.method public varargs abstract j6([Labcd/jI;)Z
.end method
