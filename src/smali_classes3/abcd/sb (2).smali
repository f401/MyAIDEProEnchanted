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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb87812fb89eedf7L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x5de573f993fcff1L

    :try_start_6
    const-class v3, Labcd/sb;

    const-wide v4, 0x6b773769841c99fL

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/sb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/sb;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/sb;->FH:Z

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

    const-wide v0, 0xa4731d20bb27241L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/sb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/sb$a;

    invoke-direct {v3, p0, v2}, Labcd/sb$a;-><init>(Labcd/sb;Labcd/rb;)V

    iput-object v3, p0, Labcd/sb;->Hw:Labcd/sb$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/sb;->EQ:I

    sget-object v4, Labcd/sb;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/sb;->v5:[I

    new-array v4, v4, [J

    iput-object v4, p0, Labcd/sb;->VH:[J

    iput v3, p0, Labcd/sb;->u7:I

    iput v3, p0, Labcd/sb;->tp:I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Labcd/sb;->FH:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 10

    const-wide v0, 0xe3f246822863adL

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/sb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/sb$a;

    invoke-direct {v3, p0, v2}, Labcd/sb$a;-><init>(Labcd/sb;Labcd/rb;)V

    iput-object v3, p0, Labcd/sb;->Hw:Labcd/sb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Labcd/sb;->EQ:I

    sget-object v5, Labcd/sb;->j6:[I

    aget v4, v5, v4

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/sb;->v5:[I

    new-array v4, v4, [J

    iput-object v4, p0, Labcd/sb;->VH:[J

    const/4 v4, 0x0

    iput v4, p0, Labcd/sb;->u7:I

    iput v4, p0, Labcd/sb;->tp:I

    :goto_32
    if-ge v4, v3, :cond_42

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Labcd/sb;->j6(IJ)V
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_43

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_42
    return-void

    :catchall_43
    move-exception v3

    sget-boolean v4, Labcd/sb;->FH:Z

    if-eqz v4, :cond_4b

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v3

    :goto_4d
    goto :goto_4c
.end method

.method private DW()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x12e5e776a77a1461L
    .end annotation

    const-wide v0, 0x8818b2e0049e8b8L  # 1.0626599905952828E-267

    :try_start_5
    sget-boolean v2, Labcd/sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/sb;->tp:I

    iget-object v3, p0, Labcd/sb;->v5:[I

    array-length v4, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    if-le v2, v4, :cond_2a

    iget v2, p0, Labcd/sb;->EQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/sb;->EQ:I

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/sb;->Zo:[I

    iput-object v3, p0, Labcd/sb;->gn:[J

    sget-object v3, Labcd/sb;->j6:[I

    aget v2, v3, v2

    new-array v3, v2, [I

    :goto_27
    new-array v2, v2, [J

    goto :goto_58

    :cond_2a
    iget-object v2, p0, Labcd/sb;->Zo:[I

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
    iget-object v3, p0, Labcd/sb;->gn:[J

    iget-object v4, p0, Labcd/sb;->v5:[I

    iput-object v4, p0, Labcd/sb;->Zo:[I

    iget-object v4, p0, Labcd/sb;->VH:[J

    iput-object v4, p0, Labcd/sb;->gn:[J

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_58

    :cond_49
    iput-object v3, p0, Labcd/sb;->Zo:[I

    iget-object v2, p0, Labcd/sb;->VH:[J

    iput-object v2, p0, Labcd/sb;->gn:[J

    sget-object v2, Labcd/sb;->j6:[I

    iget v3, p0, Labcd/sb;->EQ:I

    aget v2, v2, v3

    new-array v3, v2, [I

    goto :goto_27

    :goto_58
    const/4 v4, 0x0

    :goto_59
    iget-object v6, p0, Labcd/sb;->v5:[I

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
    iget-object v6, p0, Labcd/sb;->VH:[J

    aget-wide v7, v6, v5

    aput-wide v7, v2, v9

    add-int/lit8 v4, v4, 0x1

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_89
    iput-object v3, p0, Labcd/sb;->v5:[I

    iput-object v2, p0, Labcd/sb;->VH:[J

    iput v4, p0, Labcd/sb;->u7:I
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_90

    return-void

    :catchall_90
    move-exception v2

    sget-boolean v3, Labcd/sb;->FH:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v2

    :goto_9a
    goto :goto_99
.end method

.method static synthetic DW(Labcd/sb;)[J
    .registers 1

    iget-object p0, p0, Labcd/sb;->VH:[J

    return-object p0
.end method

.method static synthetic j6(Labcd/sb;)[I
    .registers 1

    iget-object p0, p0, Labcd/sb;->v5:[I

    return-object p0
.end method


# virtual methods
.method public DW(I)J
    .registers 9

    const-wide v0, -0x2695635892ef9f70L

    :try_start_5
    sget-boolean v2, Labcd/sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/sb;->v5:[I

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

    iget-object v3, p0, Labcd/sb;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5

    goto :goto_1d

    :cond_32
    iget-object v2, p0, Labcd/sb;->VH:[J

    aget-wide v0, v2, v5
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-wide v0

    :catchall_37
    move-exception v2

    sget-boolean v3, Labcd/sb;->FH:Z

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

.method public FH(I)V
    .registers 9

    const-wide v0, -0x705f6eae44eecf10L

    :try_start_5
    sget-boolean v2, Labcd/sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/sb;->v5:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    :goto_1d
    if-eqz v3, :cond_3c

    if-ne v3, p1, :cond_2e

    iget-object v2, p0, Labcd/sb;->v5:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v4

    iget v2, p0, Labcd/sb;->tp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/sb;->tp:I

    return-void

    :cond_2e
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/sb;->v5:[I

    array-length v6, v3

    rem-int/2addr v4, v6

    aget v3, v3, v4
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3d

    goto :goto_1d

    :cond_3c
    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Labcd/sb;->FH:Z

    if-eqz v3, :cond_4a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v2

    :goto_4c
    goto :goto_4b
.end method

.method public FH(Labcd/sb;)V
    .registers 10

    const-wide v0, 0x1392e17e94c39125L

    :try_start_5
    sget-boolean v2, Labcd/sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p1, Labcd/sb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_32

    aget v4, v4, v3

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_22

    iget-object v4, p1, Labcd/sb;->VH:[J

    aget-wide v5, v4, v3

    invoke-virtual {p0, v2, v5, v6}, Labcd/sb;->j6(IJ)V

    goto :goto_2f

    :cond_22
    if-eqz v4, :cond_2f

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2f

    iget-object v5, p1, Labcd/sb;->VH:[J

    aget-wide v6, v5, v3

    invoke-virtual {p0, v4, v6, v7}, Labcd/sb;->j6(IJ)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_33

    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_32
    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Labcd/sb;->FH:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v2

    :goto_3d
    goto :goto_3c
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0xd65ac855a44b040L

    :try_start_5
    sget-boolean v2, Labcd/sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/sb;->u7:I

    if-lez v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/sb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1c

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    iput v2, p0, Labcd/sb;->u7:I

    iput v2, p0, Labcd/sb;->tp:I
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/sb;->FH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    goto :goto_2b

    :goto_2a
    throw v2

    :goto_2b
    goto :goto_2a
.end method

.method public j6(IJ)V
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/sb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x2953d775066f7b18L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const v0, 0x7fffffff

    if-nez p1, :cond_1e

    const p1, 0x7fffffff

    :cond_1e
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_29
    if-eqz v1, :cond_54

    const/high16 v6, -0x80000000

    if-ne v1, p1, :cond_43

    iget-object v1, p0, Labcd/sb;->VH:[J

    aget-wide v7, v1, v2

    cmp-long v1, v7, p2

    if-nez v1, :cond_38

    return-void

    :cond_38
    iget-object v1, p0, Labcd/sb;->v5:[I

    aput v6, v1, v2

    iget v1, p0, Labcd/sb;->tp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/sb;->tp:I

    goto :goto_46

    :cond_43
    if-ne v1, v6, :cond_46

    move v5, v2

    :cond_46
    :goto_46
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/sb;->v5:[I

    array-length v6, v1

    rem-int/2addr v2, v6

    aget v1, v1, v2

    goto :goto_29

    :cond_54
    if-eq v5, v4, :cond_57

    move v2, v5

    :cond_57
    iget-object v0, p0, Labcd/sb;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/sb;->VH:[J

    aput-wide p2, v1, v2

    iget v1, p0, Labcd/sb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/sb;->tp:I

    if-ne v5, v4, :cond_6d

    iget v1, p0, Labcd/sb;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/sb;->u7:I

    :cond_6d
    iget v1, p0, Labcd/sb;->u7:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_77

    invoke-direct {p0}, Labcd/sb;->DW()V
    :try_end_77
    .catchall {:try_start_0 .. :try_end_77} :catchall_78

    :cond_77
    return-void

    :catchall_78
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/sb;->FH:Z

    if-eqz v0, :cond_92

    const-wide v1, 0x2953d775066f7b18L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_92
    goto :goto_94

    :goto_93
    throw v6

    :goto_94
    goto :goto_93
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v0, 0x6721702b7e9476e5L  # 6.069991015395217E188

    :try_start_5
    sget-boolean v2, Labcd/sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/sb;->tp:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/sb;->EQ:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Labcd/sb;->v5:[I

    array-length v4, v3

    if-ge v2, v4, :cond_31

    aget v3, v3, v2

    if-eqz v3, :cond_2e

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2e

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Labcd/sb;->VH:[J

    aget-wide v4, v3, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_32

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_31
    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/sb;->FH:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v2

    :goto_3c
    goto :goto_3b
.end method

.method public j6(I)Z
    .registers 9

    const-wide v0, -0x112bd3d7ed7e5b3L

    :try_start_5
    sget-boolean v2, Labcd/sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/sb;->v5:[I

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

    iget-object v3, p0, Labcd/sb;->v5:[I

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

    sget-boolean v3, Labcd/sb;->FH:Z

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
    .registers 10

    const-wide v0, -0x24f3e59f5924864fL  # -3.8960219902285983E130

    :try_start_5
    sget-boolean v2, Labcd/sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_6e

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget-object v4, p0, Labcd/sb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5c

    aget v4, v4, v3

    if-eqz v4, :cond_59

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_59

    iget-object v5, p0, Labcd/sb;->VH:[J

    aget-wide v6, v5, v3
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_6e

    const v5, 0x7fffffff

    const-string v8, ", "

    if-ne v4, v5, :cond_3f

    :try_start_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0->"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_59

    :cond_3f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_27 .. :try_end_6d} :catchall_6e

    return-object v0

    :catchall_6e
    move-exception v2

    sget-boolean v3, Labcd/sb;->FH:Z

    if-eqz v3, :cond_76

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_76
    goto :goto_78

    :goto_77
    throw v2

    :goto_78
    goto :goto_77
.end method
