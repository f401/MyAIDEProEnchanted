.class public final Labcd/tt$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Labcd/tt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/tt;

    check-cast p2, Labcd/tt;

    invoke-virtual {p0, p1, p2}, Labcd/tt$a;->j6(Labcd/tt;Labcd/tt;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/tt;Labcd/tt;)I
    .registers 3

    invoke-static {p1}, Labcd/tt;->j6(Labcd/tt;)I

    move-result p1

    invoke-static {p2}, Labcd/tt;->j6(Labcd/tt;)I

    move-result p2

    if-ge p1, p2, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    if-le p1, p2, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method
