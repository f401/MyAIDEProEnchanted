.class public Labcd/Ub;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Ub$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:[I
    .annotation runtime Labcd/ru;
        field = 0x69a45fe60b70441L
    .end annotation
.end field


# instance fields
.field public final Hw:Labcd/Ub$a;

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x1aaa58edc0682548L
    .end annotation
.end field

.field private Zo:[J
    .annotation runtime Labcd/ru;
        field = -0x2b9b7080bbce6048L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x11117abab34db640L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x1c1ccde36b03e5a3L
    .end annotation
.end field

.field private v5:[J
    .annotation runtime Labcd/ru;
        field = 0x20c57a5009a7d7edL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2e2154f78cc4a20fL
    .end annotation

    const-wide v8, -0x24f0a1bba2f094a7L    # -4.348687123306842E130

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Ub;

    const-wide v2, 0x34cdff3680e7944L

    const-wide v4, 0x34cdff3680e7944L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x24f0a1bba2f094a7L    # -4.348687123306842E130

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Ub;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    nop

    :array_0
    .array-data 4
        0x5
        0xb
        0x11
        0x25
        0x43
        0x83
        0x101
        0x209
        0x407
        0x805
        0x1003
        0x2011
        0x401b
        0x8003
        0x10001
        0x2001d
        0x40003
        0x80015
        0x100007
        0x200011
        0x40000f
        0x800009
        0x100002b
        0x2000023
        0x400000f
        0x800001d
        0x10000003
        0x2000000b
        0x40000003    # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x21275c3a6a156c60L    # -7.876511012414485E148

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x21275c3a6a156c60L    # -7.876511012414485E148

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Ub$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Ub$a;-><init>(Labcd/Ub;Labcd/Tb;)V

    iput-object v0, p0, Labcd/Ub;->Hw:Labcd/Ub$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ub;->u7:I

    sget-object v0, Labcd/Ub;->j6:[I

    iget v1, p0, Labcd/Ub;->u7:I

    aget v0, v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/Ub;->v5:[J

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ub;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ub;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 10

    const-wide v6, 0x2bcdb3fef4dc0f4L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2bcdb3fef4dc0f4L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Ub$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Ub$a;-><init>(Labcd/Ub;Labcd/Tb;)V

    iput-object v0, p0, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ub;->gn:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ub;->VH:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ub;->u7:I

    sget-object v0, Labcd/Ub;->j6:[I

    iget v1, p0, Labcd/Ub;->u7:I

    aget v0, v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/Ub;->v5:[J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Ub;->v5:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Labcd/Ub;->v5:[J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private DW()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x30dfcca397261fbdL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa009eb49164c784L    # -2.412403792967416E260

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ub;->gn:I

    iget-object v1, p0, Labcd/Ub;->v5:[J

    array-length v2, v1

    const/4 v1, 0x0

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v2, :cond_1

    iget v0, p0, Labcd/Ub;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->u7:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ub;->Zo:[J

    sget-object v0, Labcd/Ub;->j6:[I

    iget v2, p0, Labcd/Ub;->u7:I

    aget v0, v0, v2

    new-array v0, v0, [J

    :goto_0
    const/4 v2, 0x0

    move v3, v1

    :goto_1
    iget-object v1, p0, Labcd/Ub;->v5:[J

    array-length v1, v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Labcd/Ub;->v5:[J

    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v6, v4

    array-length v1, v0

    int-to-long v8, v1

    rem-long v8, v6, v8

    long-to-int v1, v8

    array-length v8, v0

    int-to-long v8, v8

    const-wide/16 v10, 0x2

    sub-long/2addr v8, v10

    rem-long/2addr v6, v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v6, v6

    :goto_2
    aget-wide v8, v0, v1

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_5

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v1, v7

    :try_start_1
    array-length v7, v0

    rem-int/2addr v1, v7

    goto :goto_2

    :cond_1
    iget-object v0, p0, Labcd/Ub;->Zo:[J

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Ub;->Zo:[J

    array-length v0, v0

    iget-object v2, p0, Labcd/Ub;->v5:[J

    array-length v2, v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Labcd/Ub;->Zo:[J

    const/4 v2, 0x0

    :goto_3
    array-length v3, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v2, v3, :cond_2

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v2, p0, Labcd/Ub;->v5:[J

    iput-object v2, p0, Labcd/Ub;->Zo:[J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_3

    const-wide v2, -0xa009eb49164c784L    # -2.412403792967416E260

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/Ub;->v5:[J

    iput-object v0, p0, Labcd/Ub;->Zo:[J

    sget-object v0, Labcd/Ub;->j6:[I

    iget v2, p0, Labcd/Ub;->u7:I

    aget v0, v0, v2

    new-array v0, v0, [J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    aput-wide v4, v0, v1

    add-int/lit8 v1, v2, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1

    :cond_6
    :try_start_4
    iput-object v0, p0, Labcd/Ub;->v5:[J

    iput v2, p0, Labcd/Ub;->VH:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v1, v2

    goto :goto_4
.end method

.method static synthetic j6(Labcd/Ub;)[J
    .registers 2

    iget-object v0, p0, Labcd/Ub;->v5:[J

    return-object v0
.end method


# virtual methods
.method public DW(II)V
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x39b2319a9101136cL    # -4.7229865012149546E30

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    iget-object v4, p0, Labcd/Ub;->v5:[J

    array-length v4, v4

    int-to-long v4, v4

    rem-long v4, v2, v4

    long-to-int v4, v4

    iget-object v5, p0, Labcd/Ub;->v5:[J

    array-length v5, v5

    int-to-long v6, v5

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    rem-long/2addr v2, v6

    long-to-int v5, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    aget-wide v2, v2, v4

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_4

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v2, v5, 0x1

    add-int/2addr v2, v4

    iget-object v3, p0, Labcd/Ub;->v5:[J

    array-length v3, v3

    rem-int v4, v2, v3

    iget-object v2, p0, Labcd/Ub;->v5:[J

    aget-wide v2, v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Labcd/Ub;->v5:[J

    aput-wide v0, v2, v4

    iget v0, p0, Labcd/Ub;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->gn:I

    iget v0, p0, Labcd/Ub;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->VH:I

    iget v0, p0, Labcd/Ub;->VH:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Ub;->v5:[J

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Ub;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ub;->FH:Z

    if-eqz v0, :cond_5

    const-wide v2, -0x39b2319a9101136cL    # -4.7229865012149546E30

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public DW(Labcd/Ub;)V
    .registers 12

    const-wide v8, 0x645cd8d35e8136a9L    # 2.8538935867016905E175

    const-wide/16 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x645cd8d35e8136a9L    # 2.8538935867016905E175

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Labcd/Ub;->v5:[J

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Labcd/Ub;->v5:[J

    aget-wide v2, v1, v0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Labcd/Ub;->j6(J)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, v3}, Labcd/Ub;->j6(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public FH(II)V
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x3322fd889380eed8L    # 2.3081510352216996E-62

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    iget-object v4, p0, Labcd/Ub;->v5:[J

    array-length v4, v4

    int-to-long v4, v4

    rem-long v4, v2, v4

    long-to-int v4, v4

    iget-object v5, p0, Labcd/Ub;->v5:[J

    array-length v5, v5

    int-to-long v6, v5

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    rem-long/2addr v2, v6

    long-to-int v5, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    aget-wide v2, v2, v4

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_4

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v2, v5, 0x1

    add-int/2addr v2, v4

    iget-object v3, p0, Labcd/Ub;->v5:[J

    array-length v3, v3

    rem-int v4, v2, v3

    iget-object v2, p0, Labcd/Ub;->v5:[J

    aget-wide v2, v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Labcd/Ub;->v5:[J

    aput-wide v0, v2, v4

    iget v0, p0, Labcd/Ub;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->gn:I

    iget v0, p0, Labcd/Ub;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->VH:I

    iget v0, p0, Labcd/Ub;->VH:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Ub;->v5:[J

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Ub;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ub;->FH:Z

    if-eqz v0, :cond_5

    const-wide v2, 0x3322fd889380eed8L    # 2.3081510352216996E-62

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public j6()V
    .registers 7

    const-wide v4, 0x891997997140034L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ub;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x891997997140034L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Ub;->VH:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/Ub;->v5:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Ub;->v5:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/Ub;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ub;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(I)V
    .registers 14

    const-wide v10, 0x677fd07d6a64db2cL    # 3.543734698389614E190

    const-wide/16 v2, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x677fd07d6a64db2cL    # 3.543734698389614E190

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Labcd/Ub;->v5:[J

    array-length v0, v0

    if-ge v4, v0, :cond_4

    iget-object v0, p0, Labcd/Ub;->v5:[J

    aget-wide v0, v0, v4

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    cmp-long v5, v0, v8

    if-eqz v5, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    move-wide v0, v2

    :cond_1
    const/16 v5, 0x20

    shr-long/2addr v0, v5

    long-to-int v0, v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Labcd/Ub;->v5:[J

    const-wide/high16 v6, -0x8000000000000000L

    aput-wide v6, v0, v4

    iget v0, p0, Labcd/Ub;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Ub;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v10, v11, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6(J)V
    .registers 16

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    const-wide v8, -0x497619f18560508fL    # -5.6705859826289075E-46

    :try_start_0
    sget-boolean v2, Labcd/Ub;->DW:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v4, -0x497619f18560508fL    # -5.6705859826289075E-46

    invoke-static {v4, v5, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    cmp-long v2, p1, v10

    if-nez v2, :cond_1

    move-wide p1, v0

    :cond_1
    and-long v2, v0, p1

    iget-object v0, p0, Labcd/Ub;->v5:[J

    array-length v0, v0

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    iget-object v1, p0, Labcd/Ub;->v5:[J

    array-length v1, v1

    int-to-long v4, v1

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    rem-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    aget-wide v2, v2, v0

    :goto_0
    cmp-long v4, v2, v10

    if-eqz v4, :cond_4

    cmp-long v2, v2, p1

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    array-length v2, v2

    rem-int/2addr v0, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    aget-wide v2, v2, v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Labcd/Ub;->v5:[J

    aput-wide p1, v1, v0

    iget v0, p0, Labcd/Ub;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->gn:I

    iget v0, p0, Labcd/Ub;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->VH:I

    iget v0, p0, Labcd/Ub;->VH:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Ub;->v5:[J

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Ub;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method public j6(Labcd/_b;)V
    .registers 14

    const-wide/16 v2, 0x0

    const-wide v10, -0x669e774bf63c9dd3L

    const-wide/high16 v8, -0x8000000000000000L

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x669e774bf63c9dd3L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Labcd/Ub;->v5:[J

    array-length v0, v0

    if-ge v4, v0, :cond_4

    iget-object v0, p0, Labcd/Ub;->v5:[J

    aget-wide v0, v0, v4

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    cmp-long v5, v0, v8

    if-eqz v5, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    move-wide v0, v2

    :cond_1
    const/16 v5, 0x20

    shr-long/2addr v0, v5

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Labcd/_b;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Ub;->v5:[J

    const-wide/high16 v6, -0x8000000000000000L

    aput-wide v6, v0, v4

    iget v0, p0, Labcd/Ub;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Ub;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6(Labcd/bc;)V
    .registers 14

    const-wide/16 v2, 0x0

    const-wide v10, -0x67810e5e2b5e0a5cL

    const-wide/high16 v8, -0x8000000000000000L

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x67810e5e2b5e0a5cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Labcd/Ub;->v5:[J

    array-length v0, v0

    if-ge v4, v0, :cond_4

    iget-object v0, p0, Labcd/Ub;->v5:[J

    aget-wide v0, v0, v4

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    cmp-long v5, v0, v8

    if-eqz v5, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    move-wide v0, v2

    :cond_1
    const/16 v5, 0x20

    shr-long/2addr v0, v5

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Labcd/bc;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Ub;->v5:[J

    const-wide/high16 v6, -0x8000000000000000L

    aput-wide v6, v0, v4

    iget v0, p0, Labcd/Ub;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Ub;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, 0x6a965e455a41d943L    # 2.805233298578627E205

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6a965e455a41d943L    # 2.805233298578627E205

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ub;->gn:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/Ub;->VH:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/Ub;->u7:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Ub;->v5:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Labcd/Ub;->v5:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public j6(II)Z
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x79290497400a500L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    iget-object v4, p0, Labcd/Ub;->v5:[J

    array-length v4, v4

    int-to-long v4, v4

    rem-long v4, v2, v4

    long-to-int v4, v4

    iget-object v5, p0, Labcd/Ub;->v5:[J

    array-length v5, v5

    int-to-long v6, v5

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    rem-long/2addr v2, v6

    long-to-int v5, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    aget-wide v2, v2, v4

    :goto_0
    cmp-long v6, v2, v0

    if-eqz v6, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v5, 0x1

    add-int/2addr v2, v4

    iget-object v3, p0, Labcd/Ub;->v5:[J

    array-length v3, v3

    rem-int v4, v2, v3

    iget-object v2, p0, Labcd/Ub;->v5:[J

    aget-wide v2, v2, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ub;->FH:Z

    if-eqz v0, :cond_4

    const-wide v2, 0x79290497400a500L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    const-wide v10, 0x174ce04f7b9bac93L

    const-wide/16 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x174ce04f7b9bac93L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v4, "{"

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Labcd/Ub;->v5:[J

    array-length v0, v0

    if-ge v5, v0, :cond_2

    iget-object v0, p0, Labcd/Ub;->v5:[J

    aget-wide v0, v0, v5

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v0, v6

    if-eqz v6, :cond_4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    move-wide v0, v2

    :cond_1
    const/16 v6, 0x20

    shr-long v6, v0, v6

    long-to-int v6, v6

    const-wide/16 v8, -0x1

    and-long/2addr v0, v8

    long-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move-object v4, v0

    move v5, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    move-object v0, v4

    goto :goto_1
.end method
