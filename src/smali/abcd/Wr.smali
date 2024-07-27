.class public final Labcd/Wr;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Or;

.field private final FH:Labcd/Xr;

.field private final Hw:[I

.field private final j6:Labcd/fs;


# direct methods
.method private constructor <init>(Labcd/fs;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v1

    iput-object p1, p0, Labcd/Wr;->j6:Labcd/fs;

    iput-object v0, p0, Labcd/Wr;->DW:Labcd/Or;

    new-instance v0, Labcd/Xr;

    invoke-direct {v0, p1}, Labcd/Xr;-><init>(Labcd/fs;)V

    iput-object v0, p0, Labcd/Wr;->FH:Labcd/Xr;

    invoke-static {v1}, Labcd/Ot;->j6(I)[I

    move-result-object v0

    iput-object v0, p0, Labcd/Wr;->Hw:[I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6()Labcd/Xr;
    .registers 3

    iget-object v0, p0, Labcd/Wr;->j6:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->DW()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Labcd/Wr;->Hw:[I

    invoke-static {v1, v0}, Labcd/Ot;->j6([II)V

    invoke-direct {p0, v0}, Labcd/Wr;->j6(I)V

    iget-object v0, p0, Labcd/Wr;->Hw:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Ot;->DW([II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labcd/Wr;->FH:Labcd/Xr;

    invoke-virtual {v0}, Labcd/hu;->we()V

    iget-object v0, p0, Labcd/Wr;->FH:Labcd/Xr;

    return-object v0
.end method

.method public static j6(Labcd/fs;)Labcd/Xr;
    .registers 2

    new-instance v0, Labcd/Wr;

    invoke-direct {v0, p0}, Labcd/Wr;-><init>(Labcd/fs;)V

    invoke-direct {v0}, Labcd/Wr;->j6()Labcd/Xr;

    move-result-object v0

    return-object v0
.end method

.method private j6(I)V
    .registers 15

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Wr;->FH:Labcd/Xr;

    invoke-virtual {v0, p1}, Labcd/Xr;->FH(I)Labcd/ds;

    move-result-object v3

    iget-object v0, p0, Labcd/Wr;->DW:Labcd/Or;

    invoke-virtual {v0, p1}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Xt;->size()I

    move-result v7

    invoke-virtual {v5}, Labcd/Nr;->u7()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Labcd/Ur;->rN()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    move-object v2, v3

    move v4, v1

    :goto_1
    if-ge v4, v7, :cond_5

    if-eqz v0, :cond_0

    add-int/lit8 v8, v7, -0x1

    if-ne v4, v8, :cond_0

    invoke-virtual {v2}, Labcd/hu;->we()V

    invoke-virtual {v2}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v2

    :cond_0
    invoke-virtual {v6, v4}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v8

    invoke-virtual {v8}, Labcd/Tr;->Hw()Labcd/bs;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Labcd/bs;->we()I

    move-result v9

    invoke-virtual {v2, v9}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Labcd/bs;->we()I

    move-result v8

    invoke-virtual {v2, v8}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v8

    invoke-virtual {v2, v8}, Labcd/ds;->Hw(Labcd/bs;)V

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Labcd/bs;->rN()Labcd/bs;

    move-result-object v9

    invoke-virtual {v2, v9}, Labcd/ds;->DW(Labcd/bs;)Labcd/bs;

    move-result-object v10

    invoke-virtual {v9, v10}, Labcd/bs;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v10

    invoke-virtual {v2, v10}, Labcd/ds;->j6(Labcd/Vr;)Labcd/bs;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Labcd/bs;->we()I

    move-result v11

    invoke-virtual {v9}, Labcd/bs;->we()I

    move-result v12

    if-eq v11, v12, :cond_4

    invoke-virtual {v2, v10}, Labcd/ds;->Hw(Labcd/bs;)V

    :cond_4
    iget-object v10, p0, Labcd/Wr;->FH:Labcd/Xr;

    invoke-virtual {v10, v8, v9}, Labcd/Xr;->j6(Labcd/Tr;Labcd/bs;)V

    invoke-virtual {v2, v9}, Labcd/ds;->FH(Labcd/bs;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Labcd/hu;->we()V

    invoke-virtual {v5}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v4

    invoke-virtual {v4}, Labcd/au;->size()I

    move-result v6

    invoke-virtual {v5}, Labcd/Nr;->Zo()I

    move-result v5

    :goto_3
    if-ge v1, v6, :cond_8

    invoke-virtual {v4, v1}, Labcd/au;->get(I)I

    move-result v7

    if-ne v7, v5, :cond_7

    move-object v0, v2

    :goto_4
    iget-object v8, p0, Labcd/Wr;->FH:Labcd/Xr;

    invoke-virtual {v8, v7, v0}, Labcd/Xr;->j6(ILabcd/ds;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/Wr;->Hw:[I

    invoke-static {v0, v7}, Labcd/Ot;->Hw([II)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_4

    :cond_8
    return-void
.end method
