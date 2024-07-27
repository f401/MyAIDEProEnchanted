.class final Labcd/wI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/wI$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private j6:[Labcd/wI$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LwI$a",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    invoke-static {v0}, Labcd/wI;->j6(I)[Labcd/wI$a;

    move-result-object v0

    iput-object v0, p0, Labcd/wI;->j6:[Labcd/wI$a;

    iget-object v0, p0, Labcd/wI;->j6:[Labcd/wI$a;

    array-length v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Labcd/wI;->FH:I

    return-void
.end method

.method private final DW(J)I
    .registers 6

    long-to-int v0, p1

    ushr-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Labcd/wI;->j6:[Labcd/wI$a;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method private j6()V
    .registers 6

    iget-object v3, p0, Labcd/wI;->j6:[Labcd/wI$a;

    array-length v4, v3

    shl-int/lit8 v0, v4, 0x1

    invoke-static {v0}, Labcd/wI;->j6(I)[Labcd/wI$a;

    move-result-object v0

    iput-object v0, p0, Labcd/wI;->j6:[Labcd/wI$a;

    iget-object v0, p0, Labcd/wI;->j6:[Labcd/wI$a;

    array-length v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Labcd/wI;->FH:I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    aget-object v0, v3, v2

    :goto_1
    if-nez v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Labcd/wI$a;->FH:Labcd/wI$a;

    invoke-direct {p0, v0}, Labcd/wI;->j6(Labcd/wI$a;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private j6(Labcd/wI$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LwI$a",
            "<TV;>;)V"
        }
    .end annotation

    iget-wide v0, p1, Labcd/wI$a;->j6:J

    invoke-direct {p0, v0, v1}, Labcd/wI;->DW(J)I

    move-result v0

    iget-object v1, p0, Labcd/wI;->j6:[Labcd/wI$a;

    aget-object v2, v1, v0

    iput-object v2, p1, Labcd/wI$a;->FH:Labcd/wI$a;

    aput-object p1, v1, v0

    return-void
.end method

.method private static final j6(I)[Labcd/wI$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "LwI$a",
            "<TV;>;"
        }
    .end annotation

    new-array v0, p0, [Labcd/wI$a;

    return-object v0
.end method


# virtual methods
.method j6(J)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/wI;->j6:[Labcd/wI$a;

    invoke-direct {p0, p1, p2}, Labcd/wI;->DW(J)I

    move-result v2

    aget-object v2, v1, v2

    move-object v1, v0

    :goto_0
    if-nez v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    iget-wide v4, v2, Labcd/wI$a;->j6:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    if-nez v1, :cond_1

    iget-object v0, p0, Labcd/wI;->j6:[Labcd/wI$a;

    invoke-direct {p0, p1, p2}, Labcd/wI;->DW(J)I

    move-result v1

    iget-object v3, v2, Labcd/wI$a;->FH:Labcd/wI$a;

    aput-object v3, v0, v1

    :goto_2
    iget v0, p0, Labcd/wI;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/wI;->DW:I

    iget-object v0, v2, Labcd/wI$a;->DW:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, v2, Labcd/wI$a;->FH:Labcd/wI$a;

    iput-object v0, v1, Labcd/wI$a;->FH:Labcd/wI$a;

    goto :goto_2

    :cond_2
    iget-object v3, v2, Labcd/wI$a;->FH:Labcd/wI$a;

    move-object v1, v2

    move-object v2, v3

    goto :goto_0
.end method

.method j6(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Labcd/wI;->j6:[Labcd/wI$a;

    invoke-direct {p0, p1, p2}, Labcd/wI;->DW(J)I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget v0, p0, Labcd/wI;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/wI;->DW:I

    iget v1, p0, Labcd/wI;->FH:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Labcd/wI;->j6()V

    :cond_0
    new-instance v0, Labcd/wI$a;

    invoke-direct {v0, p1, p2, p3}, Labcd/wI$a;-><init>(JLjava/lang/Object;)V

    invoke-direct {p0, v0}, Labcd/wI;->j6(Labcd/wI$a;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget-wide v2, v1, Labcd/wI$a;->j6:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    iget-object v0, v1, Labcd/wI$a;->DW:Ljava/lang/Object;

    iput-object p3, v1, Labcd/wI$a;->DW:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, v1, Labcd/wI$a;->FH:Labcd/wI$a;

    move-object v1, v0

    goto :goto_0
.end method
