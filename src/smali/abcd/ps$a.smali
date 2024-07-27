.class public final Labcd/ps$a;
.super Labcd/Xt;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/Xt;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/ps$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/ps$a;

    invoke-virtual {p0, p1}, Labcd/ps$a;->j6(Labcd/ps$a;)I

    move-result v0

    return v0
.end method

.method public get(I)Labcd/ms;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ms;

    return-object v0
.end method

.method public j6(Labcd/ps$a;)I
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v2, v3

    :goto_0
    move v6, v5

    :goto_1
    if-ge v6, v2, :cond_2

    invoke-virtual {p0, v6}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ms;

    invoke-virtual {p1, v6}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ms;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    return v0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    if-ge v3, v4, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    if-le v3, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_2
.end method

.method public j6(ILabcd/ms;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
