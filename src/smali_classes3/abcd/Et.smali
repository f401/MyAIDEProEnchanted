.class public Labcd/Et;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Or;

.field private final FH:Labcd/Or;

.field private final j6:Labcd/fs;


# direct methods
.method public constructor <init>(Labcd/fs;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Et;->j6:Labcd/fs;

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p1

    iput-object p1, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {p1}, Labcd/Or;->gW()Labcd/Or;

    move-result-object p1

    iput-object p1, p0, Labcd/Et;->FH:Labcd/Or;

    return-void
.end method

.method private j6(ILabcd/au;)V
    .registers 12

    invoke-virtual {p2}, Labcd/au;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_36

    invoke-virtual {p2, v2}, Labcd/au;->get(I)I

    move-result v3

    iget-object v4, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v4, v3}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v4

    iget-object v5, p0, Labcd/Et;->j6:Labcd/fs;

    invoke-virtual {v4}, Labcd/Nr;->DW()I

    move-result v4

    invoke-virtual {v5, v4}, Labcd/fs;->j6(I)Labcd/au;

    move-result-object v4

    invoke-virtual {v4}, Labcd/au;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_33

    iget-object v7, p0, Labcd/Et;->FH:Labcd/Or;

    invoke-virtual {v4, v6}, Labcd/au;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v7

    invoke-direct {p0, v7, v3, p1}, Labcd/Et;->j6(Labcd/Nr;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_36
    return-void
.end method

.method private j6(Labcd/Nr;II)V
    .registers 7

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-virtual {v0}, Labcd/au;->lg()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/au;->v5(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Labcd/au;->FH(II)V

    invoke-virtual {p1}, Labcd/Nr;->Zo()I

    move-result v1

    if-ne v1, p2, :cond_16

    goto :goto_17

    :cond_16
    move p3, v1

    :goto_17
    invoke-virtual {v0}, Labcd/hu;->we()V

    new-instance p2, Labcd/Nr;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v1

    invoke-virtual {p1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v2

    invoke-direct {p2, v1, v2, v0, p3}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    iget-object p3, p0, Labcd/Et;->FH:Labcd/Or;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result p1

    invoke-virtual {p3, p1}, Labcd/du;->Hw(I)I

    move-result p1

    invoke-virtual {p3, p1, p2}, Labcd/Or;->j6(ILabcd/Nr;)V

    return-void
.end method

.method private static j6(Labcd/Nr;Labcd/Nr;)Z
    .registers 2

    invoke-virtual {p0}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object p0

    invoke-virtual {p1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/Ur;->j6(Labcd/Ur;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public j6()Labcd/fs;
    .registers 16

    iget-object v0, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v2}, Labcd/du;->rN()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    const/4 v4, 0x1

    if-ge v3, v0, :cond_99

    iget-object v5, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v5, v3}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Nr;->DW()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_95

    :cond_27
    iget-object v6, p0, Labcd/Et;->j6:Labcd/fs;

    invoke-virtual {v5}, Labcd/Nr;->DW()I

    move-result v5

    invoke-virtual {v6, v5}, Labcd/fs;->j6(I)Labcd/au;

    move-result-object v5

    invoke-virtual {v5}, Labcd/au;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_36
    if-ge v7, v6, :cond_95

    invoke-virtual {v5, v7}, Labcd/au;->get(I)I

    move-result v8

    iget-object v9, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v9, v8}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v9

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_92

    invoke-virtual {v9}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v10

    invoke-virtual {v10}, Labcd/au;->size()I

    move-result v10

    if-gt v10, v4, :cond_92

    invoke-virtual {v9}, Labcd/Nr;->FH()Labcd/Tr;

    move-result-object v10

    invoke-virtual {v10}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v10

    invoke-virtual {v10}, Labcd/es;->Hw()I

    move-result v10

    const/16 v11, 0x37

    if-ne v10, v11, :cond_63

    goto :goto_92

    :cond_63
    new-instance v10, Labcd/au;

    invoke-direct {v10}, Labcd/au;-><init>()V

    add-int/lit8 v11, v7, 0x1

    :goto_6a
    if-ge v11, v6, :cond_8f

    invoke-virtual {v5, v11}, Labcd/au;->get(I)I

    move-result v12

    iget-object v13, p0, Labcd/Et;->DW:Labcd/Or;

    invoke-virtual {v13, v12}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v13

    invoke-virtual {v13}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v14

    invoke-virtual {v14}, Labcd/au;->size()I

    move-result v14

    if-ne v14, v4, :cond_8c

    invoke-static {v9, v13}, Labcd/Et;->j6(Labcd/Nr;Labcd/Nr;)Z

    move-result v13

    if-eqz v13, :cond_8c

    invoke-virtual {v10, v12}, Labcd/au;->DW(I)V

    invoke-virtual {v1, v12}, Ljava/util/BitSet;->set(I)V

    :cond_8c
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    :cond_8f
    invoke-direct {p0, v8, v10}, Labcd/Et;->j6(ILabcd/au;)V

    :cond_92
    :goto_92
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_95
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_99
    sub-int/2addr v0, v4

    :goto_9a
    if-ltz v0, :cond_b5

    iget-object v2, p0, Labcd/Et;->FH:Labcd/Or;

    invoke-virtual {v2, v0}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nr;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_b2

    iget-object v2, p0, Labcd/Et;->FH:Labcd/Or;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Labcd/Or;->j6(ILabcd/Nr;)V

    :cond_b2
    add-int/lit8 v0, v0, -0x1

    goto :goto_9a

    :cond_b5
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
