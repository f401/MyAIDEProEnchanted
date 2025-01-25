.class Labcd/rG;
.super Labcd/XF;


# instance fields
.field private final j6:Labcd/XF;


# direct methods
.method constructor <init>(Labcd/XF;)V
    .registers 2

    invoke-direct {p0}, Labcd/XF;-><init>()V

    iput-object p1, p0, Labcd/rG;->j6:Labcd/XF;

    return-void
.end method

.method private j6(Labcd/dG;)Labcd/dG;
    .registers 5

    :goto_0
    iget-object v0, p1, Labcd/dG;->J8:[Labcd/dG;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    return-object p1

    :cond_7
    iget v1, p1, Labcd/iG;->EQ:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_e

    return-object p1

    :cond_e
    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_13

    return-object p1

    :cond_13
    array-length p1, v0

    if-nez p1, :cond_18

    const/4 p1, 0x0

    return-object p1

    :cond_18
    const/4 p1, 0x0

    aget-object p1, v0, p1

    goto :goto_0
.end method

.method private j6([Labcd/dG;)[Labcd/dG;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    array-length v3, p1

    if-lt v1, v3, :cond_30

    array-length v1, p1

    if-ne v2, v1, :cond_18

    array-length v1, p1

    :goto_a
    if-lt v0, v1, :cond_d

    return-object p1

    :cond_d
    aget-object v2, p1, v0

    iget v3, v2, Labcd/iG;->EQ:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Labcd/iG;->EQ:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    new-array v3, v2, [Labcd/dG;

    array-length v4, p1

    const/4 v1, 0x0

    :goto_1c
    if-lt v0, v4, :cond_1f

    return-object v3

    :cond_1f
    aget-object v2, p1, v0

    if-eqz v2, :cond_2d

    aput-object v2, v3, v1

    iget v5, v2, Labcd/iG;->EQ:I

    and-int/lit8 v5, v5, -0x11

    iput v5, v2, Labcd/iG;->EQ:I

    add-int/lit8 v1, v1, 0x1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_30
    aget-object v3, p1, v1

    if-nez v3, :cond_35

    goto :goto_45

    :cond_35
    iget v4, v3, Labcd/iG;->EQ:I

    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_3f

    const/4 v3, 0x0

    aput-object v3, p1, v1

    goto :goto_45

    :cond_3f
    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Labcd/iG;->EQ:I

    add-int/lit8 v2, v2, 0x1

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method DW()I
    .registers 2

    iget-object v0, p0, Labcd/rG;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->DW()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method j6()Labcd/dG;
    .registers 8

    iget-object v0, p0, Labcd/rG;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v1, v0, Labcd/dG;->J8:[Labcd/dG;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-lt v3, v2, :cond_1a

    if-eqz v4, :cond_19

    invoke-direct {p0, v1}, Labcd/rG;->j6([Labcd/dG;)[Labcd/dG;

    move-result-object v1

    iput-object v1, v0, Labcd/dG;->J8:[Labcd/dG;

    :cond_19
    return-object v0

    :cond_1a
    aget-object v5, v1, v3

    invoke-direct {p0, v5}, Labcd/rG;->j6(Labcd/dG;)Labcd/dG;

    move-result-object v6

    if-eq v5, v6, :cond_25

    aput-object v6, v1, v3

    const/4 v4, 0x1

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_f
.end method

.method j6(Labcd/OF;)V
    .registers 3

    iget-object v0, p0, Labcd/rG;->j6:Labcd/XF;

    invoke-virtual {v0, p1}, Labcd/XF;->j6(Labcd/OF;)V

    return-void
.end method
