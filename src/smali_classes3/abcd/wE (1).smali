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
    .registers 7

    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Labcd/IK;->DW([BIC)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, p2, :cond_4c

    add-int/lit8 p2, v1, -0x1

    aget-byte p2, p1, p2

    if-eq p2, v0, :cond_10

    goto :goto_4c

    :cond_10
    const/16 p2, 0x3e

    invoke-static {p1, v1, p2}, Labcd/IK;->DW([BIC)I

    move-result v0

    if-eq v0, v1, :cond_4c

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    if-eq v1, p2, :cond_1f

    goto :goto_4c

    :cond_1f
    array-length p2, p1

    if-eq v0, p2, :cond_4c

    aget-byte p2, p1, v0

    const/16 v1, 0x20

    if-eq p2, v1, :cond_29

    goto :goto_4c

    :cond_29
    add-int/lit8 v0, v0, 0x1

    iget-object p2, p0, Labcd/wE;->EQ:Labcd/EK;

    invoke-static {p1, v0, p2}, Labcd/IK;->j6([BILabcd/EK;)I

    iget-object p2, p0, Labcd/wE;->EQ:Labcd/EK;

    iget v3, p2, Labcd/EK;->j6:I

    if-ne v0, v3, :cond_37

    return v2

    :cond_37
    array-length v0, p1

    if-eq v3, v0, :cond_4c

    aget-byte v0, p1, v3

    if-eq v0, v1, :cond_3f

    goto :goto_4c

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v3, p2}, Labcd/IK;->j6([BILabcd/EK;)I

    iget-object p1, p0, Labcd/wE;->EQ:Labcd/EK;

    iget p1, p1, Labcd/EK;->j6:I

    if-ne v3, p1, :cond_4b

    return v2

    :cond_4b
    return p1

    :cond_4c
    :goto_4c
    return v2
.end method

.method private static j6(I)I
    .registers 2

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p0}, Labcd/rE;->j6(I)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x2f

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private j6([BI)I
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/wE;->tp:Labcd/uE;

    invoke-virtual {v0, p1, p2}, Labcd/uE;->v5([BI)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_8

    add-int/lit8 p2, p2, 0x28

    return p2

    :catch_8
    move-exception p1

    const/4 p1, -0x1

    return p1
.end method

.method private static j6([BIIIIII)I
    .registers 9

    :goto_0
    if-ge p1, p2, :cond_16

    if-lt p4, p5, :cond_5

    goto :goto_16

    :cond_5
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, p4

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    if-eqz v0, :cond_11

    return v0

    :cond_11
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_16
    :goto_16
    if-ge p1, p2, :cond_22

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    invoke-static {p6}, Labcd/wE;->j6(I)I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_22
    if-ge p4, p5, :cond_2e

    invoke-static {p3}, Labcd/wE;->j6(I)I

    move-result p1

    aget-byte p0, p0, p4

    and-int/lit16 p0, p0, 0xff

    sub-int/2addr p1, p0

    return p1

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method private static j6([BII)Z
    .registers 14

    array-length v0, p0

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v1, v1, 0x14

    :goto_5
    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_7
    if-lt v1, v0, :cond_a

    return v2

    :cond_a
    add-int/lit8 v7, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, 0x20

    if-ne v3, v1, :cond_3c

    move v1, v7

    :goto_13
    if-ne v1, v0, :cond_16

    return v2

    :cond_16
    add-int/lit8 v10, v1, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_3a

    add-int/lit8 v1, v7, 0x1

    if-ne v1, v10, :cond_21

    return v2

    :cond_21
    sget-object v1, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v1}, Labcd/rE;->DW()I

    move-result v6

    add-int/lit8 v8, v10, -0x1

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v3 .. v9}, Labcd/wE;->j6([BIIIIII)I

    move-result v1

    if-gez v1, :cond_33

    return v2

    :cond_33
    if-nez v1, :cond_37

    const/4 p0, 0x1

    return p0

    :cond_37
    add-int/lit8 v1, v10, 0x14

    goto :goto_5

    :cond_3a
    move v1, v10

    goto :goto_13

    :cond_3c
    shl-int/lit8 v3, v9, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int v9, v3, v1

    move v1, v7

    goto :goto_7
.end method


# virtual methods
.method public DW([B)V
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Labcd/wE;->j6:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_85

    invoke-direct {p0, p1, v0}, Labcd/wE;->j6([BI)I

    move-result v0

    if-ltz v0, :cond_7d

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_7d

    :goto_17
    sget-object v0, Labcd/wE;->DW:[B

    invoke-static {p1, v1, v0}, Labcd/IK;->j6([BI[B)I

    move-result v3

    if-gez v3, :cond_66

    sget-object v0, Labcd/wE;->FH:[B

    invoke-static {p1, v1, v0}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_5e

    invoke-direct {p0, p1, v0}, Labcd/wE;->DW([BI)I

    move-result v0

    if-ltz v0, :cond_56

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_56

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Labcd/wE;->Hw:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_4e

    invoke-direct {p0, p1, v0}, Labcd/wE;->DW([BI)I

    move-result v0

    if-ltz v0, :cond_46

    aget-byte p1, p1, v0

    if-ne p1, v2, :cond_46

    return-void

    :cond_46
    new-instance p1, Labcd/YC;

    const-string v0, "invalid committer"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    new-instance p1, Labcd/YC;

    const-string v0, "no committer"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    new-instance p1, Labcd/YC;

    const-string v0, "invalid author"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    new-instance p1, Labcd/YC;

    const-string v0, "no author"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    array-length v0, v0

    add-int/2addr v1, v0

    invoke-direct {p0, p1, v1}, Labcd/wE;->j6([BI)I

    move-result v0

    if-ltz v0, :cond_75

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ne v0, v2, :cond_75

    goto :goto_17

    :cond_75
    new-instance p1, Labcd/YC;

    const-string v0, "invalid parent"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7d
    new-instance p1, Labcd/YC;

    const-string v0, "invalid tree"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_85
    new-instance p1, Labcd/YC;

    const-string v0, "no tree header"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    goto :goto_8e

    :goto_8d
    throw p1

    :goto_8e
    goto :goto_8d
.end method

.method public FH([B)V
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Labcd/wE;->Zo:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_63

    invoke-direct {p0, p1, v0}, Labcd/wE;->j6([BI)I

    move-result v0

    if-ltz v0, :cond_5b

    aget-byte v1, p1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5b

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Labcd/wE;->VH:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_53

    invoke-static {p1, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    sget-object v1, Labcd/wE;->gn:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-ltz v0, :cond_4b

    invoke-static {p1, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    sget-object v1, Labcd/wE;->u7:[B

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    if-lez v0, :cond_4a

    invoke-direct {p0, p1, v0}, Labcd/wE;->DW([BI)I

    move-result v0

    if-ltz v0, :cond_42

    aget-byte p1, p1, v0

    if-ne p1, v2, :cond_42

    goto :goto_4a

    :cond_42
    new-instance p1, Labcd/YC;

    const-string v0, "invalid tagger"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    new-instance p1, Labcd/YC;

    const-string v0, "no tag header"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    new-instance p1, Labcd/YC;

    const-string v0, "no type header"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    new-instance p1, Labcd/YC;

    const-string v0, "invalid object"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_63
    new-instance p1, Labcd/YC;

    const-string v0, "no object header"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Hw([B)V
    .registers 15

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-lt v2, v0, :cond_9

    return-void

    :cond_9
    const/4 v10, 0x0

    :goto_a
    if-eq v2, v0, :cond_de

    add-int/lit8 v11, v2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0x20

    if-ne v3, v2, :cond_b8

    invoke-static {v10}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object v2

    invoke-virtual {v2}, Labcd/rE;->FH()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a4

    move v2, v11

    :goto_20
    if-eq v2, v0, :cond_9c

    add-int/lit8 v12, v2, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_8e

    add-int/lit8 v2, v11, 0x1

    if-eq v2, v12, :cond_86

    aget-byte v3, p1, v11

    const/16 v7, 0x2e

    if-ne v3, v7, :cond_50

    add-int/lit8 v3, v12, -0x1

    sub-int/2addr v3, v11

    const/4 v8, 0x1

    if-eq v3, v8, :cond_48

    const/4 v8, 0x2

    if-ne v3, v8, :cond_50

    aget-byte v2, p1, v2

    if-eq v2, v7, :cond_40

    goto :goto_50

    :cond_40
    new-instance p1, Labcd/YC;

    const-string v0, "invalid name \'..\'"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    new-instance p1, Labcd/YC;

    const-string v0, "invalid name \'.\'"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    :goto_50
    add-int/lit8 v2, v12, -0x1

    invoke-static {p1, v11, v2}, Labcd/wE;->j6([BII)Z

    move-result v3

    if-nez v3, :cond_7e

    if-eqz v4, :cond_6d

    move-object v3, p1

    move v7, v11

    move v8, v2

    move v9, v10

    invoke-static/range {v3 .. v9}, Labcd/wE;->j6([BIIIIII)I

    move-result v3

    if-gtz v3, :cond_65

    goto :goto_6d

    :cond_65
    new-instance p1, Labcd/YC;

    const-string v0, "incorrectly sorted"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6d
    :goto_6d
    add-int/lit8 v3, v12, 0x14

    if-gt v3, v0, :cond_76

    move v5, v2

    move v2, v3

    move v6, v10

    move v4, v11

    goto :goto_6

    :cond_76
    new-instance p1, Labcd/YC;

    const-string v0, "truncated in object id"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    new-instance p1, Labcd/YC;

    const-string v0, "duplicate entry names"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_86
    new-instance p1, Labcd/YC;

    const-string v0, "zero length name"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8e
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_94

    move v2, v12

    goto :goto_20

    :cond_94
    new-instance p1, Labcd/YC;

    const-string v0, "name contains \'/\'"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9c
    new-instance p1, Labcd/YC;

    const-string v0, "truncated in name"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid mode "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/YC;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    const/16 v3, 0x30

    if-lt v2, v3, :cond_d6

    const/16 v7, 0x37

    if-gt v2, v7, :cond_d6

    if-nez v10, :cond_cd

    if-eq v2, v3, :cond_c5

    goto :goto_cd

    :cond_c5
    new-instance p1, Labcd/YC;

    const-string v0, "mode starts with \'0\'"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cd
    :goto_cd
    shl-int/lit8 v3, v10, 0x3

    add-int/lit8 v2, v2, -0x30

    add-int v10, v3, v2

    move v2, v11

    goto/16 :goto_a

    :cond_d6
    new-instance p1, Labcd/YC;

    const-string v0, "invalid mode character"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_de
    new-instance p1, Labcd/YC;

    const-string v0, "truncated in mode"

    invoke-direct {p1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    goto :goto_e7

    :goto_e6
    throw p1

    :goto_e7
    goto :goto_e6
.end method

.method public j6(I[B)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_31

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_29

    const/4 v1, 0x4

    if-ne p1, v1, :cond_10

    invoke-virtual {p0, p2}, Labcd/wE;->FH([B)V

    goto :goto_34

    :cond_10
    new-instance p2, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType2:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_29
    invoke-virtual {p0, p2}, Labcd/wE;->j6([B)V

    goto :goto_34

    :cond_2d
    invoke-virtual {p0, p2}, Labcd/wE;->Hw([B)V

    goto :goto_34

    :cond_31
    invoke-virtual {p0, p2}, Labcd/wE;->DW([B)V

    :goto_34
    return-void
.end method

.method public j6([B)V
    .registers 2

    return-void
.end method
