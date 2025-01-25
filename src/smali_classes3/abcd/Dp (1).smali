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
        "Ljava/util/Comparator<",
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
    .registers 3

    check-cast p1, Labcd/Gp;

    check-cast p2, Labcd/Gp;

    invoke-virtual {p0, p1, p2}, Labcd/Dp;->j6(Labcd/Gp;Labcd/Gp;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/Gp;Labcd/Gp;)I
    .registers 3

    invoke-virtual {p1}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object p1

    invoke-virtual {p2}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method
