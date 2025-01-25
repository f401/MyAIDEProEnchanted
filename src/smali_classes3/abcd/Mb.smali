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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x264ad0815fe5856fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x151c3f1a93f1c20L

    :try_start_6
    const-class v3, Labcd/Mb;

    const-wide v4, 0x32c88698d5ce8b5bL  # 4.657722131240885E-64

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Mb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Mb;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Mb;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3

    :array_2a
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
        0x40000003  # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v0, -0x1ffb51b0e49b2678L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Mb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Mb$a;

    invoke-direct {v3, p0, v2}, Labcd/Mb$a;-><init>(Labcd/Mb;Labcd/Lb;)V

    iput-object v3, p0, Labcd/Mb;->Hw:Labcd/Mb$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/Mb;->EQ:I

    sget-object v4, Labcd/Mb;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/Mb;->v5:[I

    new-array v4, v4, [J

    iput-object v4, p0, Labcd/Mb;->VH:[J

    iput v3, p0, Labcd/Mb;->u7:I

    iput v3, p0, Labcd/Mb;->tp:I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Labcd/Mb;->FH:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 9

    const-wide v0, 0x29449474722b7a00L  # 6.845968396905212E-110

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Mb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Mb$a;

    invoke-direct {v3, p0, v2}, Labcd/Mb$a;-><init>(Labcd/Mb;Labcd/Lb;)V

    iput-object v3, p0, Labcd/Mb;->Hw:Labcd/Mb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Mb;->tp:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Mb;->u7:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Mb;->EQ:I

    sget-object v4, Labcd/Mb;->j6:[I

    aget v3, v4, v3

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Mb;->v5:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_33
    iget-object v5, p0, Labcd/Mb;->v5:[I

    array-length v6, v5

    if-ge v4, v6, :cond_41

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_41
    sget-object v4, Labcd/Mb;->j6:[I

    iget v5, p0, Labcd/Mb;->EQ:I

    aget v4, v4, v5

    new-array v4, v4, [J

    iput-object v4, p0, Labcd/Mb;->VH:[J

    :goto_4b
    iget-object v4, p0, Labcd/Mb;->VH:[J

    array-length v5, v4

    if-ge v3, v5, :cond_59

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v3
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_5a

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_59
    return-void

    :catchall_5a
    move-exception v3

    sget-boolean v4, Labcd/Mb;->FH:Z

    if-eqz v4, :cond_62

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v3

    :goto_64
    goto :goto_63
.end method

.method private DW()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x24e1924daaa41525L
    .end annotation

    const-wide v0, -0x7d94b2b8a5d5527L  # -5.997824720984488E270

    :try_start_5
    sget-boolean v2, Labcd/Mb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Mb;->tp:I

    iget-object v3, p0, Labcd/Mb;->v5:[I

    array-length v4, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    if-le v2, v4, :cond_2a

    iget v2, p0, Labcd/Mb;->EQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Mb;->EQ:I

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/Mb;->Zo:[I

    iput-object v3, p0, Labcd/Mb;->gn:[J

    sget-object v3, Labcd/Mb;->j6:[I

    aget v2, v3, v2

    new-array v3, v2, [I

    :goto_27
    new-array v2, v2, [J

    goto :goto_58

    :cond_2a
    iget-object v2, p0, Labcd/Mb;->Zo:[I

    if-eqz v2, :cond_49

    array-length v4, v2

    array-length v6, v3

    if-ne v4, v6, :cond_49

    const/4 v3, 0x0

    :goto_33
    array-length v4, v2
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_90

    if-ge v3, v4, :cond_3b

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3b
    :try_start_3b
    iget-object v3, p0, Labcd/Mb;->gn:[J

    iget-object v4, p0, Labcd/Mb;->v5:[I

    iput-object v4, p0, Labcd/Mb;->Zo:[I

    iget-object v4, p0, Labcd/Mb;->VH:[J

    iput-object v4, p0, Labcd/Mb;->gn:[J

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_58

    :cond_49
    iput-object v3, p0, Labcd/Mb;->Zo:[I

    iget-object v2, p0, Labcd/Mb;->VH:[J

    iput-object v2, p0, Labcd/Mb;->gn:[J

    sget-object v2, Labcd/Mb;->j6:[I

    iget v3, p0, Labcd/Mb;->EQ:I

    aget v2, v2, v3

    new-array v3, v2, [I

    goto :goto_27

    :goto_58
    const/4 v4, 0x0

    :goto_59
    iget-object v6, p0, Labcd/Mb;->v5:[I

    array-length v7, v6

    if-ge v5, v7, :cond_89

    aget v6, v6, v5

    if-eqz v6, :cond_86

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_86

    const v7, 0x7fffffff

    and-int/2addr v7, v6

    array-length v8, v3

    array-length v9, v3

    rem-int v9, v7, v9
    :try_end_6e
    .catchall {:try_start_3b .. :try_end_6e} :catchall_90

    :goto_6e
    aget v10, v3, v9

    if-eqz v10, :cond_7c

    add-int/lit8 v10, v8, -0x2

    :try_start_74
    rem-int v10, v7, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    array-length v10, v3

    rem-int/2addr v9, v10
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_90

    goto :goto_6e

    :cond_7c
    aput v6, v3, v9

    :try_start_7e
    iget-object v6, p0, Labcd/Mb;->VH:[J

    aget-wide v7, v6, v5

    aput-wide v7, v2, v9

    add-int/lit8 v4, v4, 0x1

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_89
    iput-object v3, p0, Labcd/Mb;->v5:[I

    iput-object v2, p0, Labcd/Mb;->VH:[J

    iput v4, p0, Labcd/Mb;->u7:I
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_90

    return-void

    :catchall_90
    move-exception v2

    sget-boolean v3, Labcd/Mb;->FH:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v2

    :goto_9a
    goto :goto_99
.end method

.method static synthetic DW(Labcd/Mb;)[J
    .registers 1

    iget-object p0, p0, Labcd/Mb;->VH:[J

    return-object p0
.end method

.method static synthetic j6(Labcd/Mb;)[I
    .registers 1

    iget-object p0, p0, Labcd/Mb;->v5:[I

    return-object p0
.end method


# virtual methods
.method public DW(I)J
    .registers 9

    const-wide v0, 0x5a0368eae5d58dddL  # 4.105915772173876E125

    :try_start_5
    sget-boolean v2, Labcd/Mb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Mb;->v5:[I

    array-length v4, v3

    array-length v5, v3

    rem-int v5, v2, v5

    aget v3, v3, v5

    :goto_1d
    if-eq v3, p1, :cond_32

    if-nez v3, :cond_24

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_24
    add-int/lit8 v3, v4, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v3

    iget-object v3, p0, Labcd/Mb;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5

    goto :goto_1d

    :cond_32
    iget-object v2, p0, Labcd/Mb;->VH:[J

    aget-wide v0, v2, v5
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-wide v0

    :catchall_37
    move-exception v2

    sget-boolean v3, Labcd/Mb;->FH:Z

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    goto :goto_46

    :goto_45
    throw v2

    :goto_46
    goto :goto_45
.end method

.method public DW(IJ)V
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/Mb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x3fb4b1347241fa9L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1}, Labcd/Mb;->FH(I)V

    invoke-virtual {p0, p1, p2, p3}, Labcd/Mb;->j6(IJ)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/Mb;->FH:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x3fb4b1347241fa9L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public FH(I)V
    .registers 9

    const-wide v0, -0x5da12eaa99ee8905L

    :try_start_5
    sget-boolean v2, Labcd/Mb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Mb;->v5:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    :goto_1d
    if-eqz v3, :cond_3b

    if-ne v3, p1, :cond_2d

    iget-object v3, p0, Labcd/Mb;->v5:[I

    const/high16 v6, -0x80000000

    aput v6, v3, v4

    iget v3, p0, Labcd/Mb;->tp:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Labcd/Mb;->tp:I

    :cond_2d
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/Mb;->v5:[I

    array-length v6, v3

    rem-int/2addr v4, v6

    aget v3, v3, v4
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3c

    goto :goto_1d

    :cond_3b
    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/Mb;->FH:Z

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    goto :goto_4b

    :goto_4a
    throw v2

    :goto_4b
    goto :goto_4a
.end method

.method public j6()V
    .registers 8

    const-wide v0, 0x21bde8d38b24632fL

    :try_start_5
    sget-boolean v2, Labcd/Mb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Mb;->u7:I

    if-lez v2, :cond_2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/Mb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1c

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    iget-object v4, p0, Labcd/Mb;->VH:[J

    array-length v5, v4

    if-ge v3, v5, :cond_29

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_29
    iput v2, p0, Labcd/Mb;->u7:I

    iput v2, p0, Labcd/Mb;->tp:I
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :cond_2d
    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/Mb;->FH:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    goto :goto_38

    :goto_37
    throw v2

    :goto_38
    goto :goto_37
.end method

.method public j6(IJ)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Mb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x83b0db2aaf1f9L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const v0, 0x7fffffff

    if-nez p1, :cond_1e

    const p1, 0x7fffffff

    :cond_1e
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Mb;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_29
    if-eqz v1, :cond_49

    if-ne v1, p1, :cond_36

    iget-object v1, p0, Labcd/Mb;->VH:[J

    aget-wide v6, v1, v2

    cmp-long v1, v6, p2

    if-nez v1, :cond_3b

    return-void

    :cond_36
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_3b

    move v5, v2

    :cond_3b
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/Mb;->v5:[I

    array-length v6, v1

    rem-int/2addr v2, v6

    aget v1, v1, v2

    goto :goto_29

    :cond_49
    if-eq v5, v4, :cond_4c

    move v2, v5

    :cond_4c
    iget-object v0, p0, Labcd/Mb;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/Mb;->VH:[J

    aput-wide p2, v1, v2

    iget v1, p0, Labcd/Mb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Mb;->tp:I

    if-ne v5, v4, :cond_62

    iget v1, p0, Labcd/Mb;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Mb;->u7:I

    :cond_62
    iget v1, p0, Labcd/Mb;->u7:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_6c

    invoke-direct {p0}, Labcd/Mb;->DW()V
    :try_end_6c
    .catchall {:try_start_0 .. :try_end_6c} :catchall_6d

    :cond_6c
    return-void

    :catchall_6d
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Mb;->FH:Z

    if-eqz v0, :cond_87

    const-wide v1, 0x83b0db2aaf1f9L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    goto :goto_89

    :goto_88
    throw v6

    :goto_89
    goto :goto_88
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v0, -0x2a8823dc19b99a80L  # -5.344013660216275E103

    :try_start_5
    sget-boolean v2, Labcd/Mb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Mb;->tp:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Mb;->u7:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Mb;->EQ:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    iget-object v4, p0, Labcd/Mb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2a

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2a
    :goto_2a
    iget-object v3, p0, Labcd/Mb;->VH:[J

    array-length v4, v3

    if-ge v2, v4, :cond_37

    aget-wide v4, v3, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_38

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_37
    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/Mb;->FH:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    goto :goto_42

    :goto_41
    throw v2

    :goto_42
    goto :goto_41
.end method

.method public j6(I)Z
    .registers 9

    const-wide v0, 0xdb93f1864e879c0L

    :try_start_5
    sget-boolean v2, Labcd/Mb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Mb;->v5:[I

    array-length v4, v3

    array-length v5, v3

    rem-int v5, v2, v5

    aget v3, v3, v5

    :goto_1d
    const/4 v6, 0x1

    if-eq v3, p1, :cond_31

    if-nez v3, :cond_24

    const/4 p1, 0x0

    return p1

    :cond_24
    add-int/lit8 v3, v4, -0x2

    rem-int v3, v2, v3

    add-int/2addr v3, v6

    add-int/2addr v5, v3

    iget-object v3, p0, Labcd/Mb;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_32

    goto :goto_1d

    :cond_31
    return v6

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Mb;->FH:Z

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v2

    :goto_41
    goto :goto_40
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x2297f2e6aea7e750L  # -9.165246275571304E141

    :try_start_5
    sget-boolean v2, Labcd/Mb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[Size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/Mb;->tp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-object v0

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Mb;->FH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method
