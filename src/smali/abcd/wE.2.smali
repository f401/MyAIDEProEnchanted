.class public Labcd/wE;
.super Ljava/lang/Object;


# static fields
.field public static final DW:[B

.field public static final FH:[B

.field public static final Hw:[B

.field public static final VH:[B

.field public static final Zo:[B

.field public static final gn:[B

.field public static final j6:[B

.field public static final u7:[B

.field public static final v5:[B


# instance fields
.field private final EQ:Labcd/EK;

.field private final tp:Labcd/uE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "tree "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/wE;->j6:[B

    const-string v0, "parent "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/wE;->DW:[B

    const-string v0, "author "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/wE;->FH:[B

    const-string v0, "committer "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/wE;->Hw:[B

    const-string v0, "encoding "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/wE;->v5:[B

    const-string v0, "object "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/wE;->Zo:[B

    const-string v0, "type "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/wE;->VH:[B

    const-string v0, "tag "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/wE;->gn:[B

    const-string v0, "tagger "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/wE;->u7:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    iput-object v0, p0, Labcd/wE;->tp:Labcd/uE;

    new-instance v0, Labcd/EK;

    invoke-direct {v0}, Labcd/EK;-><init>()V

    iput-object v0, p0, Labcd/wE;->EQ:Labcd/EK;

    return-void
.end method

.method private DW([BI)I
    .registers 9

    const/16 v5, 0x3e

    const/16 v3, 0x3c

    const/16 v4, 0x20

    const/4 v0, -0x1

    invoke-static {p1, p2, v3}, Labcd/IK;->DW([BIC)I

    move-result v1

    if-eq v1, p2, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p1, v2

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, v1, v5}, Labcd/IK;->DW([BIC)I

    move-result v2

    if-eq v2, v1, :cond_0

    add-int/lit8 v1, v2, -0x1

    aget-byte v1, p1, v1

    if-ne v1, v5, :cond_0

    array-length v1, p1

    if-eq v2, v1, :cond_0

    aget-byte v1, p1, v2

    if-ne v1, v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    iget-object v2, p0, Labcd/wE;->EQ:Labcd/EK;

    invoke-static {p1, v1, v2}, Labcd/IK;->j6([BILabcd/EK;)I

    iget-object v2, p0, Labcd/wE;->EQ:Labcd/EK;

    iget v3, v2, Labcd/EK;->j6:I

    if-eq v1, v3, :cond_0

    array-length v1, p1

    if-eq v3, v1, :cond_0

    aget-byte v1, p1, v3

    if-ne v1, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v3, v2}, Labcd/IK;->j6([BILabcd/EK;)I

    iget-object v1, p0, Labcd/wE;->EQ:Labcd/EK;

    iget v1, v1, Labcd/EK;->j6:I

    if-eq v3, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static j6(I)I
    .registers 2

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p0}, Labcd/rE;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6([BI)I
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/wE;->tp:Labcd/uE;

    invoke-virtual {v0, p1, p2}, Labcd/uE;->v5([BI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p2, 0x28

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static j6([BIIIIII)I
    .registers 9

    :goto_0
    if-ge p1, p2, :cond_0

    if-lt p4, p5, :cond_2

    :cond_0
    if-ge p1, p2, :cond_3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-static {p6}, Labcd/wE;->j6(I)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, p4

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    if-ge p4, p5, :cond_4

    invoke-static {p3}, Labcd/wE;->j6(I)I

    move-result v0

    aget-byte v1, p0, p4

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static j6([BII)Z
    .registers 13

    const/4 v7, 0x0

    array-length v9, p0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, 0x14

    :goto_0
    move v6, v7

    :goto_1
    if-lt v0, v9, :cond_0

    move v0, v7

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    const/16 v1, 0x20

    if-ne v1, v0, :cond_6

    move v0, v4

    :goto_3
    if-ne v0, v9, :cond_1

    move v0, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v0, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_5

    add-int/lit8 v0, v4, 0x1

    if-ne v0, v8, :cond_2

    move v0, v7

    goto :goto_2

    :cond_2
    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0}, Labcd/rE;->DW()I

    move-result v3

    add-int/lit8 v5, v8, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Labcd/wE;->j6([BIIIIII)I

    move-result v0

    if-gez v0, :cond_3

    move v0, v7

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v8, 0x14

    goto :goto_0

    :cond_5
    move v0, v8

    goto :goto_3

    :cond_6
    shl-int/lit8 v1, v6, 0x3

    add-int/lit8 v0, v0, -0x30

    add-int v6, v1, v0

    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public DW([B)V
    .registers 5

    const/16 v2, 0xa

    const/4 v0, 0x0

    sget-object v1, Labcd/wE;->j6:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_8

    invoke-direct {p0, p1, v0}, Labcd/wE;->j6([BI)I

    move-result v1

    if-ltz v1, :cond_7

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_7

    :cond_0
    sget-object v1, Labcd/wE;->DW:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-gez v1, :cond_5

    sget-object v1, Labcd/wE;->FH:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-direct {p0, p1, v0}, Labcd/wE;->DW([BI)I

    move-result v0

    if-ltz v0, :cond_3

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Labcd/wE;->Hw:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0, p1, v0}, Labcd/wE;->DW([BI)I

    move-result v0

    if-ltz v0, :cond_1

    aget-byte v0, p1, v0

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Labcd/YC;

    const-string v1, "invalid committer"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Labcd/YC;

    const-string v1, "no committer"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Labcd/YC;

    const-string v1, "invalid author"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Labcd/YC;

    const-string v1, "no author"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v1, Labcd/wE;->DW:[B

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Labcd/wE;->j6([BI)I

    move-result v1

    if-ltz v1, :cond_6

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    if-eq v1, v2, :cond_0

    :cond_6
    new-instance v0, Labcd/YC;

    const-string v1, "invalid parent"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Labcd/YC;

    const-string v1, "invalid tree"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Labcd/YC;

    const-string v1, "no tree header"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FH([B)V
    .registers 5

    const/16 v2, 0xa

    const/4 v0, 0x0

    sget-object v1, Labcd/wE;->Zo:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-direct {p0, p1, v0}, Labcd/wE;->j6([BI)I

    move-result v0

    if-ltz v0, :cond_4

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Labcd/wE;->VH:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-static {p1, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    sget-object v1, Labcd/wE;->gn:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-static {p1, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    sget-object v1, Labcd/wE;->u7:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1, v0}, Labcd/wE;->DW([BI)I

    move-result v0

    if-ltz v0, :cond_1

    aget-byte v0, p1, v0

    if-ne v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Labcd/YC;

    const-string v1, "invalid tagger"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Labcd/YC;

    const-string v1, "no tag header"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Labcd/YC;

    const-string v1, "no type header"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Labcd/YC;

    const-string v1, "invalid object"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Labcd/YC;

    const-string v1, "no object header"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Hw([B)V
    .registers 15

    const/16 v12, 0x30

    const/16 v11, 0x2e

    const/4 v8, 0x0

    array-length v9, p1

    move v2, v8

    move v1, v8

    move v3, v8

    move v0, v8

    :goto_0
    if-lt v0, v9, :cond_0

    return-void

    :cond_0
    move v6, v8

    :goto_1
    if-eq v0, v9, :cond_11

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    const/16 v5, 0x20

    if-ne v5, v0, :cond_d

    invoke-static {v6}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/rE;->FH()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_c

    move v0, v4

    :goto_2
    if-eq v0, v9, :cond_b

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_9

    add-int/lit8 v0, v4, 0x1

    if-eq v0, v7, :cond_8

    aget-byte v5, p1, v4

    if-ne v5, v11, :cond_1

    add-int/lit8 v5, v7, -0x1

    sub-int/2addr v5, v4

    const/4 v10, 0x1

    if-eq v5, v10, :cond_4

    const/4 v10, 0x2

    if-ne v5, v10, :cond_1

    aget-byte v0, p1, v0

    if-eq v0, v11, :cond_3

    :cond_1
    add-int/lit8 v5, v7, -0x1

    invoke-static {p1, v4, v5}, Labcd/wE;->j6([BII)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_2

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Labcd/wE;->j6([BIIIIII)I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    add-int/lit8 v0, v7, 0x14

    if-gt v0, v9, :cond_6

    move v2, v5

    move v1, v4

    move v3, v6

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/YC;

    const-string v1, "invalid name \'..\'"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Labcd/YC;

    const-string v1, "invalid name \'.\'"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Labcd/YC;

    const-string v1, "incorrectly sorted"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Labcd/YC;

    const-string v1, "truncated in object id"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Labcd/YC;

    const-string v1, "duplicate entry names"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Labcd/YC;

    const-string v1, "zero length name"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_a

    move v0, v7

    goto :goto_2

    :cond_a
    new-instance v0, Labcd/YC;

    const-string v1, "name contains \'/\'"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Labcd/YC;

    const-string v1, "truncated in name"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/YC;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    if-lt v0, v12, :cond_10

    const/16 v5, 0x37

    if-gt v0, v5, :cond_10

    if-nez v6, :cond_e

    if-eq v0, v12, :cond_f

    :cond_e
    shl-int/lit8 v5, v6, 0x3

    add-int/lit8 v0, v0, -0x30

    add-int v6, v5, v0

    move v0, v4

    goto/16 :goto_1

    :cond_f
    new-instance v0, Labcd/YC;

    const-string v1, "mode starts with \'0\'"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Labcd/YC;

    const-string v1, "invalid mode character"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Labcd/YC;

    const-string v1, "truncated in mode"

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(I[B)V
    .registers 8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Labcd/wE;->FH([B)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType2:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p2}, Labcd/wE;->j6([B)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Labcd/wE;->Hw([B)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Labcd/wE;->DW([B)V

    goto :goto_0
.end method

.method public j6([B)V
    .registers 2

    return-void
.end method
