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
        "Ljava/lang/Comparable<",
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
    .registers 2

    check-cast p1, Labcd/ps$a;

    invoke-virtual {p0, p1}, Labcd/ps$a;->j6(Labcd/ps$a;)I

    move-result p1

    return p1
.end method

.method public get(I)Labcd/ms;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/ms;

    return-object p1
.end method

.method public j6(Labcd/ps$a;)I
    .registers 9

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_27

    invoke-virtual {p0, v4}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/ms;

    invoke-virtual {p1, v4}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/ms;

    invoke-virtual {v5, v6}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v5

    if-eqz v5, :cond_24

    return v5

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_27
    if-ge v0, v1, :cond_2b

    const/4 p1, -0x1

    return p1

    :cond_2b
    if-le v0, v1, :cond_2f

    const/4 p1, 0x1

    return p1

    :cond_2f
    return v3
.end method

.method public j6(ILabcd/ms;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
