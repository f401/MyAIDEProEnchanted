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
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/lH;->j6:Labcd/bH;

    invoke-virtual {p1}, Labcd/bH;->j6()J

    move-result-wide v0

    invoke-virtual {p1}, Labcd/bH;->DW()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_a2

    cmp-long v8, v2, v6

    if-gtz v8, :cond_a2

    const-wide v8, 0xffffffffL

    cmp-long v10, v0, v8

    if-gtz v10, :cond_a2

    long-to-int v0, v4

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/lH;->DW:[I

    long-to-int v1, v2

    new-array v1, v1, [J

    iput-object v1, p0, Labcd/lH;->FH:[J

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/lH;->Hw:[I

    array-length v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/lH;->v5:[I

    invoke-virtual {p1}, Labcd/bH;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_85

    iget-object p1, p0, Labcd/lH;->DW:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iget-object p1, p0, Labcd/lH;->FH:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    iget-object p1, p0, Labcd/lH;->j6:Labcd/bH;

    invoke-virtual {p1}, Labcd/bH;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_5b

    return-void

    :cond_5b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/bH$b;

    invoke-virtual {p1}, Labcd/bH$b;->j6()J

    move-result-wide v1

    cmp-long p1, v1, v6

    if-gez p1, :cond_77

    iget-object p1, p0, Labcd/lH;->Hw:[I

    iget-object v4, p0, Labcd/lH;->DW:[I

    long-to-int v2, v1

    invoke-static {v4, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    aput v0, p1, v1

    goto :goto_83

    :cond_77
    iget-object p1, p0, Labcd/lH;->v5:[I

    iget-object v4, p0, Labcd/lH;->FH:[J

    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    aput v0, p1, v1

    :goto_83
    move v0, v2

    goto :goto_54

    :cond_85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/bH$b;

    invoke-virtual {v3}, Labcd/bH$b;->j6()J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-gez v5, :cond_9b

    iget-object v5, p0, Labcd/lH;->DW:[I

    long-to-int v4, v3

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_9b
    iget-object v5, p0, Labcd/lH;->FH:[J

    aput-wide v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_a2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->hugeIndexesAreNotSupportedByJgitYet:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_af

    :goto_ae
    throw p1

    :goto_af
    goto :goto_ae
.end method


# virtual methods
.method public j6(JJ)J
    .registers 10

    const-wide/32 v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-gtz v4, :cond_3d

    iget-object v0, p0, Labcd/lH;->DW:[I

    long-to-int v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_25

    add-int/2addr v0, v3

    iget-object p1, p0, Labcd/lH;->DW:[I

    array-length p2, p1

    if-ne v0, p2, :cond_21

    iget-object p1, p0, Labcd/lH;->FH:[J

    array-length p2, p1

    if-lez p2, :cond_20

    aget-wide p2, p1, v2

    return-wide p2

    :cond_20
    return-wide p3

    :cond_21
    aget p1, p1, v0

    int-to-long p1, p1

    return-wide p1

    :cond_25
    new-instance p3, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p4

    iget-object p4, p4, Lorg/eclipse/jgit/JGitText;->cantFindObjectInReversePackIndexForTheSpecifiedOffset:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_3d
    iget-object v0, p0, Labcd/lH;->FH:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_4f

    add-int/2addr v0, v3

    iget-object p1, p0, Labcd/lH;->FH:[J

    array-length p2, p1

    if-ne v0, p2, :cond_4c

    return-wide p3

    :cond_4c
    aget-wide p2, p1, v0

    return-wide p2

    :cond_4f
    new-instance p3, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p4

    iget-object p4, p4, Lorg/eclipse/jgit/JGitText;->cantFindObjectInReversePackIndexForTheSpecifiedOffset:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public j6(J)Labcd/yE;
    .registers 7

    const-wide/32 v0, 0x7fffffff

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_1d

    iget-object v0, p0, Labcd/lH;->DW:[I

    long-to-int p2, p1

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_12

    return-object v2

    :cond_12
    iget-object p2, p0, Labcd/lH;->j6:Labcd/bH;

    iget-object v0, p0, Labcd/lH;->Hw:[I

    aget p1, v0, p1

    :goto_18
    invoke-virtual {p2, p1}, Labcd/bH;->v5(I)Labcd/yE;

    move-result-object p1

    return-object p1

    :cond_1d
    iget-object v0, p0, Labcd/lH;->FH:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_26

    return-object v2

    :cond_26
    iget-object p2, p0, Labcd/lH;->j6:Labcd/bH;

    iget-object v0, p0, Labcd/lH;->v5:[I

    aget p1, v0, p1

    goto :goto_18
.end method
