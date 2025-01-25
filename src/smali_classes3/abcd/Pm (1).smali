.class public final Labcd/Pm;
.super Labcd/Xt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Pm$a;
    }
.end annotation


# static fields
.field public static final FH:Labcd/Pm;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/Pm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Pm;-><init>(I)V

    sput-object v0, Labcd/Pm;->FH:Labcd/Pm;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method

.method public static j6(Labcd/Pm;Labcd/Pm;)Labcd/Pm;
    .registers 8

    sget-object v0, Labcd/Pm;->FH:Labcd/Pm;

    if-ne p0, v0, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v1

    new-instance v2, Labcd/Pm;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Labcd/Pm;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v0, :cond_22

    invoke-virtual {p0, v4}, Labcd/Pm;->get(I)Labcd/Pm$a;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Labcd/Pm;->j6(ILabcd/Pm$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_22
    :goto_22
    if-ge v3, v1, :cond_30

    add-int p0, v0, v3

    invoke-virtual {p1, v3}, Labcd/Pm;->get(I)Labcd/Pm$a;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Labcd/Pm;->j6(ILabcd/Pm$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_30
    return-object v2
.end method


# virtual methods
.method public Hw(I)I
    .registers 8

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_21

    invoke-virtual {p0, v3}, Labcd/Pm;->get(I)Labcd/Pm$a;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Pm$a;->DW()I

    move-result v5

    if-gt v5, p1, :cond_1e

    if-le v5, v2, :cond_1e

    invoke-virtual {v4}, Labcd/Pm$a;->j6()I

    move-result v1

    if-ne v5, p1, :cond_1d

    goto :goto_21

    :cond_1d
    move v2, v5

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_21
    :goto_21
    return v1
.end method

.method public get(I)Labcd/Pm$a;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Pm$a;

    return-object p1
.end method

.method public j6(III)V
    .registers 5

    new-instance v0, Labcd/Pm$a;

    invoke-direct {v0, p2, p3}, Labcd/Pm$a;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(ILabcd/Pm$a;)V
    .registers 3

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
