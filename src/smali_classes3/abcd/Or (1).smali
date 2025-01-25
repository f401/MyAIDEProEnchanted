.class public final Labcd/Or;
.super Labcd/du;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Or$a;
    }
.end annotation


# instance fields
.field private Hw:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/du;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Labcd/Or;->Hw:I

    return-void
.end method

.method private constructor <init>(Labcd/Or;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/du;-><init>(Labcd/du;)V

    iget p1, p1, Labcd/Or;->Hw:I

    iput p1, p0, Labcd/Or;->Hw:I

    return-void
.end method


# virtual methods
.method public BT()I
    .registers 3

    iget v0, p0, Labcd/Or;->Hw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    new-instance v0, Labcd/Or$a;

    invoke-direct {v0}, Labcd/Or$a;-><init>()V

    invoke-virtual {p0, v0}, Labcd/Or;->j6(Labcd/Tr$b;)V

    invoke-virtual {v0}, Labcd/Or$a;->j6()I

    move-result v0

    iput v0, p0, Labcd/Or;->Hw:I

    :cond_13
    iget v0, p0, Labcd/Or;->Hw:I

    return v0
.end method

.method public er()I
    .registers 10

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_34

    invoke-virtual {p0, v2}, Labcd/Xt;->FH(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Nr;

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Xt;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_31

    invoke-virtual {v4, v6}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v7

    invoke-virtual {v7}, Labcd/es;->Hw()I

    move-result v7

    const/16 v8, 0x36

    if-eq v7, v8, :cond_2e

    add-int/lit8 v3, v3, 0x1

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_34
    return v3
.end method

.method public gW()Labcd/Or;
    .registers 2

    new-instance v0, Labcd/Or;

    invoke-direct {v0, p0}, Labcd/Or;-><init>(Labcd/Or;)V

    return-object v0
.end method

.method public get(I)Labcd/Nr;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Nr;

    return-object p1
.end method

.method public j6(Labcd/Nr;)Labcd/Nr;
    .registers 6

    invoke-virtual {p1}, Labcd/Nr;->Zo()I

    move-result v0

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object p1

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1a

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    invoke-virtual {p0, v0}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-virtual {p1, v3}, Labcd/au;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object p1

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(ILabcd/Nr;)V
    .registers 3

    invoke-super {p0, p1, p2}, Labcd/du;->j6(ILabcd/cu;)V

    const/4 p1, -0x1

    iput p1, p0, Labcd/Or;->Hw:I

    return-void
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Ur;->j6(Labcd/Tr$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method

.method public v5(I)Labcd/Nr;
    .registers 4

    invoke-virtual {p0, p1}, Labcd/du;->Hw(I)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-virtual {p0, v0}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public yS()I
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0, v1}, Labcd/Xt;->FH(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Nr;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v3

    add-int/2addr v2, v3

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return v2
.end method
