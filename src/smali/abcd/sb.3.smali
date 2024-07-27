.class public Labcd/sb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/sb$a;
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
        field = 0x1be9a46920808e0dL
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0x46adb98d4c37311L
    .end annotation
.end field

.field public final Hw:Labcd/sb$a;

.field private VH:[J
    .annotation runtime Labcd/ru;
        field = -0x28660a63f3f72045L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x989d5ff49e17b00L
    .end annotation
.end field

.field private gn:[J
    .annotation runtime Labcd/ru;
        field = -0x318922d7e7bf08e0L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x25a47b5a14015a9cL
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x216b037a806e96e8L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = -0x21f7f098a470edc3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb87812fb89eedf7L
    .end annotation

    const-wide v8, -0x5de573f993fcff1L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/sb;

    const-wide v2, 0x6b773769841c99fL

    const-wide v4, 0x6b773769841c99fL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/sb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5de573f993fcff1L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/sb;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

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

    const-wide v4, 0xa4731d20bb27241L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/sb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa4731d20bb27241L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/sb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/sb$a;-><init>(Labcd/sb;Labcd/rb;)V

    iput-object v0, p0, Labcd/sb;->Hw:Labcd/sb$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/sb;->EQ:I

    sget-object v0, Labcd/sb;->j6:[I

    iget v1, p0, Labcd/sb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/sb;->v5:[I

    sget-object v0, Labcd/sb;->j6:[I

    iget v1, p0, Labcd/sb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/sb;->VH:[J

    const/4 v0, 0x0

    iput v0, p0, Labcd/sb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/sb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 12

    const-wide v8, 0xe3f246822863adL

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xe3f246822863adL

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/sb$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Labcd/sb$a;-><init>(Labcd/sb;Labcd/rb;)V

    iput-object v1, p0, Labcd/sb;->Hw:Labcd/sb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Labcd/sb;->EQ:I

    sget-object v2, Labcd/sb;->j6:[I

    iget v3, p0, Labcd/sb;->EQ:I

    aget v2, v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/sb;->v5:[I

    sget-object v2, Labcd/sb;->j6:[I

    iget v3, p0, Labcd/sb;->EQ:I

    aget v2, v2, v3

    new-array v2, v2, [J

    iput-object v2, p0, Labcd/sb;->VH:[J

    const/4 v2, 0x0

    iput v2, p0, Labcd/sb;->u7:I

    const/4 v2, 0x0

    iput v2, p0, Labcd/sb;->tp:I

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Labcd/sb;->j6(IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private DW()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x12e5e776a77a1461L
    .end annotation

    const-wide v10, 0x8818b2e0049e8b8L    # 1.0626599905952828E-267

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/sb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8818b2e0049e8b8L    # 1.0626599905952828E-267

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/sb;->tp:I

    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v1, v1

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_1

    iget v0, p0, Labcd/sb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/sb;->EQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/sb;->Zo:[I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/sb;->gn:[J

    sget-object v0, Labcd/sb;->j6:[I

    iget v1, p0, Labcd/sb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/sb;->j6:[I

    iget v3, p0, Labcd/sb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [J

    :goto_0
    move v4, v2

    move v3, v2

    :goto_1
    iget-object v2, p0, Labcd/sb;->v5:[I

    array-length v2, v2

    if-ge v4, v2, :cond_6

    iget-object v2, p0, Labcd/sb;->v5:[I

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
    iget-object v0, p0, Labcd/sb;->Zo:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/sb;->Zo:[I

    array-length v0, v0

    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v1, v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Labcd/sb;->Zo:[I

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
    iget-object v0, p0, Labcd/sb;->gn:[J

    iget-object v3, p0, Labcd/sb;->v5:[I

    iput-object v3, p0, Labcd/sb;->Zo:[I

    iget-object v3, p0, Labcd/sb;->VH:[J

    iput-object v3, p0, Labcd/sb;->gn:[J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/sb;->v5:[I

    iput-object v0, p0, Labcd/sb;->Zo:[I

    iget-object v0, p0, Labcd/sb;->VH:[J

    iput-object v0, p0, Labcd/sb;->gn:[J

    sget-object v0, Labcd/sb;->j6:[I

    iget v1, p0, Labcd/sb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/sb;->j6:[I

    iget v3, p0, Labcd/sb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    aput v5, v1, v2

    :try_start_4
    iget-object v5, p0, Labcd/sb;->VH:[J

    aget-wide v6, v5, v4

    aput-wide v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    iput-object v1, p0, Labcd/sb;->v5:[I

    iput-object v0, p0, Labcd/sb;->VH:[J

    iput v3, p0, Labcd/sb;->u7:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method static synthetic DW(Labcd/sb;)[J
    .registers 2

    iget-object v0, p0, Labcd/sb;->VH:[J

    return-object v0
.end method

.method static synthetic j6(Labcd/sb;)[I
    .registers 2

    iget-object v0, p0, Labcd/sb;->v5:[I

    return-object v0
.end method


# virtual methods
.method public DW(I)J
    .registers 8

    const-wide v4, -0x2695635892ef9f70L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x2695635892ef9f70L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/sb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/sb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/sb;->v5:[I

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

    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/sb;->v5:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/sb;->VH:[J

    aget-wide v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(I)V
    .registers 8

    const-wide v4, -0x705f6eae44eecf10L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x705f6eae44eecf10L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/sb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/sb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/sb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Labcd/sb;->v5:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    iget v0, p0, Labcd/sb;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/sb;->tp:I

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/sb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(Labcd/sb;)V
    .registers 8

    const-wide v4, 0x1392e17e94c39125L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1392e17e94c39125L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p1, Labcd/sb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Labcd/sb;->v5:[I

    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    iget-object v2, p1, Labcd/sb;->VH:[J

    aget-wide v2, v2, v0

    invoke-virtual {p0, v1, v2, v3}, Labcd/sb;->j6(IJ)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v2, p1, Labcd/sb;->VH:[J

    aget-wide v2, v2, v0

    invoke-virtual {p0, v1, v2, v3}, Labcd/sb;->j6(IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0xd65ac855a44b040L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xd65ac855a44b040L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/sb;->u7:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/sb;->v5:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/sb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/sb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(IJ)V
    .registers 16

    const-wide v2, 0x2953d775066f7b18L

    const v0, 0x7fffffff

    const/high16 v10, -0x80000000

    const/4 v5, -0x1

    :try_start_0
    sget-boolean v1, Labcd/sb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v6, 0x2953d775066f7b18L

    invoke-static {v6, v7, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v6, v0, p1

    iget-object v0, p0, Labcd/sb;->v5:[I

    array-length v0, v0

    rem-int v1, v6, v0

    iget-object v0, p0, Labcd/sb;->v5:[I

    array-length v7, v0

    iget-object v0, p0, Labcd/sb;->v5:[I

    aget v4, v0, v1

    move v0, v5

    :goto_0
    if-eqz v4, :cond_6

    if-ne v4, p1, :cond_5

    iget-object v4, p0, Labcd/sb;->VH:[J

    aget-wide v8, v4, v1

    cmp-long v4, v8, p2

    if-nez v4, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Labcd/sb;->v5:[I

    const/high16 v8, -0x80000000

    aput v8, v4, v1

    iget v4, p0, Labcd/sb;->tp:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Labcd/sb;->tp:I

    :cond_4
    :goto_2
    add-int/lit8 v4, v7, -0x2

    rem-int v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/sb;->v5:[I

    array-length v4, v4

    rem-int/2addr v1, v4

    iget-object v4, p0, Labcd/sb;->v5:[I

    aget v4, v4, v1

    goto :goto_0

    :cond_5
    if-ne v4, v10, :cond_4

    move v0, v1

    goto :goto_2

    :cond_6
    if-eq v0, v5, :cond_7

    move v1, v0

    :cond_7
    iget-object v4, p0, Labcd/sb;->v5:[I

    aput p1, v4, v1

    iget-object v4, p0, Labcd/sb;->VH:[J

    aput-wide p2, v4, v1

    iget v1, p0, Labcd/sb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/sb;->tp:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Labcd/sb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/sb;->u7:I

    :cond_8
    iget v0, p0, Labcd/sb;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/sb;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/sb;->FH:Z

    if-eqz v0, :cond_9

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, 0x6721702b7e9476e5L    # 6.069991015395217E188

    :try_start_0
    sget-boolean v0, Labcd/sb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6721702b7e9476e5L    # 6.069991015395217E188

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/sb;->tp:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/sb;->EQ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/sb;->v5:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Labcd/sb;->v5:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Labcd/sb;->VH:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(I)Z
    .registers 8

    const-wide v4, -0x112bd3d7ed7e5b3L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x112bd3d7ed7e5b3L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/sb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/sb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/sb;->v5:[I

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

    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/sb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v6, -0x24f3e59f5924864fL    # -3.8960219902285983E130

    :try_start_0
    sget-boolean v0, Labcd/sb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x24f3e59f5924864fL    # -3.8960219902285983E130

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/sb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/sb;->v5:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Labcd/sb;->VH:[J

    aget-wide v4, v3, v1

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
