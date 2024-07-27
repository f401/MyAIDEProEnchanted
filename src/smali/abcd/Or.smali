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
    .registers 3

    invoke-direct {p0, p1}, Labcd/du;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Labcd/Or;->Hw:I

    return-void
.end method

.method private constructor <init>(Labcd/Or;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/du;-><init>(Labcd/du;)V

    iget v0, p1, Labcd/Or;->Hw:I

    iput v0, p0, Labcd/Or;->Hw:I

    return-void
.end method


# virtual methods
.method public BT()I
    .registers 3

    iget v0, p0, Labcd/Or;->Hw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Labcd/Or$a;

    invoke-direct {v0}, Labcd/Or$a;-><init>()V

    invoke-virtual {p0, v0}, Labcd/Or;->j6(Labcd/Tr$b;)V

    invoke-virtual {v0}, Labcd/Or$a;->j6()I

    move-result v0

    iput v0, p0, Labcd/Or;->Hw:I

    :cond_0
    iget v0, p0, Labcd/Or;->Hw:I

    return v0
.end method

.method public er()I
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v5

    move v4, v3

    move v1, v3

    :goto_0
    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v4}, Labcd/Xt;->FH(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Xt;->size()I

    move-result v7

    move v2, v3

    move v0, v1

    :goto_1
    if-ge v2, v7, :cond_2

    invoke-virtual {v6, v2}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v1

    const/16 v8, 0x36

    if-eq v1, v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v1, v0

    goto :goto_0

    :cond_3
    return v1
.end method

.method public gW()Labcd/Or;
    .registers 2

    new-instance v0, Labcd/Or;

    invoke-direct {v0, p0}, Labcd/Or;-><init>(Labcd/Or;)V

    return-object v0
.end method

.method public get(I)Labcd/Nr;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    return-object v0
.end method

.method public j6(Labcd/Nr;)Labcd/Nr;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Labcd/Nr;->Zo()I

    move-result v0

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v1

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v4}, Labcd/au;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Labcd/au;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(ILabcd/Nr;)V
    .registers 4

    invoke-super {p0, p1, p2}, Labcd/du;->j6(ILabcd/cu;)V

    const/4 v0, -0x1

    iput v0, p0, Labcd/Or;->Hw:I

    return-void
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Ur;->j6(Labcd/Tr$b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v5(I)Labcd/Nr;
    .registers 4

    invoke-virtual {p0, p1}, Labcd/du;->Hw(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public yS()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Labcd/Xt;->FH(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
