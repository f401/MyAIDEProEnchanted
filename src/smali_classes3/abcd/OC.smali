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
        "Ljava/util/Comparator<",
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
    .registers 3

    check-cast p1, Labcd/PC$b;

    check-cast p2, Labcd/PC$b;

    invoke-virtual {p0, p1, p2}, Labcd/OC;->j6(Labcd/PC$b;Labcd/PC$b;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/PC$b;Labcd/PC$b;)I
    .registers 5

    iget-object p1, p1, Labcd/PC$b;->j6:[B

    iget-object p2, p2, Labcd/PC$b;->j6:[B

    array-length v0, p1

    array-length v1, p2

    invoke-static {p1, v0, p2, v1}, Labcd/KC;->j6([BI[BI)I

    move-result p1

    return p1
.end method
