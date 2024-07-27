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

    if-le v1, v2, :cond_1

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    iget v1, p1, Labcd/iG;->EQ:I

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    array-length v1, v0

    if-nez v1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0
.end method

.method private j6([Labcd/dG;)[Labcd/dG;
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_4

    array-length v2, p1

    if-ne v0, v2, :cond_1

    array-length v0, p1

    :goto_1
    if-lt v1, v0, :cond_0

    :goto_2
    return-object p1

    :cond_0
    aget-object v2, p1, v1

    iget v3, v2, Labcd/iG;->EQ:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Labcd/iG;->EQ:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v0, [Labcd/dG;

    array-length v4, p1

    move v3, v1

    move v0, v1

    :goto_3
    if-lt v3, v4, :cond_2

    move-object p1, v2

    goto :goto_2

    :cond_2
    aget-object v1, p1, v3

    if-eqz v1, :cond_3

    aput-object v1, v2, v0

    iget v5, v1, Labcd/iG;->EQ:I

    and-int/lit8 v5, v5, -0x11

    iput v5, v1, Labcd/iG;->EQ:I

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_4
    aget-object v3, p1, v2

    if-nez v3, :cond_5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget v4, v3, Labcd/iG;->EQ:I

    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_6

    const/4 v3, 0x0

    aput-object v3, p1, v2

    goto :goto_4

    :cond_6
    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Labcd/iG;->EQ:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
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

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/rG;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, v1, Labcd/dG;->J8:[Labcd/dG;

    array-length v5, v4

    move v0, v2

    move v3, v2

    :goto_1
    if-lt v3, v5, :cond_2

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Labcd/rG;->j6([Labcd/dG;)[Labcd/dG;

    move-result-object v0

    iput-object v0, v1, Labcd/dG;->J8:[Labcd/dG;

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v2, v4, v3

    invoke-direct {p0, v2}, Labcd/rG;->j6(Labcd/dG;)Labcd/dG;

    move-result-object v6

    if-eq v2, v6, :cond_3

    aput-object v6, v4, v3

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1
.end method

.method j6(Labcd/OF;)V
    .registers 3

    iget-object v0, p0, Labcd/rG;->j6:Labcd/XF;

    invoke-virtual {v0, p1}, Labcd/XF;->j6(Labcd/OF;)V

    return-void
.end method
