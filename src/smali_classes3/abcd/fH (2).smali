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

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Labcd/fH;->DW:[I

    new-array v0, v0, [B

    sput-object v0, Labcd/fH;->FH:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .registers 12

    invoke-direct {p0}, Labcd/bH;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    const/16 v0, 0x100

    new-array v3, v0, [J

    iput-object v3, p0, Labcd/fH;->v5:[J

    const/4 v3, 0x0

    :goto_12
    if-lt v3, v0, :cond_e0

    iget-object v1, p0, Labcd/fH;->v5:[J

    const/16 v3, 0xff

    aget-wide v3, v1, v3

    iput-wide v3, p0, Labcd/fH;->Hw:J

    new-array v1, v0, [[I

    iput-object v1, p0, Labcd/fH;->Zo:[[I

    new-array v1, v0, [[B

    iput-object v1, p0, Labcd/fH;->VH:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Labcd/fH;->gn:[[B

    const/4 v1, 0x0

    :goto_29
    if-lt v1, v0, :cond_73

    const/4 v1, 0x0

    :goto_2c
    if-lt v1, v0, :cond_68

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_30
    if-lt v3, v0, :cond_50

    if-lez v1, :cond_3f

    mul-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    iput-object v0, p0, Labcd/fH;->u7:[B

    array-length v1, v0

    invoke-static {p1, v0, v2, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    goto :goto_43

    :cond_3f
    sget-object v0, Labcd/fH;->FH:[B

    iput-object v0, p0, Labcd/fH;->u7:[B

    :goto_43
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/bH;->j6:[B

    iget-object v0, p0, Labcd/bH;->j6:[B

    array-length v1, v0

    invoke-static {p1, v0, v2, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    return-void

    :cond_50
    iget-object v4, p0, Labcd/fH;->VH:[[B

    aget-object v4, v4, v3

    array-length v5, v4

    invoke-static {p1, v4, v2, v5}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    const/4 v5, 0x0

    :goto_59
    array-length v6, v4

    if-lt v5, v6, :cond_5f

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_5f
    aget-byte v6, v4, v5

    if-gez v6, :cond_65

    add-int/lit8 v1, v1, 0x1

    :cond_65
    add-int/lit8 v5, v5, 0x4

    goto :goto_59

    :cond_68
    iget-object v3, p0, Labcd/fH;->gn:[[B

    aget-object v3, v3, v1

    array-length v4, v3

    invoke-static {p1, v3, v2, v4}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_73
    iget-object v3, p0, Labcd/fH;->v5:[J

    if-nez v1, :cond_7a

    aget-wide v4, v3, v1

    goto :goto_81

    :cond_7a
    aget-wide v4, v3, v1

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v3, v6

    sub-long/2addr v4, v6

    :goto_81
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_98

    iget-object v3, p0, Labcd/fH;->Zo:[[I

    sget-object v4, Labcd/fH;->DW:[I

    aput-object v4, v3, v1

    iget-object v3, p0, Labcd/fH;->VH:[[B

    sget-object v4, Labcd/fH;->FH:[B

    aput-object v4, v3, v1

    iget-object v3, p0, Labcd/fH;->gn:[[B

    aput-object v4, v3, v1

    goto :goto_c5

    :cond_98
    const-wide/16 v6, 0x14

    mul-long v6, v6, v4

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_d4

    long-to-int v3, v6

    new-array v6, v3, [B

    ushr-int/lit8 v7, v3, 0x2

    new-array v8, v7, [I

    invoke-static {p1, v6, v2, v3}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    const/4 v3, 0x0

    :goto_ae
    if-lt v3, v7, :cond_c9

    iget-object v3, p0, Labcd/fH;->Zo:[[I

    aput-object v8, v3, v1

    iget-object v3, p0, Labcd/fH;->VH:[[B

    const-wide/16 v6, 0x4

    mul-long v4, v4, v6

    long-to-int v5, v4

    new-array v4, v5, [B

    aput-object v4, v3, v1

    iget-object v3, p0, Labcd/fH;->gn:[[B

    new-array v4, v5, [B

    aput-object v4, v3, v1

    :goto_c5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_29

    :cond_c9
    shl-int/lit8 v9, v3, 0x2

    invoke-static {v6, v9}, Labcd/FK;->j6([BI)I

    move-result v9

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_ae

    :cond_d4
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->indexFileIsTooLargeForJgit:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e0
    iget-object v4, p0, Labcd/fH;->v5:[J

    mul-int/lit8 v5, v3, 0x4

    invoke-static {v1, v5}, Labcd/FK;->FH([BI)J

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12
.end method

.method static synthetic DW(Labcd/fH;)[[B
    .registers 1

    iget-object p0, p0, Labcd/fH;->VH:[[B

    return-object p0
.end method

.method static synthetic FH(Labcd/fH;)[B
    .registers 1

    iget-object p0, p0, Labcd/fH;->u7:[B

    return-object p0
.end method

.method private static Zo(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private j6(Labcd/YD;I)I
    .registers 8

    iget-object v0, p0, Labcd/fH;->Zo:[[I

    aget-object v0, v0, p2

    iget-object v1, p0, Labcd/fH;->VH:[[B

    aget-object p2, v1, p2

    array-length p2, p2

    ushr-int/lit8 p2, p2, 0x2

    const/4 v1, -0x1

    if-nez p2, :cond_f

    return v1

    :cond_f
    const/4 v2, 0x0

    :cond_10
    add-int v3, v2, p2

    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v3

    invoke-virtual {p1, v0, v4}, Labcd/YD;->j6([II)I

    move-result v4

    if-gez v4, :cond_1f

    move p2, v3

    goto :goto_25

    :cond_1f
    if-nez v4, :cond_22

    return v3

    :cond_22
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    :goto_25
    if-lt v2, p2, :cond_10

    return v1
.end method

.method static synthetic j6(Labcd/fH;)[[I
    .registers 1

    iget-object p0, p0, Labcd/fH;->Zo:[[I

    return-object p0
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

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_e

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_e
    iget-object v1, p0, Labcd/fH;->VH:[[B

    aget-object v0, v1, v0

    shl-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Labcd/FK;->FH([BI)J

    move-result-wide v0

    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_33

    iget-object p1, p0, Labcd/fH;->u7:[B

    const-wide v2, -0x80000001L

    and-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Labcd/FK;->Hw([BI)J

    move-result-wide v0

    :cond_33
    return-wide v0
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
            "Ljava/util/Iterator<",
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

    if-eq v1, v2, :cond_16

    iget-object p1, p0, Labcd/fH;->gn:[[B

    aget-object p1, p1, v0

    shl-int/lit8 v0, v1, 0x2

    invoke-static {p1, v0}, Labcd/FK;->FH([BI)J

    move-result-wide v0

    return-wide v0

    :cond_16
    new-instance v0, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    const-string v1, "unknown"

    invoke-direct {v0, p1, v1}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method

.method public j6(J)Labcd/yE;
    .registers 9

    iget-object v0, p0, Labcd/fH;->v5:[J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_1f

    iget-object v1, p0, Labcd/fH;->v5:[J

    aget-wide v2, v1, v0

    :goto_f
    if-lez v0, :cond_22

    iget-object v1, p0, Labcd/fH;->v5:[J

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v1, v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1c

    goto :goto_22

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    :cond_22
    :goto_22
    if-lez v0, :cond_2b

    iget-object v1, p0, Labcd/fH;->v5:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    goto :goto_2d

    :cond_2b
    const-wide/16 v2, 0x0

    :goto_2d
    sub-long/2addr p1, v2

    long-to-int p2, p1

    iget-object p1, p0, Labcd/fH;->Zo:[[I

    aget-object p1, p1, v0

    shl-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Labcd/yE;->DW([II)Labcd/yE;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/util/Set;Labcd/WD;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/fH;->Zo:[[I

    invoke-virtual {p2}, Labcd/WD;->j6()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Labcd/fH;->VH:[[B

    invoke-virtual {p2}, Labcd/WD;->j6()I

    move-result v2

    aget-object v1, v1, v2

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_16

    return-void

    :cond_16
    const/4 v2, 0x0

    move v3, v1

    :cond_18
    add-int v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Labcd/fH;->Zo(I)I

    move-result v5

    invoke-virtual {p2, v0, v5}, Labcd/WD;->j6([II)I

    move-result v5

    if-gez v5, :cond_28

    move v3, v4

    goto :goto_62

    :cond_28
    if-nez v5, :cond_5f

    :goto_2a
    if-lez v4, :cond_3c

    add-int/lit8 v2, v4, -0x1

    invoke-static {v2}, Labcd/fH;->Zo(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Labcd/WD;->j6([II)I

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_3c

    :cond_39
    add-int/lit8 v4, v4, -0x1

    goto :goto_2a

    :cond_3c
    :goto_3c
    if-ge v4, v1, :cond_5e

    invoke-static {v4}, Labcd/fH;->Zo(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Labcd/WD;->j6([II)I

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_5e

    :cond_49
    invoke-static {v4}, Labcd/fH;->Zo(I)I

    move-result v2

    invoke-static {v0, v2}, Labcd/yE;->DW([II)Labcd/yE;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, p3, :cond_5b

    goto :goto_5e

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    :goto_62
    if-lt v2, v3, :cond_18

    return-void
.end method
