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
    .registers 7

    invoke-virtual {p0}, Labcd/Jm$a;->DW()Labcd/Ks;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p2, :cond_19

    aget-object v2, p1, v1

    invoke-virtual {v2}, Labcd/Jm$a;->DW()Labcd/Ks;

    move-result-object v2

    if-eq v2, p0, :cond_18

    sget-object v3, Labcd/Ks;->DW:Labcd/Ks;

    if-ne v2, v3, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    :goto_18
    return v0

    :cond_19
    const/4 p0, 0x1

    return p0
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

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    new-array v1, v0, [Labcd/Jm$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v3, v0, :cond_22

    invoke-virtual {p0, v3}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v5

    invoke-virtual {v5, p1}, Labcd/Jm$a;->j6(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-static {v5, v1, v4}, Labcd/Jm;->j6(Labcd/Jm$a;[Labcd/Jm$a;I)Z

    move-result v6

    if-eqz v6, :cond_1f

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_22
    if-nez v4, :cond_27

    sget-object p1, Labcd/Jm;->FH:Labcd/Jm;

    return-object p1

    :cond_27
    new-instance p1, Labcd/Jm;

    invoke-direct {p1, v4}, Labcd/Jm;-><init>(I)V

    :goto_2c
    if-ge v2, v4, :cond_36

    aget-object v0, v1, v2

    invoke-virtual {p1, v2, v0}, Labcd/Jm;->j6(ILabcd/Jm$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_36
    invoke-virtual {p1}, Labcd/hu;->we()V

    return-object p1
.end method

.method public get(I)Labcd/Jm$a;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Jm$a;

    return-object p1
.end method

.method public j6(IIIILabcd/Ks;)V
    .registers 7

    new-instance v0, Labcd/Jm$a;

    invoke-direct {v0, p2, p3, p4, p5}, Labcd/Jm$a;-><init>(IIILabcd/Ks;)V

    invoke-virtual {p0, p1, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(ILabcd/Jm$a;)V
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

.method public rN()Labcd/Ss;
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Labcd/Ps;->FH:Labcd/Ps;

    return-object v0

    :cond_9
    new-instance v1, Labcd/Ps;

    invoke-direct {v1, v0}, Labcd/Ps;-><init>(I)V

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_23

    invoke-virtual {p0, v2}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Jm$a;->DW()Labcd/Ks;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labcd/Ps;->j6(ILabcd/Qs;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_23
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1
.end method

.method public v5(I)Labcd/au;
    .registers 7

    const/4 v0, -0x1

    if-lt p1, v0, :cond_39

    const/4 v0, 0x0

    if-ltz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v2

    if-nez v2, :cond_19

    if-eqz v1, :cond_16

    invoke-static {p1}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object p1

    return-object p1

    :cond_16
    sget-object p1, Labcd/au;->DW:Labcd/au;

    return-object p1

    :cond_19
    new-instance v3, Labcd/au;

    add-int v4, v2, v1

    invoke-direct {v3, v4}, Labcd/au;-><init>(I)V

    :goto_20
    if-ge v0, v2, :cond_30

    invoke-virtual {p0, v0}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Jm$a;->FH()I

    move-result v4

    invoke-virtual {v3, v4}, Labcd/au;->DW(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_30
    if-eqz v1, :cond_35

    invoke-virtual {v3, p1}, Labcd/au;->DW(I)V

    :cond_35
    invoke-virtual {v3}, Labcd/hu;->we()V

    return-object v3

    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "noException < -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :goto_41
    throw p1

    :goto_42
    goto :goto_41
.end method
