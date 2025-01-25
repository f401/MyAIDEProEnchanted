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

    move-object v1, p1

    check-cast v1, Labcd/qG;

    iput-object v1, p0, Labcd/SF;->FH:Labcd/qG;

    invoke-interface {p1}, Labcd/TF;->getDepth()I

    move-result v1

    iput v1, p0, Labcd/SF;->DW:I

    invoke-interface {p1}, Labcd/TF;->DW()Labcd/fG;

    move-result-object v1

    iput-object v1, p0, Labcd/SF;->Hw:Labcd/fG;

    invoke-interface {p1}, Labcd/TF;->j6()Labcd/fG;

    move-result-object p1

    iput-object p1, p0, Labcd/SF;->v5:Labcd/fG;

    invoke-virtual {p2, v0}, Labcd/XF;->j6(Labcd/OF;)V

    :cond_24
    :goto_24
    invoke-virtual {p2}, Labcd/XF;->j6()Labcd/dG;

    move-result-object p1

    if-nez p1, :cond_2b

    return-void

    :cond_2b
    move-object v0, p1

    check-cast v0, Labcd/TF$a;

    invoke-virtual {v0}, Labcd/TF$a;->BT()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {v0, p1}, Labcd/UF;->j6(Labcd/dG;)V

    goto :goto_24
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

    :cond_0
    iget-object v0, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {v0}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v0

    check-cast v0, Labcd/TF$a;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    iget v1, v0, Labcd/iG;->EQ:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_17

    iget-object v1, p0, Labcd/SF;->FH:Labcd/qG;

    invoke-virtual {v0, v1}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_17
    iget v1, v0, Labcd/TF$a;->aM:I

    add-int/2addr v1, v2

    iget-object v3, v0, Labcd/dG;->J8:[Labcd/dG;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1f
    if-lt v6, v4, :cond_3c

    iget v1, v0, Labcd/TF$a;->aM:I

    iget v3, p0, Labcd/SF;->DW:I

    if-gt v1, v3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    iget v1, v0, Labcd/iG;->EQ:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_38

    iget-object v1, p0, Labcd/SF;->Hw:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_39

    :cond_38
    move v5, v2

    :goto_39
    if-eqz v5, :cond_0

    return-object v0

    :cond_3c
    aget-object v7, v3, v6

    move-object v8, v7

    check-cast v8, Labcd/TF$a;

    iget v9, v8, Labcd/TF$a;->aM:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_51

    iput v1, v8, Labcd/TF$a;->aM:I

    iget v8, p0, Labcd/SF;->DW:I

    if-gt v1, v8, :cond_51

    iget-object v8, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {v8, v7}, Labcd/UF;->j6(Labcd/dG;)V

    :cond_51
    iget-object v8, p0, Labcd/SF;->Hw:Labcd/fG;

    invoke-virtual {v0, v8}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v8

    if-nez v8, :cond_61

    iget-object v8, p0, Labcd/SF;->v5:Labcd/fG;

    invoke-virtual {v0, v8}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v8

    if-eqz v8, :cond_6c

    :cond_61
    iget-object v8, p0, Labcd/SF;->v5:Labcd/fG;

    invoke-virtual {v7, v8}, Labcd/iG;->j6(Labcd/fG;)V

    iget v8, v7, Labcd/iG;->EQ:I

    and-int/lit8 v8, v8, -0x5

    iput v8, v7, Labcd/iG;->EQ:I

    :cond_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f
.end method

.method j6(Labcd/OF;)V
    .registers 3

    iget-object v0, p0, Labcd/SF;->j6:Labcd/UF;

    invoke-virtual {v0, p1}, Labcd/OF;->j6(Labcd/OF;)V

    return-void
.end method
