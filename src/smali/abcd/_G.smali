.class Labcd/_G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/aH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Labcd/aH;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Labcd/aH;

    check-cast p2, Labcd/aH;

    invoke-virtual {p0, p1, p2}, Labcd/_G;->j6(Labcd/aH;Labcd/aH;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/aH;Labcd/aH;)I
    .locals 2

    invoke-static {p2}, Labcd/aH;->j6(Labcd/aH;)I

    move-result v0

    invoke-static {p1}, Labcd/aH;->j6(Labcd/aH;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
