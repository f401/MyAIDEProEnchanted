.class Labcd/fH;
.super Labcd/bH;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/fH$a;
    }
.end annotation


# static fields
.field private static final DW:[I

.field private static final FH:[B


# instance fields
.field private Hw:J

.field private VH:[[B

.field private Zo:[[I

.field private gn:[[B

.field private u7:[B

.field private final v5:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Labcd/fH;->DW:[I

    new-array v0, v1, [B

    sput-object v0, Labcd/fH;->FH:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .registers 13

    const/16 v10, 0x100

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/bH;-><init>()V

    const/16 v0, 0x400

    new-array v2, v0, [B

    array-length v0, v2

    invoke-static {p1, v2, v1, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    new-array v0, v10, [J

    iput-object v0, p0, Labcd/fH;->v5:[J

    move v0, v1

    :goto_0
    if-lt v0, v10, :cond_a

    iget-object v0, p0, Labcd/fH;->v5:[J

    const/16 v2, 0xff

    aget-wide v2, v0, v2

    iput-wide v2, p0, Labcd/fH;->Hw:J

    new-array v0, v10, [[I

    iput-object v0, p0, Labcd/fH;->Zo:[[I

    new-array v0, v10, [[B

    iput-object v0, p0, Labcd/fH;->VH:[[B

    new-array v0, v10, [[B

    iput-object v0, p0, Labcd/fH;->gn:[[B

    move v2, v1

    :goto_1
    if-lt v2, v10, :cond_5

    move v0, v1

    :goto_2
    if-lt v0, v10, :cond_4

    move v3, v1

    move v2, v1

    :goto_3
    if-lt v3, v10, :cond_1

    if-lez v2, :cond_0

    mul-int/lit8 v0, v2, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/fH;->u7:[B

    iget-object v0, p0, Labcd/fH;->u7:[B

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    :goto_4
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/bH;->j6:[B

    iget-object v0, p0, Labcd/bH;->j6:[B

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    return-void

    :cond_0
    sget-object v0, Labcd/fH;->FH:[B

    iput-object v0, p0, Labcd/fH;->u7:[B

    goto :goto_4

    :cond_1
    iget-object v0, p0, Labcd/fH;->VH:[[B

    aget-object v4, v0, v3

    array-length v0, v4

    invoke-static {p1, v4, v1, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    move v0, v1

    :goto_5
    array-length v5, v4

    if-lt v0, v5, :cond_2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    aget-byte v5, v4, v0

    if-gez v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_5

    :cond_4
    iget-object v2, p0, Labcd/fH;->gn:[[B

    aget-object v3, v2, v0

    aget-object v2, v2, v0

    array-length v2, v2

    invoke-static {p1, v3, v1, v2}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    iget-object v0, p0, Labcd/fH;->v5:[J

    aget-wide v4, v0, v2

    :goto_6
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    iget-object v0, p0, Labcd/fH;->Zo:[[I

    sget-object v3, Labcd/fH;->DW:[I

    aput-object v3, v0, v2

    iget-object v0, p0, Labcd/fH;->VH:[[B

    sget-object v3, Labcd/fH;->FH:[B

    aput-object v3, v0, v2

    iget-object v0, p0, Labcd/fH;->gn:[[B

    aput-object v3, v0, v2

    :goto_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Labcd/fH;->v5:[J

    aget-wide v4, v0, v2

    add-int/lit8 v3, v2, -0x1

    aget-wide v6, v0, v3

    sub-long/2addr v4, v6

    goto :goto_6

    :cond_7
    const-wide/16 v6, 0x14

    mul-long/2addr v6, v4

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-gtz v0, :cond_9

    long-to-int v0, v6

    new-array v3, v0, [B

    ushr-int/lit8 v0, v0, 0x2

    new-array v6, v0, [I

    array-length v0, v3

    invoke-static {p1, v3, v1, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    move v0, v1

    :goto_8
    array-length v7, v6

    if-lt v0, v7, :cond_8

    iget-object v0, p0, Labcd/fH;->Zo:[[I

    aput-object v6, v0, v2

    iget-object v0, p0, Labcd/fH;->VH:[[B

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    long-to-int v3, v4

    new-array v4, v3, [B

    aput-object v4, v0, v2

    iget-object v0, p0, Labcd/fH;->gn:[[B

    new-array v3, v3, [B

    aput-object v3, v0, v2

    goto :goto_7

    :cond_8
    shl-int/lit8 v7, v0, 0x2

    invoke-static {v3, v7}, Labcd/FK;->j6([BI)I

    move-result v7

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->indexFileIsTooLargeForJgit:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v3, p0, Labcd/fH;->v5:[J

    mul-int/lit8 v4, v0, 0x4

    invoke-static {v2, v4}, Labcd/FK;->FH([BI)J

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic DW(Labcd/fH;)[[B
    .registers 2

    iget-object v0, p0, Labcd/fH;->VH:[[B

    return-object v0
.end method

.method static synthetic FH(Labcd/fH;)[B
    .registers 2

    iget-object v0, p0, Labcd/fH;->u7:[B

    return-object v0
.end method

.method private static Zo(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private j6(Labcd/YD;I)I
    .registers 9

    const/4 v2, -0x1

    iget-object v0, p0, Labcd/fH;->Zo:[[I

    aget-object v4, v0, p2

    iget-object v0, p0, Labcd/fH;->VH:[[B

    aget-object v0, v0, p2

    array-length v0, v0

    ushr-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    add-int v3, v0, v1

    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Labcd/YD;->j6([II)I

    move-result v5

    if-gez v5, :cond_2

    move v1, v3

    :goto_1
    if-lt v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    goto :goto_1
.end method

.method static synthetic j6(Labcd/fH;)[[I
    .registers 2

    iget-object v0, p0, Labcd/fH;->Zo:[[I

    return-object v0
.end method


# virtual methods
.method public DW()J
    .registers 3

    iget-object v0, p0, Labcd/fH;->u7:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public DW(Labcd/YD;)J
    .registers 8

    invoke-virtual {p1}, Labcd/YD;->Zo()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/fH;->j6(Labcd/YD;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-wide/16 v0, -0x1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Labcd/fH;->VH:[[B

    aget-object v0, v2, v0

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Labcd/FK;->FH([BI)J

    move-result-wide v0

    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Labcd/fH;->u7:[B

    const-wide v4, -0x80000001L

    and-long/2addr v0, v4

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v2, v0}, Labcd/FK;->Hw([BI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public FH()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Labcd/bH$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/fH$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/fH$a;-><init>(Labcd/fH;Labcd/fH$a;)V

    return-object v0
.end method

.method public j6()J
    .registers 3

    iget-wide v0, p0, Labcd/fH;->Hw:J

    return-wide v0
.end method

.method public j6(Labcd/YD;)J
    .registers 5

    invoke-virtual {p1}, Labcd/YD;->Zo()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/fH;->j6(Labcd/YD;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Labcd/fH;->gn:[[B

    aget-object v0, v2, v0

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Labcd/FK;->FH([BI)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v1

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method

.method public j6(J)Labcd/yE;
    .registers 10

    iget-object v0, p0, Labcd/fH;->v5:[J

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Labcd/fH;->v5:[J

    aget-wide v2, v1, v0

    :goto_0
    if-lez v0, :cond_3

    iget-object v1, p0, Labcd/fH;->v5:[J

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v1, v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    move v2, v0

    :goto_1
    if-lez v2, :cond_2

    iget-object v0, p0, Labcd/fH;->v5:[J

    add-int/lit8 v1, v2, -0x1

    aget-wide v0, v0, v1

    :goto_2
    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Labcd/fH;->Zo:[[I

    aget-object v1, v1, v2

    shl-int/lit8 v2, v0, 0x2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Labcd/yE;->DW([II)Labcd/yE;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    move v2, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public j6(Ljava/util/Set;Labcd/WD;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/fH;->Zo:[[I

    invoke-virtual {p2}, Labcd/WD;->j6()I

    move-result v1

    aget-object v4, v0, v1

    iget-object v0, p0, Labcd/fH;->VH:[[B

    invoke-virtual {p2}, Labcd/WD;->j6()I

    move-result v1

    aget-object v0, v0, v1

    array-length v0, v0

    ushr-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v2

    :cond_2
    add-int v3, v0, v1

    ushr-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Labcd/fH;->Zo(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Labcd/WD;->j6([II)I

    move-result v5

    if-gez v5, :cond_3

    move v1, v3

    :goto_1
    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_3
    if-nez v5, :cond_6

    move v0, v3

    :goto_2
    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Labcd/fH;->Zo(I)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Labcd/WD;->j6([II)I

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_3
    if-ge v0, v2, :cond_0

    invoke-static {v0}, Labcd/fH;->Zo(I)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Labcd/WD;->j6([II)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Labcd/fH;->Zo(I)I

    move-result v1

    invoke-static {v4, v1}, Labcd/yE;->DW([II)Labcd/yE;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-gt v1, p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v3, 0x1

    goto :goto_1
.end method
