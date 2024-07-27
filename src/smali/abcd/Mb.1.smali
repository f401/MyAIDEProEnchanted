.class public Labcd/Mb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Mb$a;
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
        field = -0x1f938f7d983568bbL
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0xaeae36fa5a0a499L
    .end annotation
.end field

.field public final Hw:Labcd/Mb$a;

.field private VH:[J
    .annotation runtime Labcd/ru;
        field = -0x21f2900a2b2743c5L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x3ee74f16f6ef5b8L
    .end annotation
.end field

.field private gn:[J
    .annotation runtime Labcd/ru;
        field = 0x2825f2dc7bfd839cL
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x1672d83b2ac0b520L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0xd7e12192e9bd130L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0x1daf65f1d1ae7c79L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x264ad0815fe5856fL
    .end annotation

    const-wide v8, -0x151c3f1a93f1c20L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Mb;

    const-wide v2, 0x32c88698d5ce8b5bL    # 4.657722131240885E-64

    const-wide v4, 0x32c88698d5ce8b5bL    # 4.657722131240885E-64

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Mb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x151c3f1a93f1c20L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Mb;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

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

    const-wide v4, -0x1ffb51b0e49b2678L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Mb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1ffb51b0e49b2678L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Mb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Mb$a;-><init>(Labcd/Mb;Labcd/Lb;)V

    iput-object v0, p0, Labcd/Mb;->Hw:Labcd/Mb$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb;->EQ:I

    sget-object v0, Labcd/Mb;->j6:[I

    iget v1, p0, Labcd/Mb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Mb;->v5:[I

    sget-object v0, Labcd/Mb;->j6:[I

    iget v1, p0, Labcd/Mb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/Mb;->VH:[J

    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 10

    const-wide v6, 0x29449474722b7a00L    # 6.845968396905212E-110

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Mb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x29449474722b7a00L    # 6.845968396905212E-110

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/Mb$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Labcd/Mb$a;-><init>(Labcd/Mb;Labcd/Lb;)V

    iput-object v1, p0, Labcd/Mb;->Hw:Labcd/Mb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Mb;->tp:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Mb;->u7:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Mb;->EQ:I

    sget-object v1, Labcd/Mb;->j6:[I

    iget v2, p0, Labcd/Mb;->EQ:I

    aget v1, v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Mb;->v5:[I

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Mb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/Mb;->v5:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Labcd/Mb;->j6:[I

    iget v2, p0, Labcd/Mb;->EQ:I

    aget v1, v1, v2

    new-array v1, v1, [J

    iput-object v1, p0, Labcd/Mb;->VH:[J

    :goto_1
    iget-object v1, p0, Labcd/Mb;->VH:[J

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/Mb;->VH:[J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, v4, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method private DW()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x24e1924daaa41525L
    .end annotation

    const-wide v10, -0x7d94b2b8a5d5527L    # -5.997824720984488E270

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Mb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7d94b2b8a5d5527L    # -5.997824720984488E270

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Mb;->tp:I

    iget-object v1, p0, Labcd/Mb;->v5:[I

    array-length v1, v1

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_1

    iget v0, p0, Labcd/Mb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Mb;->EQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Mb;->Zo:[I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Mb;->gn:[J

    sget-object v0, Labcd/Mb;->j6:[I

    iget v1, p0, Labcd/Mb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/Mb;->j6:[I

    iget v3, p0, Labcd/Mb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [J

    :goto_0
    move v3, v2

    move v4, v2

    :goto_1
    iget-object v2, p0, Labcd/Mb;->v5:[I

    array-length v2, v2

    if-ge v4, v2, :cond_6

    iget-object v2, p0, Labcd/Mb;->v5:[I

    aget v5, v2, v4

    if-eqz v5, :cond_7

    const/high16 v2, -0x80000000

    if-eq v5, v2, :cond_7

    const v2, 0x7fffffff

    and-int v6, v2, v5

    array-length v7, v1

    array-length v2, v1

    rem-int v2, v6, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    aget v8, v1, v2

    if-eqz v8, :cond_5

    add-int/lit8 v8, v7, -0x2

    :try_start_1
    rem-int v8, v6, v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v8

    array-length v8, v1

    rem-int/2addr v2, v8

    goto :goto_2

    :cond_1
    iget-object v0, p0, Labcd/Mb;->Zo:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Mb;->Zo:[I

    array-length v0, v0

    iget-object v1, p0, Labcd/Mb;->v5:[I

    array-length v1, v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Labcd/Mb;->Zo:[I

    move v0, v2

    :goto_3
    array-length v3, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v0, v3, :cond_2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v0, p0, Labcd/Mb;->gn:[J

    iget-object v3, p0, Labcd/Mb;->v5:[I

    iput-object v3, p0, Labcd/Mb;->Zo:[I

    iget-object v3, p0, Labcd/Mb;->VH:[J

    iput-object v3, p0, Labcd/Mb;->gn:[J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/Mb;->v5:[I

    iput-object v0, p0, Labcd/Mb;->Zo:[I

    iget-object v0, p0, Labcd/Mb;->VH:[J

    iput-object v0, p0, Labcd/Mb;->gn:[J

    sget-object v0, Labcd/Mb;->j6:[I

    iget v1, p0, Labcd/Mb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/Mb;->j6:[I

    iget v3, p0, Labcd/Mb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    aput v5, v1, v2

    :try_start_4
    iget-object v5, p0, Labcd/Mb;->VH:[J

    aget-wide v6, v5, v4

    aput-wide v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    iput-object v1, p0, Labcd/Mb;->v5:[I

    iput-object v0, p0, Labcd/Mb;->VH:[J

    iput v3, p0, Labcd/Mb;->u7:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method static synthetic DW(Labcd/Mb;)[J
    .registers 2

    iget-object v0, p0, Labcd/Mb;->VH:[J

    return-object v0
.end method

.method static synthetic j6(Labcd/Mb;)[I
    .registers 2

    iget-object v0, p0, Labcd/Mb;->v5:[I

    return-object v0
.end method


# virtual methods
.method public DW(I)J
    .registers 8

    const-wide v4, 0x5a0368eae5d58dddL    # 4.105915772173876E125

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Mb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x5a0368eae5d58dddL    # 4.105915772173876E125

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Mb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Mb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Mb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eq v0, p1, :cond_3

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Mb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Mb;->v5:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/Mb;->VH:[J

    aget-wide v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public DW(IJ)V
    .registers 12

    const-wide v2, 0x3fb4b1347241fa9L

    :try_start_0
    sget-boolean v0, Labcd/Mb;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v4, 0x3fb4b1347241fa9L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Mb;->FH(I)V

    invoke-virtual {p0, p1, p2, p3}, Labcd/Mb;->j6(IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Mb;->FH:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(I)V
    .registers 10

    const-wide v6, -0x5da12eaa99ee8905L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Mb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x5da12eaa99ee8905L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Mb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Mb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Mb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Labcd/Mb;->v5:[I

    const/high16 v4, -0x80000000

    aput v4, v0, v1

    iget v0, p0, Labcd/Mb;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Mb;->tp:I

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Mb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Mb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6()V
    .registers 7

    const-wide v4, 0x21bde8d38b24632fL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Mb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x21bde8d38b24632fL

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Mb;->u7:I

    if-lez v1, :cond_3

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Mb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/Mb;->v5:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Labcd/Mb;->VH:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Labcd/Mb;->VH:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Mb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public j6(IJ)V
    .registers 14

    const-wide v2, 0x83b0db2aaf1f9L

    const v0, 0x7fffffff

    const/4 v5, -0x1

    :try_start_0
    sget-boolean v1, Labcd/Mb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v6, 0x83b0db2aaf1f9L

    invoke-static {v6, v7, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v6, v0, p1

    iget-object v0, p0, Labcd/Mb;->v5:[I

    array-length v0, v0

    rem-int v1, v6, v0

    iget-object v0, p0, Labcd/Mb;->v5:[I

    array-length v7, v0

    iget-object v0, p0, Labcd/Mb;->v5:[I

    aget v4, v0, v1

    move v0, v5

    :goto_0
    if-eqz v4, :cond_5

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Labcd/Mb;->VH:[J

    aget-wide v8, v4, v1

    cmp-long v4, v8, p2

    if-nez v4, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/high16 v8, -0x80000000

    if-ne v4, v8, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v4, v7, -0x2

    rem-int v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/Mb;->v5:[I

    array-length v4, v4

    rem-int/2addr v1, v4

    iget-object v4, p0, Labcd/Mb;->v5:[I

    aget v4, v4, v1

    goto :goto_0

    :cond_5
    if-eq v0, v5, :cond_6

    move v1, v0

    :cond_6
    iget-object v4, p0, Labcd/Mb;->v5:[I

    aput p1, v4, v1

    iget-object v4, p0, Labcd/Mb;->VH:[J

    aput-wide p2, v4, v1

    iget v1, p0, Labcd/Mb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Mb;->tp:I

    if-ne v0, v5, :cond_7

    iget v0, p0, Labcd/Mb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Mb;->u7:I

    :cond_7
    iget v0, p0, Labcd/Mb;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Mb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Mb;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Mb;->FH:Z

    if-eqz v0, :cond_8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, -0x2a8823dc19b99a80L    # -5.344013660216275E103

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Mb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x2a8823dc19b99a80L    # -5.344013660216275E103

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Mb;->tp:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/Mb;->u7:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/Mb;->EQ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/Mb;->v5:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Labcd/Mb;->v5:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Labcd/Mb;->VH:[J

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Labcd/Mb;->VH:[J

    aget-wide v2, v0, v1

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(I)Z
    .registers 8

    const-wide v4, 0xdb93f1864e879c0L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Mb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xdb93f1864e879c0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Mb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Mb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Mb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eq v0, p1, :cond_3

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Mb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Mb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x2297f2e6aea7e750L    # -9.165246275571304E141

    :try_start_0
    sget-boolean v0, Labcd/Mb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2297f2e6aea7e750L    # -9.165246275571304E141

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Mb;->tp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
