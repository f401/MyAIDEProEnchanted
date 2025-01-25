.class public Labcd/jG;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Labcd/iG;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected DW:I

.field protected j6:Labcd/jG$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Labcd/jG$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/jG$a;-><init>(I)V

    iput-object v0, p0, Labcd/jG;->j6:Labcd/jG$a;

    iput v1, p0, Labcd/jG;->DW:I

    return-void
.end method


# virtual methods
.method public DW(ILabcd/iG;)Labcd/iG;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Labcd/jG;->j6:Labcd/jG$a;

    :goto_2
    iget v1, v0, Labcd/jG$a;->DW:I

    shr-int v2, p1, v1

    const/16 v3, 0x100

    if-ge v2, v3, :cond_32

    :goto_a
    iget v1, v0, Labcd/jG$a;->DW:I

    if-gtz v1, :cond_17

    iget-object v0, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    check-cast v1, Labcd/iG;

    return-object v1

    :cond_17
    shr-int v2, p1, v1

    shl-int v3, v2, v1

    sub-int/2addr p1, v3

    iget-object v3, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_2b

    new-instance v4, Labcd/jG$a;

    add-int/lit8 v1, v1, -0x8

    invoke-direct {v4, v1}, Labcd/jG$a;-><init>(I)V

    aput-object v4, v3, v2

    :cond_2b
    iget-object v0, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Labcd/jG$a;

    goto :goto_a

    :cond_32
    new-instance v0, Labcd/jG$a;

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Labcd/jG$a;-><init>(I)V

    iget-object v1, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Labcd/jG;->j6:Labcd/jG$a;

    aput-object v3, v1, v2

    iput-object v0, p0, Labcd/jG;->j6:Labcd/jG$a;

    goto :goto_2
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Labcd/iG;

    invoke-virtual {p0, p1, p2}, Labcd/jG;->j6(ILabcd/iG;)V

    return-void
.end method

.method public clear()V
    .registers 3

    new-instance v0, Labcd/jG$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/jG$a;-><init>(I)V

    iput-object v0, p0, Labcd/jG;->j6:Labcd/jG$a;

    iput v1, p0, Labcd/jG;->DW:I

    return-void
.end method

.method public get(I)Labcd/iG;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Labcd/jG;->j6:Labcd/jG$a;

    iget v1, v0, Labcd/jG$a;->DW:I

    shr-int v1, p1, v1

    const/16 v2, 0x400

    const/4 v3, 0x0

    if-lt v1, v2, :cond_c

    return-object v3

    :cond_c
    :goto_c
    if-eqz v0, :cond_1f

    iget v1, v0, Labcd/jG$a;->DW:I

    if-gtz v1, :cond_13

    goto :goto_1f

    :cond_13
    shr-int v2, p1, v1

    shl-int v1, v2, v1

    sub-int/2addr p1, v1

    iget-object v0, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Labcd/jG$a;

    goto :goto_c

    :cond_1f
    :goto_1f
    if-eqz v0, :cond_28

    iget-object v0, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object p1, v0, p1

    move-object v3, p1

    check-cast v3, Labcd/iG;

    :cond_28
    return-object v3
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/jG;->get(I)Labcd/iG;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILabcd/iG;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Labcd/jG;->DW:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_e

    invoke-virtual {p0, p1, p2}, Labcd/jG;->DW(ILabcd/iG;)Labcd/iG;

    iget p1, p0, Labcd/jG;->DW:I

    add-int/2addr p1, v1

    iput p1, p0, Labcd/jG;->DW:I

    return-void

    :cond_e
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->unsupportedOperationNotAddAtEnd:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Labcd/iG;

    invoke-virtual {p0, p1, p2}, Labcd/jG;->DW(ILabcd/iG;)Labcd/iG;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/jG;->DW:I

    return v0
.end method
