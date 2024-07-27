.class public Labcd/lH;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[I

.field private final FH:[J

.field private final Hw:[I

.field private final j6:Labcd/bH;

.field private final v5:[I


# direct methods
.method public constructor <init>(Labcd/bH;)V
    .registers 14

    const/4 v2, 0x0

    const-wide/32 v10, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/lH;->j6:Labcd/bH;

    iget-object v0, p0, Labcd/lH;->j6:Labcd/bH;

    invoke-virtual {v0}, Labcd/bH;->j6()J

    move-result-wide v0

    iget-object v3, p0, Labcd/lH;->j6:Labcd/bH;

    invoke-virtual {v3}, Labcd/bH;->DW()J

    move-result-wide v4

    sub-long v6, v0, v4

    cmp-long v3, v6, v10

    if-gtz v3, :cond_4

    cmp-long v3, v4, v10

    if-gtz v3, :cond_4

    const-wide v8, 0xffffffffL

    cmp-long v0, v0, v8

    if-gtz v0, :cond_4

    long-to-int v0, v6

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/lH;->DW:[I

    long-to-int v0, v4

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/lH;->FH:[J

    iget-object v0, p0, Labcd/lH;->DW:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/lH;->Hw:[I

    iget-object v0, p0, Labcd/lH;->FH:[J

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/lH;->v5:[I

    iget-object v0, p0, Labcd/lH;->j6:Labcd/bH;

    invoke-virtual {v0}, Labcd/bH;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/lH;->DW:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    iget-object v0, p0, Labcd/lH;->FH:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    iget-object v0, p0, Labcd/lH;->j6:Labcd/bH;

    invoke-virtual {v0}, Labcd/bH;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bH$b;

    invoke-virtual {v0}, Labcd/bH$b;->j6()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-gez v0, :cond_1

    iget-object v3, p0, Labcd/lH;->Hw:[I

    iget-object v0, p0, Labcd/lH;->DW:[I

    long-to-int v4, v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    add-int/lit8 v0, v2, 0x1

    aput v2, v3, v4

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Labcd/lH;->v5:[I

    iget-object v0, p0, Labcd/lH;->FH:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    add-int/lit8 v0, v2, 0x1

    aput v2, v3, v4

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bH$b;

    invoke-virtual {v0}, Labcd/bH$b;->j6()J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-gez v0, :cond_3

    iget-object v0, p0, Labcd/lH;->DW:[I

    long-to-int v5, v6

    aput v5, v0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/lH;->FH:[J

    aput-wide v6, v0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->hugeIndexesAreNotSupportedByJgitYet:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public j6(JJ)J
    .registers 10

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Labcd/lH;->DW:[I

    long-to-int v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/lH;->DW:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Labcd/lH;->FH:[J

    array-length v1, v0

    if-lez v1, :cond_0

    aget-wide p3, v0, v4

    :cond_0
    :goto_0
    return-wide p3

    :cond_1
    aget v0, v1, v0

    int-to-long p3, v0

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cantFindObjectInReversePackIndexForTheSpecifiedOffset:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Labcd/lH;->FH:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/lH;->FH:[J

    array-length v2, v1

    if-eq v0, v2, :cond_0

    aget-wide p3, v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cantFindObjectInReversePackIndexForTheSpecifiedOffset:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(J)Labcd/yE;
    .registers 8

    const/4 v0, 0x0

    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Labcd/lH;->DW:[I

    long-to-int v2, p1

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/lH;->j6:Labcd/bH;

    iget-object v2, p0, Labcd/lH;->Hw:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Labcd/bH;->v5(I)Labcd/yE;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Labcd/lH;->FH:[J

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Labcd/lH;->j6:Labcd/bH;

    iget-object v2, p0, Labcd/lH;->v5:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Labcd/bH;->v5(I)Labcd/yE;

    move-result-object v0

    goto :goto_0
.end method
