.class Labcd/OC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/PC;
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
        "Labcd/PC$b;",
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

    check-cast p1, Labcd/PC$b;

    check-cast p2, Labcd/PC$b;

    invoke-virtual {p0, p1, p2}, Labcd/OC;->j6(Labcd/PC$b;Labcd/PC$b;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/PC$b;Labcd/PC$b;)I
    .registers 7

    iget-object v0, p1, Labcd/PC$b;->j6:[B

    iget-object v1, p2, Labcd/PC$b;->j6:[B

    array-length v2, v0

    array-length v3, v1

    invoke-static {v0, v2, v1, v3}, Labcd/KC;->j6([BI[BI)I

    move-result v0

    return v0
.end method
