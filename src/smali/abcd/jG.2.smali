.class public Labcd/jG;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Labcd/iG;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected DW:I

.field protected j6:Labcd/jG$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Labcd/jG$a;

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

    :goto_0
    iget v1, v0, Labcd/jG$a;->DW:I

    shr-int v2, p1, v1

    const/16 v3, 0x100

    if-ge v2, v3, :cond_2

    :goto_1
    iget v1, v0, Labcd/jG$a;->DW:I

    if-gtz v1, :cond_0

    iget-object v1, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object v0, v1, p1

    aput-object p2, v1, p1

    check-cast v0, Labcd/iG;

    return-object v0

    :cond_0
    shr-int v2, p1, v1

    shl-int v3, v2, v1

    sub-int/2addr p1, v3

    iget-object v3, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_1

    new-instance v4, Labcd/jG$a;

    add-int/lit8 v1, v1, -0x8

    invoke-direct {v4, v1}, Labcd/jG$a;-><init>(I)V

    aput-object v4, v3, v2

    :cond_1
    iget-object v0, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Labcd/jG$a;

    goto :goto_1

    :cond_2
    new-instance v0, Labcd/jG$a;

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Labcd/jG$a;-><init>(I)V

    iget-object v1, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Labcd/jG;->j6:Labcd/jG$a;

    aput-object v3, v1, v2

    iput-object v0, p0, Labcd/jG;->j6:Labcd/jG$a;

    goto :goto_0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Labcd/iG;

    invoke-virtual {p0, p1, p2}, Labcd/jG;->j6(ILabcd/iG;)V

    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Labcd/jG$a;

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

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/jG;->j6:Labcd/jG$a;

    iget v2, v0, Labcd/jG$a;->DW:I

    shr-int v2, p1, v2

    const/16 v3, 0x400

    if-lt v2, v3, :cond_1

    :goto_0
    return-object v1

    :cond_0
    shr-int v3, p1, v2

    shl-int v2, v3, v2

    sub-int/2addr p1, v2

    iget-object v0, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Labcd/jG$a;

    :cond_1
    if-eqz v0, :cond_2

    iget v2, v0, Labcd/jG$a;->DW:I

    if-gtz v2, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, v0, Labcd/jG$a;->j6:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Labcd/iG;

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/jG;->get(I)Labcd/iG;

    move-result-object v0

    return-object v0
.end method

.method public j6(ILabcd/iG;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Labcd/jG;->DW:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Labcd/jG;->DW(ILabcd/iG;)Labcd/iG;

    iget v0, p0, Labcd/jG;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/jG;->DW:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedOperationNotAddAtEnd:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Labcd/iG;

    invoke-virtual {p0, p1, p2}, Labcd/jG;->DW(ILabcd/iG;)Labcd/iG;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/jG;->DW:I

    return v0
.end method
