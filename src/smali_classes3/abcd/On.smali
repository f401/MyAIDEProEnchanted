.class public final Labcd/On;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[Labcd/Sn;

.field private final FH:[Labcd/Sn;

.field private final j6:[Labcd/Sn;


# direct methods
.method public constructor <init>(Labcd/fs;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v0

    new-array v1, v0, [Labcd/Sn;

    iput-object v1, p0, Labcd/On;->j6:[Labcd/Sn;

    new-array v1, v0, [Labcd/Sn;

    iput-object v1, p0, Labcd/On;->DW:[Labcd/Sn;

    new-array v0, v0, [Labcd/Sn;

    iput-object v0, p0, Labcd/On;->FH:[Labcd/Sn;

    invoke-direct {p0, p1}, Labcd/On;->j6(Labcd/fs;)V

    return-void
.end method

.method private j6(Labcd/fs;)V
    .registers 10

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_46

    invoke-virtual {p1, v2}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nr;->DW()I

    move-result v4

    invoke-virtual {v3}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v5

    invoke-virtual {v5, v1}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v5

    iget-object v6, p0, Labcd/On;->j6:[Labcd/Sn;

    new-instance v7, Labcd/Sn;

    invoke-virtual {v5}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v5

    invoke-direct {v7, v5}, Labcd/Sn;-><init>(Labcd/hs;)V

    aput-object v7, v6, v4

    invoke-virtual {v3}, Labcd/Nr;->v5()Labcd/Tr;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v3

    iget-object v5, p0, Labcd/On;->DW:[Labcd/Sn;

    new-instance v6, Labcd/Sn;

    invoke-direct {v6, v3}, Labcd/Sn;-><init>(Labcd/hs;)V

    aput-object v6, v5, v4

    iget-object v5, p0, Labcd/On;->FH:[Labcd/Sn;

    new-instance v6, Labcd/Sn;

    invoke-direct {v6, v3}, Labcd/Sn;-><init>(Labcd/hs;)V

    aput-object v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_46
    return-void
.end method


# virtual methods
.method public DW(Labcd/Nr;)Labcd/Sn;
    .registers 3

    iget-object v0, p0, Labcd/On;->DW:[Labcd/Sn;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public FH(Labcd/Nr;)Labcd/Sn;
    .registers 3

    iget-object v0, p0, Labcd/On;->j6:[Labcd/Sn;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public j6(I)Labcd/Sn;
    .registers 3

    iget-object v0, p0, Labcd/On;->j6:[Labcd/Sn;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public j6(Labcd/Nr;)Labcd/Sn;
    .registers 3

    iget-object v0, p0, Labcd/On;->FH:[Labcd/Sn;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method
