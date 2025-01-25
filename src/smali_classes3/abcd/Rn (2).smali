.class public final Labcd/Rn;
.super Labcd/Xt;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Rn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/Xt;",
        "Ljava/lang/Comparable<",
        "Labcd/Rn;",
        ">;"
    }
.end annotation


# static fields
.field public static final FH:Labcd/Rn;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/Rn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Rn;-><init>(I)V

    sput-object v0, Labcd/Rn;->FH:Labcd/Rn;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Rn;

    invoke-virtual {p0, p1}, Labcd/Rn;->j6(Labcd/Rn;)I

    move-result p1

    return p1
.end method

.method public get(I)Labcd/Rn$a;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Rn$a;

    return-object p1
.end method

.method public j6(Labcd/Rn;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_25

    invoke-virtual {p0, v4}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v5

    invoke-virtual {p1, v4}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Labcd/Rn$a;->j6(Labcd/Rn$a;)I

    move-result v5

    if-eqz v5, :cond_22

    return v5

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_25
    if-ge v1, v2, :cond_29

    const/4 p1, -0x1

    return p1

    :cond_29
    if-le v1, v2, :cond_2d

    const/4 p1, 0x1

    return p1

    :cond_2d
    return v0
.end method

.method public j6(ILabcd/Rn$a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
