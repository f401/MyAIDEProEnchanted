.class public final Labcd/yn;
.super Labcd/Xt;

# interfaces
.implements Labcd/pn;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Hw()I
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v2

    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Labcd/yn;->get(I)Labcd/on;

    move-result-object v3

    invoke-interface {v3}, Labcd/on;->Hw()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public get(I)Labcd/on;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/on;

    return-object v0
.end method

.method public j6(Labcd/on;)Labcd/on;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Labcd/yn;->get(I)Labcd/on;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-interface {p1}, Labcd/on;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Labcd/yn;->get(I)Labcd/on;

    move-result-object v0

    invoke-interface {v0}, Labcd/on;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public j6(Ljava/lang/String;)Labcd/on;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Labcd/yn;->get(I)Labcd/on;

    move-result-object v0

    invoke-interface {v0}, Labcd/on;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public j6(ILabcd/on;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
