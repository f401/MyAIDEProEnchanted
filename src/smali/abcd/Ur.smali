.class public final Labcd/Ur;
.super Labcd/Xt;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Labcd/Tr;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Tr;

    return-object v0
.end method

.method public j6(ILabcd/Tr;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Tr;->j6(Labcd/Tr$b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j6(Labcd/Ur;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v2

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v1

    if-ne v2, v1, :cond_0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v3

    invoke-virtual {p1, v1}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/Tr;->j6(Labcd/Tr;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public rN()Labcd/Tr;
    .registers 2

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v0

    return-object v0
.end method
