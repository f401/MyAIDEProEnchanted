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
            "LwI$a<",
            "TV;>;"
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

    array-length v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000  # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Labcd/wI;->FH:I

    return-void
.end method

.method private final DW(J)I
    .registers 4

    long-to-int p2, p1

    ushr-int/lit8 p1, p2, 0x1

    ushr-int/lit8 p2, p1, 0x14

    ushr-int/lit8 v0, p1, 0xc

    xor-int/2addr p2, v0

    xor-int/2addr p1, p2

    iget-object p2, p0, Labcd/wI;->j6:[Labcd/wI$a;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    return p1
.end method

.method private j6()V
    .registers 6

    iget-object v0, p0, Labcd/wI;->j6:[Labcd/wI$a;

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Labcd/wI;->j6(I)[Labcd/wI$a;

    move-result-object v2

    iput-object v2, p0, Labcd/wI;->j6:[Labcd/wI$a;

    array-length v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000  # 0.75f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Labcd/wI;->FH:I

    const/4 v2, 0x0

    :goto_15
    if-lt v2, v1, :cond_18

    return-void

    :cond_18
    aget-object v3, v0, v2

    :goto_1a
    if-nez v3, :cond_1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    iget-object v4, v3, Labcd/wI$a;->FH:Labcd/wI$a;

    invoke-direct {p0, v3}, Labcd/wI;->j6(Labcd/wI$a;)V

    move-object v3, v4

    goto :goto_1a
.end method

.method private j6(Labcd/wI$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LwI$a<",
            "TV;>;)V"
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
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "LwI$a<",
            "TV;>;"
        }
    .end annotation

    new-array p0, p0, [Labcd/wI$a;

    return-object p0
.end method


# virtual methods
.method j6(J)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    iget-object v0, p0, Labcd/wI;->j6:[Labcd/wI$a;

    invoke-direct {p0, p1, p2}, Labcd/wI;->DW(J)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_a
    if-nez v0, :cond_d

    return-object v1

    :cond_d
    iget-wide v3, v0, Labcd/wI$a;->j6:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_2d

    if-nez v2, :cond_20

    iget-object v1, p0, Labcd/wI;->j6:[Labcd/wI$a;

    invoke-direct {p0, p1, p2}, Labcd/wI;->DW(J)I

    move-result p1

    iget-object p2, v0, Labcd/wI$a;->FH:Labcd/wI$a;

    aput-object p2, v1, p1

    goto :goto_24

    :cond_20
    iget-object p1, v0, Labcd/wI$a;->FH:Labcd/wI$a;

    iput-object p1, v2, Labcd/wI$a;->FH:Labcd/wI$a;

    :goto_24
    iget p1, p0, Labcd/wI;->DW:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Labcd/wI;->DW:I

    iget-object p1, v0, Labcd/wI$a;->DW:Ljava/lang/Object;

    return-object p1

    :cond_2d
    iget-object v2, v0, Labcd/wI$a;->FH:Labcd/wI$a;

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_a
.end method

.method j6(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Labcd/wI;->j6:[Labcd/wI$a;

    invoke-direct {p0, p1, p2}, Labcd/wI;->DW(J)I

    move-result v1

    aget-object v0, v0, v1

    :goto_8
    if-nez v0, :cond_21

    iget v0, p0, Labcd/wI;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/wI;->DW:I

    iget v1, p0, Labcd/wI;->FH:I

    if-ne v0, v1, :cond_17

    invoke-direct {p0}, Labcd/wI;->j6()V

    :cond_17
    new-instance v0, Labcd/wI$a;

    invoke-direct {v0, p1, p2, p3}, Labcd/wI$a;-><init>(JLjava/lang/Object;)V

    invoke-direct {p0, v0}, Labcd/wI;->j6(Labcd/wI$a;)V

    const/4 p1, 0x0

    return-object p1

    :cond_21
    iget-wide v1, v0, Labcd/wI$a;->j6:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_2c

    iget-object p1, v0, Labcd/wI$a;->DW:Ljava/lang/Object;

    iput-object p3, v0, Labcd/wI$a;->DW:Ljava/lang/Object;

    return-object p1

    :cond_2c
    iget-object v0, v0, Labcd/wI$a;->FH:Labcd/wI$a;

    goto :goto_8
.end method
