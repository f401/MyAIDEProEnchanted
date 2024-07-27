.class Labcd/SF;
.super Labcd/XF;


# instance fields
.field private final DW:I

.field private final FH:Labcd/qG;

.field private final Hw:Labcd/fG;

.field private final j6:Labcd/UF;

.field private final v5:Labcd/fG;


# direct methods
.method constructor <init>(Labcd/TF;Labcd/XF;)V
    .registers 5

    invoke-direct {p0}, Labcd/XF;-><init>()V

    new-instance v0, Labcd/UF;

    invoke-direct {v0}, Labcd/UF;-><init>()V

    iput-object v0, p0, Labcd/SF;->j6:Labcd/UF;

    move-object v0, p1

    check-cast v0, Labcd/qG;

    iput-object v0, p0, Labcd/SF;->FH:Labcd/qG;

    invoke-interface {p1}, Labcd/TF;->getDepth()I

    move-result v0

    iput v0, p0, Labcd/SF;->DW:I

    invoke-interface {p1}, Labcd/TF;->DW()Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/SF;->Hw:Labcd/fG;

    invoke-interface {p1}, Labcd/TF;->j6()Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/SF;->v5:Labcd/fG;

    iget-object v0, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {p2, v0}, Labcd/XF;->j6(Labcd/OF;)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v0, v1

    check-cast v0, Labcd/TF$a;

    invoke-virtual {v0}, Labcd/TF$a;->BT()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {v0, v1}, Labcd/UF;->j6(Labcd/dG;)V

    goto :goto_0
.end method


# virtual methods
.method DW()I
    .registers 2

    iget-object v0, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {v0}, Labcd/LF;->DW()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    return v0
.end method

.method j6()Labcd/dG;
    .registers 12

    const/4 v4, 0x0

    :cond_0
    iget-object v0, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {v0}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v0

    check-cast v0, Labcd/TF$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v1, v0, Labcd/iG;->EQ:I

    const/4 v3, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/SF;->FH:Labcd/qG;

    invoke-virtual {v0, v1}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_2
    iget v1, v0, Labcd/TF$a;->aM:I

    add-int/lit8 v6, v1, 0x1

    iget-object v7, v0, Labcd/dG;->J8:[Labcd/dG;

    array-length v8, v7

    move v5, v4

    :goto_1
    if-lt v5, v8, :cond_5

    iget v1, v0, Labcd/TF$a;->aM:I

    iget v2, p0, Labcd/SF;->DW:I

    if-gt v1, v2, :cond_4

    move v1, v3

    :goto_2
    iget v2, v0, Labcd/iG;->EQ:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    iget-object v2, p0, Labcd/SF;->Hw:Labcd/fG;

    invoke-virtual {v0, v2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v4

    :cond_3
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    aget-object v2, v7, v5

    move-object v1, v2

    check-cast v1, Labcd/TF$a;

    iget v9, v1, Labcd/TF$a;->aM:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    iput v6, v1, Labcd/TF$a;->aM:I

    iget v1, p0, Labcd/SF;->DW:I

    if-gt v6, v1, :cond_6

    iget-object v1, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {v1, v2}, Labcd/UF;->j6(Labcd/dG;)V

    :cond_6
    iget-object v1, p0, Labcd/SF;->Hw:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Labcd/SF;->v5:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Labcd/SF;->v5:Labcd/fG;

    invoke-virtual {v2, v1}, Labcd/iG;->j6(Labcd/fG;)V

    iget v1, v2, Labcd/iG;->EQ:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v2, Labcd/iG;->EQ:I

    :cond_8
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1
.end method

.method j6(Labcd/OF;)V
    .registers 3

    iget-object v0, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {v0, p1}, Labcd/OF;->j6(Labcd/OF;)V

    return-void
.end method
