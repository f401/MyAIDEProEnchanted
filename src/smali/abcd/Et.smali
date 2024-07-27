.class public Labcd/Et;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Or;

.field private final FH:Labcd/Or;

.field private final j6:Labcd/fs;


# direct methods
.method public constructor <init>(Labcd/fs;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Et;->j6:Labcd/fs;

    iget-object v0, p0, Labcd/Et;->j6:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    iput-object v0, p0, Labcd/Et;->DW:Labcd/Or;

    iget-object v0, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v0}, Labcd/Or;->gW()Labcd/Or;

    move-result-object v0

    iput-object v0, p0, Labcd/Et;->FH:Labcd/Or;

    return-void
.end method

.method private j6(ILabcd/au;)V
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p2}, Labcd/au;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p2, v2}, Labcd/au;->get(I)I

    move-result v4

    iget-object v0, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v0, v4}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v0

    iget-object v5, p0, Labcd/Et;->j6:Labcd/fs;

    invoke-virtual {v0}, Labcd/Nr;->DW()I

    move-result v0

    invoke-virtual {v5, v0}, Labcd/fs;->j6(I)Labcd/au;

    move-result-object v5

    invoke-virtual {v5}, Labcd/au;->size()I

    move-result v6

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    iget-object v7, p0, Labcd/Et;->FH:Labcd/Or;

    invoke-virtual {v5, v0}, Labcd/au;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v7

    invoke-direct {p0, v7, v4, p1}, Labcd/Et;->j6(Labcd/Nr;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j6(Labcd/Nr;II)V
    .registers 8

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-virtual {v0}, Labcd/au;->lg()Labcd/au;

    move-result-object v1

    invoke-virtual {v1, p2}, Labcd/au;->v5(I)I

    move-result v0

    invoke-virtual {v1, v0, p3}, Labcd/au;->FH(II)V

    invoke-virtual {p1}, Labcd/Nr;->Zo()I

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    invoke-virtual {v1}, Labcd/hu;->we()V

    new-instance v0, Labcd/Nr;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v2

    invoke-virtual {p1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1, p3}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    iget-object v1, p0, Labcd/Et;->FH:Labcd/Or;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/du;->Hw(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Labcd/Or;->j6(ILabcd/Nr;)V

    return-void

    :cond_0
    move p3, v0

    goto :goto_0
.end method

.method private static j6(Labcd/Nr;Labcd/Nr;)Z
    .registers 4

    invoke-virtual {p0}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Ur;->j6(Labcd/Ur;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public j6()Labcd/fs;
    .registers 16

    const/4 v14, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v4

    new-instance v5, Ljava/util/BitSet;

    iget-object v0, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/BitSet;-><init>(I)V

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_6

    iget-object v0, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v0, v3}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nr;->DW()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Labcd/Et;->j6:Labcd/fs;

    invoke-virtual {v0}, Labcd/Nr;->DW()I

    move-result v0

    invoke-virtual {v1, v0}, Labcd/fs;->j6(I)Labcd/au;

    move-result-object v6

    invoke-virtual {v6}, Labcd/au;->size()I

    move-result v7

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_0

    invoke-virtual {v6, v1}, Labcd/au;->get(I)I

    move-result v8

    iget-object v0, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v0, v8}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v9

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v9}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-gt v0, v14, :cond_2

    invoke-virtual {v9}, Labcd/Nr;->FH()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/16 v10, 0x37

    if-ne v0, v10, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v10, Labcd/au;

    invoke-direct {v10}, Labcd/au;-><init>()V

    add-int/lit8 v0, v1, 0x1

    :goto_3
    if-ge v0, v7, :cond_5

    invoke-virtual {v6, v0}, Labcd/au;->get(I)I

    move-result v11

    iget-object v12, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v12, v11}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v12

    invoke-virtual {v12}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v13

    invoke-virtual {v13}, Labcd/au;->size()I

    move-result v13

    if-ne v13, v14, :cond_4

    invoke-static {v9, v12}, Labcd/Et;->j6(Labcd/Nr;Labcd/Nr;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v10, v11}, Labcd/au;->DW(I)V

    invoke-virtual {v5, v11}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-direct {p0, v8, v10}, Labcd/Et;->j6(ILabcd/au;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v4, -0x1

    :goto_4
    if-ltz v0, :cond_8

    iget-object v1, p0, Labcd/Et;->FH:Labcd/Or;

    invoke-virtual {v1, v0}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nr;->DW()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Labcd/Et;->FH:Labcd/Or;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Labcd/Or;->j6(ILabcd/Nr;)V

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Labcd/Et;->FH:Labcd/Or;

    invoke-virtual {v0}, Labcd/du;->lg()V

    iget-object v0, p0, Labcd/Et;->FH:Labcd/Or;

    invoke-virtual {v0}, Labcd/hu;->we()V

    new-instance v0, Labcd/fs;

    iget-object v1, p0, Labcd/Et;->FH:Labcd/Or;

    iget-object v2, p0, Labcd/Et;->j6:Labcd/fs;

    invoke-virtual {v2}, Labcd/fs;->DW()I

    move-result v2

    invoke-direct {v0, v1, v2}, Labcd/fs;-><init>(Labcd/Or;I)V

    return-object v0
.end method
