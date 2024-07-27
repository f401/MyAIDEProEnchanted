.class Labcd/l;
.super Labcd/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/m;->j6()Labcd/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field final Hw:Labcd/m;


# direct methods
.method constructor <init>(Labcd/m;)V
    .registers 2

    iput-object p1, p0, Labcd/l;->Hw:Labcd/m;

    invoke-direct {p0}, Labcd/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected DW(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Labcd/l;->Hw:Labcd/m;

    invoke-virtual {v0, p1}, Labcd/m;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected DW()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected FH()I
    .registers 2

    iget-object v0, p0, Labcd/l;->Hw:Labcd/m;

    iget v0, v0, Labcd/m;->tp:I

    return v0
.end method

.method protected j6(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Labcd/l;->Hw:Labcd/m;

    invoke-virtual {v0, p1}, Labcd/m;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected j6(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Labcd/l;->Hw:Labcd/m;

    iget-object v0, v0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected j6(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected j6()V
    .registers 2

    iget-object v0, p0, Labcd/l;->Hw:Labcd/m;

    invoke-virtual {v0}, Labcd/m;->clear()V

    return-void
.end method

.method protected j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/l;->Hw:Labcd/m;

    invoke-virtual {v0, p1}, Labcd/m;->Zo(I)Ljava/lang/Object;

    return-void
.end method

.method protected j6(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/l;->Hw:Labcd/m;

    invoke-virtual {v0, p1}, Labcd/m;->add(Ljava/lang/Object;)Z

    return-void
.end method
