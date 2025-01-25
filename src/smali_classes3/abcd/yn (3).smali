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

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_14

    invoke-virtual {p0, v2}, Labcd/yn;->get(I)Labcd/on;

    move-result-object v3

    invoke-interface {v3}, Labcd/on;->Hw()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    return v1
.end method

.method public get(I)Labcd/on;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/on;

    return-object p1
.end method

.method public j6(Labcd/on;)Labcd/on;
    .registers 7

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x0

    if-ge v1, v0, :cond_29

    invoke-virtual {p0, v1}, Labcd/yn;->get(I)Labcd/on;

    move-result-object v3

    if-ne v3, p1, :cond_26

    invoke-interface {p1}, Labcd/on;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_25

    invoke-virtual {p0, v1}, Labcd/yn;->get(I)Labcd/on;

    move-result-object v3

    invoke-interface {v3}, Labcd/on;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    return-object v3

    :cond_25
    return-object v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_29
    return-object v2
.end method

.method public j6(Ljava/lang/String;)Labcd/on;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    invoke-virtual {p0, v1}, Labcd/yn;->get(I)Labcd/on;

    move-result-object v2

    invoke-interface {v2}, Labcd/on;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(ILabcd/on;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
