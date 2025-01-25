.class public final Labcd/Ln;
.super Ljava/lang/Object;


# static fields
.field public static DW:I

.field public static FH:I

.field public static Hw:I

.field public static VH:I

.field public static Zo:I

.field public static j6:I

.field public static v5:I


# direct methods
.method public static j6(I)V
    .registers 2

    sget v0, Labcd/Ln;->VH:I

    add-int/2addr v0, p0

    sput v0, Labcd/Ln;->VH:I

    return-void
.end method

.method public static j6(Labcd/Un;Labcd/Un;)V
    .registers 5

    sget v0, Labcd/Ln;->v5:I

    invoke-virtual {p1}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Wn;->rN()I

    move-result v1

    invoke-virtual {p0}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Wn;->rN()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    sput v0, Labcd/Ln;->v5:I

    sget v0, Labcd/Ln;->Hw:I

    invoke-virtual {p1}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Wn;->yS()I

    move-result v1

    invoke-virtual {p0}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object p0

    invoke-virtual {p0}, Labcd/Wn;->yS()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    sput v0, Labcd/Ln;->Hw:I

    sget p0, Labcd/Ln;->Zo:I

    invoke-virtual {p1}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Wn;->rN()I

    move-result p1

    add-int/2addr p0, p1

    sput p0, Labcd/Ln;->Zo:I

    return-void
.end method

.method public static j6(Labcd/fs;Labcd/fs;)V
    .registers 5

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Or;->er()I

    move-result v0

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p0

    invoke-virtual {p0}, Labcd/Or;->BT()I

    move-result p0

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Or;->er()I

    move-result v1

    sget v2, Labcd/Ln;->DW:I

    sub-int v0, v1, v0

    add-int/2addr v2, v0

    sput v2, Labcd/Ln;->DW:I

    sget v0, Labcd/Ln;->j6:I

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Or;->BT()I

    move-result p1

    sub-int/2addr p1, p0

    add-int/2addr v0, p1

    sput v0, Labcd/Ln;->j6:I

    sget p0, Labcd/Ln;->FH:I

    add-int/2addr p0, v1

    sput p0, Labcd/Ln;->FH:I

    return-void
.end method
