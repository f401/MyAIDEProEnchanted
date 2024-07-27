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

    const/4 v1, 0x0

    sget-object v0, Labcd/Pm;->FH:Labcd/Pm;

    if-ne p0, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v4

    new-instance v0, Labcd/Pm;

    add-int v2, v3, v4

    invoke-direct {v0, v2}, Labcd/Pm;-><init>(I)V

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Labcd/Pm;->get(I)Labcd/Pm$a;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Labcd/Pm;->j6(ILabcd/Pm$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v1, v4, :cond_2

    add-int v2, v3, v1

    invoke-virtual {p1, v1}, Labcd/Pm;->get(I)Labcd/Pm$a;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Labcd/Pm;->j6(ILabcd/Pm$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public Hw(I)I
    .registers 8

    const/4 v0, -0x1

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v4

    const/4 v3, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Labcd/Pm;->get(I)Labcd/Pm$a;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Pm$a;->DW()I

    move-result v0

    if-gt v0, p1, :cond_1

    if-le v0, v1, :cond_1

    invoke-virtual {v5}, Labcd/Pm$a;->j6()I

    move-result v1

    if-ne v0, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    move v2, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public get(I)Labcd/Pm$a;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Pm$a;

    return-object v0
.end method

.method public j6(III)V
    .registers 5

    new-instance v0, Labcd/Pm$a;

    invoke-direct {v0, p2, p3}, Labcd/Pm$a;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(ILabcd/Pm$a;)V
    .registers 5

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
