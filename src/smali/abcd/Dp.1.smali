.class final Labcd/Dp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Labcd/Gp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Labcd/Gp;

    check-cast p2, Labcd/Gp;

    invoke-virtual {p0, p1, p2}, Labcd/Dp;->j6(Labcd/Gp;Labcd/Gp;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Gp;Labcd/Gp;)I
    .registers 5

    invoke-virtual {p1}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v0

    invoke-virtual {p2}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method
