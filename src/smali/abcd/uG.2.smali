.class Labcd/uG;
.super Labcd/XF;


# instance fields
.field private final DW:I

.field private final j6:Labcd/UF;


# direct methods
.method constructor <init>(Labcd/XF;)V
    .registers 8

    invoke-direct {p0}, Labcd/XF;-><init>()V

    new-instance v0, Labcd/UF;

    invoke-direct {v0}, Labcd/UF;-><init>()V

    iput-object v0, p0, Labcd/uG;->j6:Labcd/UF;

    invoke-virtual {p1}, Labcd/XF;->DW()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Labcd/uG;->DW:I

    iget-object v0, p0, Labcd/uG;->j6:Labcd/UF;

    invoke-virtual {p1, v0}, Labcd/XF;->j6(Labcd/OF;)V

    :goto_0
    invoke-virtual {p1}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Labcd/dG;->J8:[Labcd/dG;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    iget-object v0, p0, Labcd/uG;->j6:Labcd/UF;

    invoke-virtual {v0, v1}, Labcd/UF;->j6(Labcd/dG;)V

    goto :goto_0

    :cond_1
    aget-object v4, v2, v0

    iget v5, v4, Labcd/dG;->QX:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Labcd/dG;->QX:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method DW()I
    .registers 2

    iget v0, p0, Labcd/uG;->DW:I

    return v0
.end method

.method j6()Labcd/dG;
    .registers 8

    :goto_0
    iget-object v0, p0, Labcd/uG;->j6:Labcd/UF;

    invoke-virtual {v0}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget v1, v0, Labcd/dG;->QX:I

    if-lez v1, :cond_2

    iget v1, v0, Labcd/iG;->EQ:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Labcd/iG;->EQ:I

    goto :goto_0

    :cond_2
    iget-object v2, v0, Labcd/dG;->J8:[Labcd/dG;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget v5, v4, Labcd/dG;->QX:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Labcd/dG;->QX:I

    if-nez v5, :cond_3

    iget v5, v4, Labcd/iG;->EQ:I

    and-int/lit8 v6, v5, 0x20

    if-eqz v6, :cond_3

    and-int/lit8 v5, v5, -0x21

    iput v5, v4, Labcd/iG;->EQ:I

    iget-object v5, p0, Labcd/uG;->j6:Labcd/UF;

    invoke-virtual {v5, v4}, Labcd/UF;->DW(Labcd/dG;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method j6(Labcd/OF;)V
    .registers 3

    iget-object v0, p0, Labcd/uG;->j6:Labcd/UF;

    invoke-virtual {p1, v0}, Labcd/OF;->j6(Labcd/OF;)V

    return-void
.end method
