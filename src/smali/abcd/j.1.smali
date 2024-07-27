.class Labcd/j;
.super Labcd/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/k;->DW()Labcd/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final Hw:Labcd/k;


# direct methods
.method constructor <init>(Labcd/k;)V
    .registers 2

    iput-object p1, p0, Labcd/j;->Hw:Labcd/k;

    invoke-direct {p0}, Labcd/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected DW(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Labcd/j;->Hw:Labcd/k;

    invoke-virtual {v0, p1}, Labcd/x;->DW(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected DW()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/j;->Hw:Labcd/k;

    return-object v0
.end method

.method protected FH()I
    .registers 2

    iget-object v0, p0, Labcd/j;->Hw:Labcd/k;

    iget v0, v0, Labcd/x;->VH:I

    return v0
.end method

.method protected j6(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Labcd/j;->Hw:Labcd/k;

    invoke-virtual {v0, p1}, Labcd/x;->j6(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected j6(II)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Labcd/j;->Hw:Labcd/k;

    iget-object v0, v0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected j6(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Labcd/j;->Hw:Labcd/k;

    invoke-virtual {v0, p1, p2}, Labcd/x;->j6(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected j6()V
    .registers 2

    iget-object v0, p0, Labcd/j;->Hw:Labcd/k;

    invoke-virtual {v0}, Labcd/x;->clear()V

    return-void
.end method

.method protected j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/j;->Hw:Labcd/k;

    invoke-virtual {v0, p1}, Labcd/x;->FH(I)Ljava/lang/Object;

    return-void
.end method

.method protected j6(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/j;->Hw:Labcd/k;

    invoke-virtual {v0, p1, p2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
