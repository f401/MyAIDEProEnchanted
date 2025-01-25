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

    if-eqz p1, :cond_1f

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

    move-result-object p1

    iput-object p1, p0, Labcd/Wr;->Hw:[I

    return-void

    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6()Labcd/Xr;
    .registers 3

    iget-object v0, p0, Labcd/Wr;->j6:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->DW()I

    move-result v0

    :goto_6
    if-ltz v0, :cond_18

    iget-object v1, p0, Labcd/Wr;->Hw:[I

    invoke-static {v1, v0}, Labcd/Ot;->j6([II)V

    invoke-direct {p0, v0}, Labcd/Wr;->j6(I)V

    iget-object v0, p0, Labcd/Wr;->Hw:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Ot;->DW([II)I

    move-result v0

    goto :goto_6

    :cond_18
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

    move-result-object p0

    return-object p0
.end method

.method private j6(I)V
    .registers 14

    iget-object v0, p0, Labcd/Wr;->FH:Labcd/Xr;

    invoke-virtual {v0, p1}, Labcd/Xr;->FH(I)Labcd/ds;

    move-result-object v0

    iget-object v1, p0, Labcd/Wr;->DW:Labcd/Or;

    invoke-virtual {v1, p1}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    invoke-virtual {p1}, Labcd/Nr;->u7()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Labcd/Ur;->rN()Labcd/Tr;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v3

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    move-object v6, v0

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v2, :cond_8f

    if-eqz v3, :cond_39

    add-int/lit8 v7, v2, -0x1

    if-ne v5, v7, :cond_39

    invoke-virtual {v6}, Labcd/hu;->we()V

    invoke-virtual {v6}, Labcd/ds;->rN()Labcd/ds;

    move-result-object v6

    :cond_39
    invoke-virtual {v1, v5}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Tr;->Hw()Labcd/bs;

    move-result-object v8

    if-nez v8, :cond_5f

    invoke-virtual {v7}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v7

    if-eqz v7, :cond_8c

    invoke-virtual {v7}, Labcd/bs;->we()I

    move-result v8

    invoke-virtual {v6, v8}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v8

    if-eqz v8, :cond_8c

    invoke-virtual {v7}, Labcd/bs;->we()I

    move-result v7

    invoke-virtual {v6, v7}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v7

    invoke-virtual {v6, v7}, Labcd/ds;->Hw(Labcd/bs;)V

    goto :goto_8c

    :cond_5f
    invoke-virtual {v8}, Labcd/bs;->rN()Labcd/bs;

    move-result-object v8

    invoke-virtual {v6, v8}, Labcd/ds;->DW(Labcd/bs;)Labcd/bs;

    move-result-object v9

    invoke-virtual {v8, v9}, Labcd/bs;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8c

    invoke-virtual {v8}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v9

    invoke-virtual {v6, v9}, Labcd/ds;->j6(Labcd/Vr;)Labcd/bs;

    move-result-object v9

    if-eqz v9, :cond_84

    invoke-virtual {v9}, Labcd/bs;->we()I

    move-result v10

    invoke-virtual {v8}, Labcd/bs;->we()I

    move-result v11

    if-eq v10, v11, :cond_84

    invoke-virtual {v6, v9}, Labcd/ds;->Hw(Labcd/bs;)V

    :cond_84
    iget-object v9, p0, Labcd/Wr;->FH:Labcd/Xr;

    invoke-virtual {v9, v7, v8}, Labcd/Xr;->j6(Labcd/Tr;Labcd/bs;)V

    invoke-virtual {v6, v8}, Labcd/ds;->FH(Labcd/bs;)V

    :cond_8c
    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_8f
    invoke-virtual {v6}, Labcd/hu;->we()V

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v1

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v2

    invoke-virtual {p1}, Labcd/Nr;->Zo()I

    move-result p1

    :goto_9e
    if-ge v4, v2, :cond_b9

    invoke-virtual {v1, v4}, Labcd/au;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_a8

    move-object v5, v6

    goto :goto_a9

    :cond_a8
    move-object v5, v0

    :goto_a9
    iget-object v7, p0, Labcd/Wr;->FH:Labcd/Xr;

    invoke-virtual {v7, v3, v5}, Labcd/Xr;->j6(ILabcd/ds;)Z

    move-result v5

    if-eqz v5, :cond_b6

    iget-object v5, p0, Labcd/Wr;->Hw:[I

    invoke-static {v5, v3}, Labcd/Ot;->Hw([II)V

    :cond_b6
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    :cond_b9
    return-void
.end method
