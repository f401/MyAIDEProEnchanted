.class Labcd/Zm$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private DW:Ljava/util/BitSet;

.field private FH:I

.field final Hw:Labcd/Zm;

.field private j6:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Labcd/Zm;I)V
    .registers 4

    iput-object p1, p0, Labcd/Zm$b;->Hw:Labcd/Zm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Labcd/Zm$b;->FH:I

    new-instance p2, Ljava/util/BitSet;

    invoke-static {p1}, Labcd/Zm;->j6(Labcd/Zm;)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Labcd/Zm$b;->DW:Ljava/util/BitSet;

    new-instance p2, Ljava/util/BitSet;

    invoke-static {p1}, Labcd/Zm;->j6(Labcd/Zm;)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Labcd/Zm;->j6(Labcd/Zm;Z)Z

    return-void
.end method

.method constructor <init>(Labcd/Zm;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/Zm$b;-><init>(Labcd/Zm;I)V

    invoke-virtual {p0, p3}, Labcd/Zm$b;->DW(I)V

    return-void
.end method

.method static synthetic DW(Labcd/Zm$b;)I
    .registers 1

    iget p0, p0, Labcd/Zm$b;->FH:I

    return p0
.end method

.method static synthetic j6(Labcd/Zm$b;)Ljava/util/BitSet;
    .registers 1

    iget-object p0, p0, Labcd/Zm$b;->DW:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method DW()Labcd/au;
    .registers 5

    new-instance v0, Labcd/au;

    iget-object v1, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/au;-><init>(I)V

    iget-object v1, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_12
    if-ltz v1, :cond_2e

    iget-object v3, p0, Labcd/Zm$b;->Hw:Labcd/Zm;

    invoke-static {v3, v1}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/au;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Labcd/au;->DW(I)V

    iget-object v3, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_12

    :cond_2e
    invoke-virtual {v0}, Labcd/hu;->we()V

    return-object v0
.end method

.method DW(I)V
    .registers 3

    iget-object v0, p0, Labcd/Zm$b;->DW:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method j6()I
    .registers 2

    iget v0, p0, Labcd/Zm$b;->FH:I

    return v0
.end method

.method j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method j6(Labcd/Om;[I)V
    .registers 12

    iget-object v0, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_7
    if-ltz v0, :cond_34

    iget-object v2, p0, Labcd/Zm$b;->Hw:Labcd/Zm;

    invoke-static {v2, v0}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v2

    invoke-virtual {v2, v1}, Labcd/au;->get(I)I

    move-result v4

    iget v2, p0, Labcd/Zm$b;->FH:I

    invoke-virtual {p1, v2, v0}, Labcd/Om;->DW(II)Labcd/Om;

    move-result-object v7

    if-eqz v7, :cond_28

    iget-object v3, p0, Labcd/Zm$b;->Hw:Labcd/Zm;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Labcd/Zm;->j6(Labcd/Zm;IILabcd/Zm$b;Labcd/Om;[I)V

    goto :goto_2b

    :cond_28
    invoke-static {p2, v0}, Labcd/Ot;->Hw([II)V

    :goto_2b
    iget-object v2, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_7

    :cond_34
    return-void
.end method
