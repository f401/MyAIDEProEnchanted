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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2e2154f78cc4a20fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x24f0a1bba2f094a7L  # -4.348687123306842E130

    :try_start_6
    const-class v3, Labcd/Ub;

    const-wide v4, 0x34cdff3680e7944L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Ub;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Ub;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Ub;->FH:Z

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
    .registers 6

    const-wide v0, -0x21275c3a6a156c60L  # -7.876511012414485E148

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Ub;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Ub$a;

    invoke-direct {v3, p0, v2}, Labcd/Ub$a;-><init>(Labcd/Ub;Labcd/Tb;)V

    iput-object v3, p0, Labcd/Ub;->Hw:Labcd/Ub$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/Ub;->u7:I

    sget-object v4, Labcd/Ub;->j6:[I

    aget v4, v4, v3

    new-array v4, v4, [J

    iput-object v4, p0, Labcd/Ub;->v5:[J

    iput v3, p0, Labcd/Ub;->VH:I

    iput v3, p0, Labcd/Ub;->gn:I
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v3

    sget-boolean v4, Labcd/Ub;->FH:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 9

    const-wide v0, 0x2bcdb3fef4dc0f4L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Ub;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Ub$a;

    invoke-direct {v3, p0, v2}, Labcd/Ub$a;-><init>(Labcd/Ub;Labcd/Tb;)V

    iput-object v3, p0, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Ub;->gn:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Ub;->VH:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Ub;->u7:I

    sget-object v4, Labcd/Ub;->j6:[I

    aget v3, v4, v3

    new-array v3, v3, [J

    iput-object v3, p0, Labcd/Ub;->v5:[J

    const/4 v3, 0x0

    :goto_32
    iget-object v4, p0, Labcd/Ub;->v5:[J

    array-length v5, v4

    if-ge v3, v5, :cond_40

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v3
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_41

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_40
    return-void

    :catchall_41
    move-exception v3

    sget-boolean v4, Labcd/Ub;->FH:Z

    if-eqz v4, :cond_49

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    goto :goto_4b

    :goto_4a
    throw v3

    :goto_4b
    goto :goto_4a
.end method

.method private DW()V
    .registers 18
    .annotation runtime Labcd/su;
        method = -0x30dfcca397261fbdL
    .end annotation

    move-object/from16 v1, p0

    const-wide v2, -0xa009eb49164c784L  # -2.412403792967416E260

    :try_start_7
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_e

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    iget v0, v1, Labcd/Ub;->gn:I

    iget-object v4, v1, Labcd/Ub;->v5:[J

    array-length v5, v4

    mul-int/lit8 v0, v0, 0x2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-le v0, v5, :cond_2a

    iget v0, v1, Labcd/Ub;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Labcd/Ub;->u7:I

    const/4 v4, 0x0

    iput-object v4, v1, Labcd/Ub;->Zo:[J

    sget-object v4, Labcd/Ub;->j6:[I

    aget v0, v4, v0

    :goto_27
    new-array v0, v0, [J

    goto :goto_49

    :cond_2a
    iget-object v0, v1, Labcd/Ub;->Zo:[J

    if-eqz v0, :cond_40

    array-length v5, v0

    array-length v9, v4

    if-ne v5, v9, :cond_40

    const/4 v4, 0x0

    :goto_33
    array-length v5, v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_85

    if-ge v4, v5, :cond_3b

    aput-wide v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_3b
    :try_start_3b
    iget-object v4, v1, Labcd/Ub;->v5:[J

    iput-object v4, v1, Labcd/Ub;->Zo:[J

    goto :goto_49

    :cond_40
    iput-object v4, v1, Labcd/Ub;->Zo:[J

    sget-object v0, Labcd/Ub;->j6:[I

    iget v4, v1, Labcd/Ub;->u7:I

    aget v0, v0, v4

    goto :goto_27

    :goto_49
    const/4 v4, 0x0

    :goto_4a
    iget-object v5, v1, Labcd/Ub;->v5:[J

    array-length v9, v5

    if-ge v8, v9, :cond_80

    aget-wide v9, v5, v8

    cmp-long v5, v9, v6

    if-eqz v5, :cond_7d

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v5, v9, v11

    if-eqz v5, :cond_7d

    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v11, v9

    array-length v5, v0

    int-to-long v13, v5

    rem-long v13, v11, v13

    long-to-int v5, v13

    array-length v13, v0

    int-to-long v13, v13

    const-wide/16 v15, 0x2

    sub-long/2addr v13, v15

    rem-long/2addr v11, v13
    :try_end_6c
    .catchall {:try_start_3b .. :try_end_6c} :catchall_85

    long-to-int v12, v11

    :goto_6d
    aget-wide v13, v0, v5

    cmp-long v11, v13, v6

    if-eqz v11, :cond_79

    add-int/lit8 v11, v12, 0x1

    add-int/2addr v5, v11

    :try_start_76
    array-length v11, v0

    rem-int/2addr v5, v11
    :try_end_78
    .catchall {:try_start_76 .. :try_end_78} :catchall_85

    goto :goto_6d

    :cond_79
    aput-wide v9, v0, v5

    add-int/lit8 v4, v4, 0x1

    :cond_7d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    :cond_80
    :try_start_80
    iput-object v0, v1, Labcd/Ub;->v5:[J

    iput v4, v1, Labcd/Ub;->VH:I
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_85

    return-void

    :catchall_85
    move-exception v0

    sget-boolean v4, Labcd/Ub;->FH:Z

    if-eqz v4, :cond_8d

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8d
    goto :goto_8f

    :goto_8e
    throw v0

    :goto_8f
    goto :goto_8e
.end method

.method static synthetic j6(Labcd/Ub;)[J
    .registers 1

    iget-object p0, p0, Labcd/Ub;->v5:[J

    return-object p0
.end method


# virtual methods
.method public DW(II)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x39b2319a9101136cL  # -4.7229865012149546E30

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_28

    move-wide v0, v2

    :cond_28
    and-long/2addr v2, v0

    iget-object v6, p0, Labcd/Ub;->v5:[J

    array-length v7, v6

    int-to-long v7, v7

    rem-long v7, v2, v7

    long-to-int v8, v7

    array-length v7, v6

    int-to-long v9, v7

    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    rem-long/2addr v2, v9

    long-to-int v3, v2

    aget-wide v9, v6, v8

    :goto_39
    cmp-long v2, v9, v4

    if-eqz v2, :cond_4c

    cmp-long v2, v9, v0

    if-nez v2, :cond_42

    return-void

    :cond_42
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v8, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    array-length v6, v2

    rem-int/2addr v8, v6

    aget-wide v9, v2, v8

    goto :goto_39

    :cond_4c
    iget-object v2, p0, Labcd/Ub;->v5:[J

    aput-wide v0, v2, v8

    iget v0, p0, Labcd/Ub;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->gn:I

    iget v0, p0, Labcd/Ub;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->VH:I

    mul-int/lit8 v0, v0, 0x2

    array-length v1, v2

    if-le v0, v1, :cond_64

    invoke-direct {p0}, Labcd/Ub;->DW()V
    :try_end_64
    .catchall {:try_start_0 .. :try_end_64} :catchall_65

    :cond_64
    return-void

    :catchall_65
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_7e

    const-wide v2, -0x39b2319a9101136cL  # -4.7229865012149546E30

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7e
    goto :goto_80

    :goto_7f
    throw v0

    :goto_80
    goto :goto_7f
.end method

.method public DW(Labcd/Ub;)V
    .registers 12

    const-wide v0, 0x645cd8d35e8136a9L  # 2.8538935867016905E175

    :try_start_5
    sget-boolean v2, Labcd/Ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v3, p1, Labcd/Ub;->v5:[J

    array-length v4, v3

    if-ge v2, v4, :cond_33

    aget-wide v4, v3, v2

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_23

    invoke-virtual {p0, v8, v9}, Labcd/Ub;->j6(J)V

    goto :goto_30

    :cond_23
    cmp-long v3, v4, v8

    if-eqz v3, :cond_30

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v4, v6

    if-eqz v3, :cond_30

    invoke-virtual {p0, v4, v5}, Labcd/Ub;->j6(J)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_34

    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_33
    return-void

    :catchall_34
    move-exception v2

    sget-boolean v3, Labcd/Ub;->FH:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    goto :goto_3e

    :goto_3d
    throw v2

    :goto_3e
    goto :goto_3d
.end method

.method public FH(II)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x3322fd889380eed8L  # 2.3081510352216996E-62

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_28

    move-wide v0, v2

    :cond_28
    and-long/2addr v2, v0

    iget-object v6, p0, Labcd/Ub;->v5:[J

    array-length v7, v6

    int-to-long v7, v7

    rem-long v7, v2, v7

    long-to-int v8, v7

    array-length v7, v6

    int-to-long v9, v7

    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    rem-long/2addr v2, v9

    long-to-int v3, v2

    aget-wide v9, v6, v8

    :goto_39
    cmp-long v2, v9, v4

    if-eqz v2, :cond_4c

    cmp-long v2, v9, v0

    if-nez v2, :cond_42

    return-void

    :cond_42
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v8, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    array-length v6, v2

    rem-int/2addr v8, v6

    aget-wide v9, v2, v8

    goto :goto_39

    :cond_4c
    iget-object v2, p0, Labcd/Ub;->v5:[J

    aput-wide v0, v2, v8

    iget v0, p0, Labcd/Ub;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->gn:I

    iget v0, p0, Labcd/Ub;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ub;->VH:I

    mul-int/lit8 v0, v0, 0x2

    array-length v1, v2

    if-le v0, v1, :cond_64

    invoke-direct {p0}, Labcd/Ub;->DW()V
    :try_end_64
    .catchall {:try_start_0 .. :try_end_64} :catchall_65

    :cond_64
    return-void

    :catchall_65
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_7e

    const-wide v2, 0x3322fd889380eed8L  # 2.3081510352216996E-62

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7e
    goto :goto_80

    :goto_7f
    throw v0

    :goto_80
    goto :goto_7f
.end method

.method public j6()V
    .registers 8

    const-wide v0, 0x891997997140034L

    :try_start_5
    sget-boolean v2, Labcd/Ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ub;->VH:I

    if-lez v2, :cond_22

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/Ub;->v5:[J

    array-length v5, v4

    if-ge v3, v5, :cond_1e

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1e
    iput v2, p0, Labcd/Ub;->VH:I

    iput v2, p0, Labcd/Ub;->gn:I
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/Ub;->FH:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.method public j6(I)V
    .registers 15

    const-wide v0, 0x677fd07d6a64db2cL  # 3.543734698389614E190

    :try_start_5
    sget-boolean v2, Labcd/Ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Labcd/Ub;->v5:[J

    array-length v4, v3

    if-ge v2, v4, :cond_3b

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_38

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, v4, v8

    if-eqz v10, :cond_38

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v12, v4, v10

    if-nez v12, :cond_2a

    move-wide v4, v6

    :cond_2a
    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v5, v4

    if-ne v5, p1, :cond_38

    aput-wide v8, v3, v2

    iget v3, p0, Labcd/Ub;->gn:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Labcd/Ub;->gn:I
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3c

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_3b
    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/Ub;->FH:Z

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

.method public j6(J)V
    .registers 16

    const-wide v0, -0x497619f18560508fL  # -5.6705859826289075E-46

    :try_start_5
    sget-boolean v2, Labcd/Ub;->DW:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-nez v6, :cond_1d

    move-wide p1, v2

    :cond_1d
    and-long/2addr v2, p1

    iget-object v6, p0, Labcd/Ub;->v5:[J

    array-length v7, v6

    int-to-long v7, v7

    rem-long v7, v2, v7

    long-to-int v8, v7

    array-length v7, v6

    int-to-long v9, v7

    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    rem-long/2addr v2, v9

    long-to-int v3, v2

    aget-wide v9, v6, v8

    :goto_2e
    cmp-long v2, v9, v4

    if-eqz v2, :cond_41

    cmp-long v2, v9, p1

    if-nez v2, :cond_37

    return-void

    :cond_37
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v8, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    array-length v6, v2

    rem-int/2addr v8, v6

    aget-wide v9, v2, v8

    goto :goto_2e

    :cond_41
    iget-object v2, p0, Labcd/Ub;->v5:[J

    aput-wide p1, v2, v8

    iget v3, p0, Labcd/Ub;->gn:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Ub;->gn:I

    iget v3, p0, Labcd/Ub;->VH:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Ub;->VH:I

    mul-int/lit8 v3, v3, 0x2

    array-length v2, v2

    if-le v3, v2, :cond_59

    invoke-direct {p0}, Labcd/Ub;->DW()V
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_5a

    :cond_59
    return-void

    :catchall_5a
    move-exception v2

    sget-boolean v3, Labcd/Ub;->FH:Z

    if-eqz v3, :cond_67

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    goto :goto_69

    :goto_68
    throw v2

    :goto_69
    goto :goto_68
.end method

.method public j6(Labcd/_b;)V
    .registers 14

    const-wide v0, -0x669e774bf63c9dd3L

    :try_start_5
    sget-boolean v2, Labcd/Ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Labcd/Ub;->v5:[J

    array-length v4, v3

    if-ge v2, v4, :cond_42

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3f

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3f

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v3, v4, v10

    if-nez v3, :cond_2a

    move-wide v4, v6

    :cond_2a
    const/16 v3, 0x20

    shr-long v3, v4, v3

    long-to-int v4, v3

    invoke-virtual {p1, v4}, Labcd/_b;->j6(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Labcd/Ub;->v5:[J

    aput-wide v8, v3, v2

    iget v3, p0, Labcd/Ub;->gn:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Labcd/Ub;->gn:I
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_43

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_42
    return-void

    :catchall_43
    move-exception v2

    sget-boolean v3, Labcd/Ub;->FH:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method

.method public j6(Labcd/bc;)V
    .registers 14

    const-wide v0, -0x67810e5e2b5e0a5cL

    :try_start_5
    sget-boolean v2, Labcd/Ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Labcd/Ub;->v5:[J

    array-length v4, v3

    if-ge v2, v4, :cond_42

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3f

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3f

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v3, v4, v10

    if-nez v3, :cond_2a

    move-wide v4, v6

    :cond_2a
    const/16 v3, 0x20

    shr-long v3, v4, v3

    long-to-int v4, v3

    invoke-virtual {p1, v4}, Labcd/bc;->j6(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Labcd/Ub;->v5:[J

    aput-wide v8, v3, v2

    iget v3, p0, Labcd/Ub;->gn:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Labcd/Ub;->gn:I
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_43

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_42
    return-void

    :catchall_43
    move-exception v2

    sget-boolean v3, Labcd/Ub;->FH:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v0, 0x6a965e455a41d943L  # 2.805233298578627E205

    :try_start_5
    sget-boolean v2, Labcd/Ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ub;->gn:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Ub;->VH:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Ub;->u7:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_1c
    iget-object v3, p0, Labcd/Ub;->v5:[J

    array-length v4, v3

    if-ge v2, v4, :cond_29

    aget-wide v4, v3, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2a

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Ub;->FH:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method

.method public j6(II)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Ub;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x79290497400a500L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_28

    move-wide v0, v2

    :cond_28
    and-long/2addr v2, v0

    iget-object v6, p0, Labcd/Ub;->v5:[J

    array-length v7, v6

    int-to-long v7, v7

    rem-long v7, v2, v7

    long-to-int v8, v7

    array-length v7, v6

    int-to-long v9, v7

    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    rem-long/2addr v2, v9

    long-to-int v3, v2

    aget-wide v9, v6, v8

    :goto_39
    const/4 v2, 0x1

    cmp-long v6, v9, v0

    if-eqz v6, :cond_4d

    cmp-long v6, v9, v4

    if-nez v6, :cond_44

    const/4 p1, 0x0

    return p1

    :cond_44
    add-int/2addr v2, v3

    add-int/2addr v8, v2

    iget-object v2, p0, Labcd/Ub;->v5:[J

    array-length v6, v2

    rem-int/2addr v8, v6

    aget-wide v9, v2, v8
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4e

    goto :goto_39

    :cond_4d
    return v2

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/Ub;->FH:Z

    if-eqz v1, :cond_67

    const-wide v2, 0x79290497400a500L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    goto :goto_69

    :goto_68
    throw v0

    :goto_69
    goto :goto_68
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    const-wide v0, 0x174ce04f7b9bac93L

    :try_start_5
    sget-boolean v2, Labcd/Ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_66

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget-object v4, p0, Labcd/Ub;->v5:[J

    array-length v5, v4

    if-ge v3, v5, :cond_54

    aget-wide v5, v4, v3

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-eqz v4, :cond_51

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v4, v5, v9

    if-eqz v4, :cond_51

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v4, v5, v9

    if-nez v4, :cond_2c

    move-wide v5, v7

    :cond_2c
    const/16 v4, 0x20

    shr-long v7, v5, v4

    long-to-int v4, v7

    const-wide/16 v7, -0x1

    and-long/2addr v5, v7

    long-to-int v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_f .. :try_end_65} :catchall_66

    return-object v0

    :catchall_66
    move-exception v2

    sget-boolean v3, Labcd/Ub;->FH:Z

    if-eqz v3, :cond_6e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6e
    goto :goto_70

    :goto_6f
    throw v2

    :goto_70
    goto :goto_6f
.end method
