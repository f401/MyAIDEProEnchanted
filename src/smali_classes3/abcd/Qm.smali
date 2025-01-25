.class public final Labcd/Qm;
.super Labcd/Xt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Qm$a;
    }
.end annotation


# static fields
.field public static final FH:Labcd/Qm;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/Qm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Qm;-><init>(I)V

    sput-object v0, Labcd/Qm;->FH:Labcd/Qm;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method

.method public static DW(Labcd/Qm;Labcd/Qm;)Labcd/Qm;
    .registers 7

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Labcd/Qm;

    invoke-direct {v1, v0}, Labcd/Qm;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_24

    invoke-virtual {p0, v2}, Labcd/Qm;->get(I)Labcd/Qm$a;

    move-result-object v3

    invoke-virtual {p1, v3}, Labcd/Qm;->j6(Labcd/Qm$a;)Labcd/Qm$a;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-static {v4}, Labcd/Qm$a;->j6(Labcd/Qm$a;)Labcd/Js;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/Qm$a;->j6(Labcd/Js;)Labcd/Qm$a;

    move-result-object v3

    :cond_1e
    invoke-virtual {v1, v2, v3}, Labcd/Qm;->j6(ILabcd/Qm$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_24
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1
.end method

.method public static j6(Labcd/Qm;Labcd/Qm;)Labcd/Qm;
    .registers 8

    sget-object v0, Labcd/Qm;->FH:Labcd/Qm;

    if-ne p0, v0, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v1

    new-instance v2, Labcd/Qm;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Labcd/Qm;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v0, :cond_22

    invoke-virtual {p0, v4}, Labcd/Qm;->get(I)Labcd/Qm$a;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Labcd/Qm;->j6(ILabcd/Qm$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_22
    :goto_22
    if-ge v3, v1, :cond_30

    add-int p0, v0, v3

    invoke-virtual {p1, v3}, Labcd/Qm;->get(I)Labcd/Qm$a;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Labcd/Qm;->j6(ILabcd/Qm$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_30
    invoke-virtual {v2}, Labcd/hu;->we()V

    return-object v2
.end method


# virtual methods
.method public get(I)Labcd/Qm$a;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Qm$a;

    return-object p1
.end method

.method public j6(II)Labcd/Qm$a;
    .registers 7

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    invoke-virtual {p0, v1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Qm$a;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1, p2}, Labcd/Qm$a;->j6(II)Z

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

.method public j6(Labcd/Qm$a;)Labcd/Qm$a;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    invoke-virtual {p0, v1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Qm$a;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1}, Labcd/Qm$a;->DW(Labcd/Qm$a;)Z

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

.method public j6(IIILabcd/Js;Labcd/Js;Labcd/Js;I)V
    .registers 16

    new-instance v7, Labcd/Qm$a;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Labcd/Qm$a;-><init>(IILabcd/Js;Labcd/Js;Labcd/Js;I)V

    invoke-virtual {p0, p1, v7}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(ILabcd/Qm$a;)V
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
