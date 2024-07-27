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
        "Ljava/util/Comparator",
        "<",
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
    .registers 4

    check-cast p1, Labcd/tt;

    check-cast p2, Labcd/tt;

    invoke-virtual {p0, p1, p2}, Labcd/tt$a;->j6(Labcd/tt;Labcd/tt;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/tt;Labcd/tt;)I
    .registers 5

    invoke-static {p1}, Labcd/tt;->j6(Labcd/tt;)I

    move-result v0

    invoke-static {p2}, Labcd/tt;->j6(Labcd/tt;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
