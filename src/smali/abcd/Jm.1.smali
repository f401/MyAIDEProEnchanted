.class public final Labcd/Jm;
.super Labcd/Xt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Jm$a;
    }
.end annotation


# static fields
.field public static final FH:Labcd/Jm;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/Jm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Jm;-><init>(I)V

    sput-object v0, Labcd/Jm;->FH:Labcd/Jm;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method

.method private static j6(Labcd/Jm$a;[Labcd/Jm$a;I)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/Jm$a;->DW()Labcd/Ks;

    move-result-object v2

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Labcd/Jm$a;->DW()Labcd/Ks;

    move-result-object v3

    if-eq v3, v2, :cond_0

    sget-object v4, Labcd/Ks;->DW:Labcd/Ks;

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public Hw()I
    .registers 2

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Hw(I)Labcd/Jm;
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    new-array v4, v3, [Labcd/Jm$a;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v5

    invoke-virtual {v5, p1}, Labcd/Jm$a;->j6(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5, v4, v0}, Labcd/Jm;->j6(Labcd/Jm$a;[Labcd/Jm$a;I)Z

    move-result v6

    if-eqz v6, :cond_0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Labcd/Jm;->FH:Labcd/Jm;

    :goto_1
    return-object v0

    :cond_2
    new-instance v1, Labcd/Jm;

    invoke-direct {v1, v0}, Labcd/Jm;-><init>(I)V

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v3, v4, v2

    invoke-virtual {v1, v2, v3}, Labcd/Jm;->j6(ILabcd/Jm$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Labcd/hu;->we()V

    move-object v0, v1

    goto :goto_1
.end method

.method public get(I)Labcd/Jm$a;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Jm$a;

    return-object v0
.end method

.method public j6(IIIILabcd/Ks;)V
    .registers 7

    new-instance v0, Labcd/Jm$a;

    invoke-direct {v0, p2, p3, p4, p5}, Labcd/Jm$a;-><init>(IIILabcd/Ks;)V

    invoke-virtual {p0, p1, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(ILabcd/Jm$a;)V
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

.method public rN()Labcd/Ss;
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Labcd/Ps;->FH:Labcd/Ps;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/Ps;

    invoke-direct {v0, v2}, Labcd/Ps;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Jm$a;->DW()Labcd/Ks;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Labcd/Ps;->j6(ILabcd/Qs;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Labcd/hu;->we()V

    goto :goto_0
.end method

.method public v5(I)Labcd/au;
    .registers 7

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_5

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    invoke-static {p1}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Labcd/au;->DW:Labcd/au;

    goto :goto_1

    :cond_2
    new-instance v2, Labcd/au;

    add-int v4, v3, v0

    invoke-direct {v2, v4}, Labcd/au;-><init>(I)V

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Jm$a;->FH()I

    move-result v4

    invoke-virtual {v2, v4}, Labcd/au;->DW(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v2, p1}, Labcd/au;->DW(I)V

    :cond_4
    invoke-virtual {v2}, Labcd/hu;->we()V

    move-object v0, v2

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "noException < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
