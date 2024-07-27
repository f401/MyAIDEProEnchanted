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
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Nr;->DW()I

    move-result v5

    invoke-virtual {v4}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v6

    invoke-virtual {v6, v1}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v6

    iget-object v7, p0, Labcd/On;->j6:[Labcd/Sn;

    new-instance v8, Labcd/Sn;

    invoke-virtual {v6}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v6

    invoke-direct {v8, v6}, Labcd/Sn;-><init>(Labcd/hs;)V

    aput-object v8, v7, v5

    invoke-virtual {v4}, Labcd/Nr;->v5()Labcd/Tr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v4

    iget-object v6, p0, Labcd/On;->DW:[Labcd/Sn;

    new-instance v7, Labcd/Sn;

    invoke-direct {v7, v4}, Labcd/Sn;-><init>(Labcd/hs;)V

    aput-object v7, v6, v5

    iget-object v6, p0, Labcd/On;->FH:[Labcd/Sn;

    new-instance v7, Labcd/Sn;

    invoke-direct {v7, v4}, Labcd/Sn;-><init>(Labcd/hs;)V

    aput-object v7, v6, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public DW(Labcd/Nr;)Labcd/Sn;
    .registers 4

    iget-object v0, p0, Labcd/On;->DW:[Labcd/Sn;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public FH(Labcd/Nr;)Labcd/Sn;
    .registers 4

    iget-object v0, p0, Labcd/On;->j6:[Labcd/Sn;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public j6(I)Labcd/Sn;
    .registers 3

    iget-object v0, p0, Labcd/On;->j6:[Labcd/Sn;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public j6(Labcd/Nr;)Labcd/Sn;
    .registers 4

    iget-object v0, p0, Labcd/On;->FH:[Labcd/Sn;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
