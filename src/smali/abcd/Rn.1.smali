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
        "Ljava/lang/Comparable",
        "<",
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
    .registers 3

    check-cast p1, Labcd/Rn;

    invoke-virtual {p0, p1}, Labcd/Rn;->j6(Labcd/Rn;)I

    move-result v0

    return v0
.end method

.method public get(I)Labcd/Rn$a;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rn$a;

    return-object v0
.end method

.method public j6(Labcd/Rn;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v1

    invoke-virtual {p1, v2}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v6

    invoke-virtual {v1, v6}, Labcd/Rn$a;->j6(Labcd/Rn$a;)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    if-ge v3, v4, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-le v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j6(ILabcd/Rn$a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
