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

    move-result v2

    new-instance v3, Labcd/Qm;

    invoke-direct {v3, v2}, Labcd/Qm;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Labcd/Qm;->get(I)Labcd/Qm$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/Qm;->j6(Labcd/Qm$a;)Labcd/Qm$a;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Labcd/Qm$a;->j6(Labcd/Qm$a;)Labcd/Js;

    move-result-object v4

    invoke-virtual {v0, v4}, Labcd/Qm$a;->j6(Labcd/Js;)Labcd/Qm$a;

    move-result-object v0

    :cond_0
    invoke-virtual {v3, v1, v0}, Labcd/Qm;->j6(ILabcd/Qm$a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Labcd/hu;->we()V

    return-object v3
.end method

.method public static j6(Labcd/Qm;Labcd/Qm;)Labcd/Qm;
    .registers 8

    const/4 v1, 0x0

    sget-object v0, Labcd/Qm;->FH:Labcd/Qm;

    if-ne p0, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v4

    new-instance v0, Labcd/Qm;

    add-int v2, v3, v4

    invoke-direct {v0, v2}, Labcd/Qm;-><init>(I)V

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Labcd/Qm;->get(I)Labcd/Qm$a;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Labcd/Qm;->j6(ILabcd/Qm$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v1, v4, :cond_2

    add-int v2, v3, v1

    invoke-virtual {p1, v1}, Labcd/Qm;->get(I)Labcd/Qm$a;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Labcd/Qm;->j6(ILabcd/Qm$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Labcd/hu;->we()V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public get(I)Labcd/Qm$a;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qm$a;

    return-object v0
.end method

.method public j6(II)Labcd/Qm$a;
    .registers 7

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qm$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Labcd/Qm$a;->j6(II)Z

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

.method public j6(Labcd/Qm$a;)Labcd/Qm$a;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qm$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Labcd/Qm$a;->DW(Labcd/Qm$a;)Z

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

.method public j6(IIILabcd/Js;Labcd/Js;Labcd/Js;I)V
    .registers 15

    new-instance v0, Labcd/Qm$a;

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Labcd/Qm$a;-><init>(IILabcd/Js;Labcd/Js;Labcd/Js;I)V

    invoke-virtual {p0, p1, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(ILabcd/Qm$a;)V
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
