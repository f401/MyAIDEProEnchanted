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
    .registers 5

    iput-object p1, p0, Labcd/Zm$b;->Hw:Labcd/Zm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Labcd/Zm$b;->FH:I

    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Labcd/Zm;->j6(Labcd/Zm;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/Zm$b;->DW:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Labcd/Zm;->j6(Labcd/Zm;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Labcd/Zm;->j6(Labcd/Zm;Z)Z

    return-void
.end method

.method constructor <init>(Labcd/Zm;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/Zm$b;-><init>(Labcd/Zm;I)V

    invoke-virtual {p0, p3}, Labcd/Zm$b;->DW(I)V

    return-void
.end method

.method static synthetic DW(Labcd/Zm$b;)I
    .registers 2

    iget v0, p0, Labcd/Zm$b;->FH:I

    return v0
.end method

.method static synthetic j6(Labcd/Zm$b;)Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Labcd/Zm$b;->DW:Ljava/util/BitSet;

    return-object v0
.end method


# virtual methods
.method DW()Labcd/au;
    .registers 5

    const/4 v3, 0x0

    new-instance v1, Labcd/au;

    iget-object v0, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Labcd/au;-><init>(I)V

    iget-object v0, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Labcd/Zm$b;->Hw:Labcd/Zm;

    invoke-static {v2, v0}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v2

    invoke-virtual {v2, v3}, Labcd/au;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/au;->DW(I)V

    iget-object v2, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1
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
    .registers 11

    const/4 v7, 0x0

    iget-object v0, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v6, v0

    :goto_0
    if-ltz v6, :cond_1

    iget-object v0, p0, Labcd/Zm$b;->Hw:Labcd/Zm;

    invoke-static {v0, v6}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, v7}, Labcd/au;->get(I)I

    move-result v1

    iget v0, p0, Labcd/Zm$b;->FH:I

    invoke-virtual {p1, v0, v6}, Labcd/Om;->DW(II)Labcd/Om;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Labcd/Zm$b;->Hw:Labcd/Zm;

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/Zm;->j6(Labcd/Zm;IILabcd/Zm$b;Labcd/Om;[I)V

    :goto_1
    iget-object v0, p0, Labcd/Zm$b;->j6:Ljava/util/BitSet;

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-static {p2, v6}, Labcd/Ot;->Hw([II)V

    goto :goto_1

    :cond_1
    return-void
.end method
