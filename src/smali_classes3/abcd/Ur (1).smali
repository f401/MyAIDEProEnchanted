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
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Tr;

    return-object p1
.end method

.method public j6(ILabcd/Tr;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p0, v1}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Tr;->j6(Labcd/Tr$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public j6(Labcd/Ur;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v2

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_24

    invoke-virtual {p0, v2}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v3

    invoke-virtual {p1, v2}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/Tr;->j6(Labcd/Tr;)Z

    move-result v3

    if-nez v3, :cond_21

    return v0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_24
    const/4 p1, 0x1

    return p1
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
