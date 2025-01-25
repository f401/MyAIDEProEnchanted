.class public Labcd/dc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/dc$a;
    }
.end annotation


# static fields
.field public static final DW:Labcd/dc;

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:[I
    .annotation runtime Labcd/ru;
        field = 0x42ede5605de8e00L
    .end annotation
.end field


# instance fields
.field private VH:[J
    .annotation runtime Labcd/ru;
        field = -0xe7e136730e61185L
    .end annotation
.end field

.field private Zo:[J
    .annotation runtime Labcd/ru;
        field = 0x16d0ddeed41b0a28L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x16c3e009b6290e1bL
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0xfbb73300d035cL
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0xddcac2f63d6a401L
    .end annotation
.end field

.field public final v5:Labcd/dc$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x76897b2a0916acL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x4f39e5b7f2c5fc0L

    :try_start_6
    const-class v3, Labcd/dc;

    const-wide v4, 0x3cc79f9d630e3cc0L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/dc;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_32

    sput-object v3, Labcd/dc;->j6:[I

    new-instance v3, Labcd/dc;

    invoke-direct {v3}, Labcd/dc;-><init>()V

    sput-object v3, Labcd/dc;->DW:Labcd/dc;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v3

    sget-boolean v4, Labcd/dc;->Hw:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v3

    nop

    :array_32
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

    const-wide v0, 0x279b0b2a1e6c0ef1L  # 6.702647742821817E-118

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/dc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/dc$a;

    invoke-direct {v3, p0, v2}, Labcd/dc$a;-><init>(Labcd/dc;Labcd/cc;)V

    iput-object v3, p0, Labcd/dc;->v5:Labcd/dc$a;

    const/4 v3, 0x1

    iput v3, p0, Labcd/dc;->tp:I

    sget-object v4, Labcd/dc;->j6:[I

    aget v3, v4, v3

    new-array v3, v3, [J

    iput-object v3, p0, Labcd/dc;->Zo:[J

    const/4 v3, 0x0

    iput v3, p0, Labcd/dc;->gn:I

    iput v3, p0, Labcd/dc;->u7:I
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v3

    sget-boolean v4, Labcd/dc;->Hw:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v3
.end method

.method private FH()V
    .registers 18
    .annotation runtime Labcd/su;
        method = -0x16d04359cc0a6b08L
    .end annotation

    move-object/from16 v1, p0

    const-wide v2, -0x1174a6d20be23097L  # -3.163428584455971E224

    :try_start_7
    sget-boolean v0, Labcd/dc;->FH:Z

    if-eqz v0, :cond_e

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    iget v0, v1, Labcd/dc;->u7:I

    iget-object v4, v1, Labcd/dc;->Zo:[J

    array-length v5, v4

    mul-int/lit8 v0, v0, 0x2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-le v0, v5, :cond_2a

    iget v0, v1, Labcd/dc;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Labcd/dc;->tp:I

    const/4 v4, 0x0

    iput-object v4, v1, Labcd/dc;->VH:[J

    sget-object v4, Labcd/dc;->j6:[I

    aget v0, v4, v0

    :goto_27
    new-array v0, v0, [J

    goto :goto_49

    :cond_2a
    iget-object v0, v1, Labcd/dc;->VH:[J

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
    iget-object v4, v1, Labcd/dc;->Zo:[J

    iput-object v4, v1, Labcd/dc;->VH:[J

    goto :goto_49

    :cond_40
    iput-object v4, v1, Labcd/dc;->VH:[J

    sget-object v0, Labcd/dc;->j6:[I

    iget v4, v1, Labcd/dc;->tp:I

    aget v0, v0, v4

    goto :goto_27

    :goto_49
    const/4 v4, 0x0

    :goto_4a
    iget-object v5, v1, Labcd/dc;->Zo:[J

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
    iput-object v0, v1, Labcd/dc;->Zo:[J

    iput v4, v1, Labcd/dc;->gn:I
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_85

    return-void

    :catchall_85
    move-exception v0

    sget-boolean v4, Labcd/dc;->Hw:Z

    if-eqz v4, :cond_8d

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8d
    goto :goto_8f

    :goto_8e
    throw v0

    :goto_8f
    goto :goto_8e
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x2d317842f98c8a9L

    :try_start_5
    sget-boolean v2, Labcd/dc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/dc;->u7:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/dc;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW(J)V
    .registers 16

    const-wide v0, -0xe46801651f3dc90L  # -6.641878791353761E239

    :try_start_5
    sget-boolean v2, Labcd/dc;->FH:Z

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

    iget-object v6, p0, Labcd/dc;->Zo:[J

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

    const/4 v2, -0x1

    const/4 v6, -0x1

    :goto_30
    cmp-long v7, v9, v4

    if-eqz v7, :cond_4a

    cmp-long v7, v9, p1

    if-nez v7, :cond_39

    return-void

    :cond_39
    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v7, v9, v11

    if-nez v7, :cond_40

    move v6, v8

    :cond_40
    add-int/lit8 v7, v3, 0x1

    add-int/2addr v8, v7

    iget-object v7, p0, Labcd/dc;->Zo:[J

    array-length v9, v7

    rem-int/2addr v8, v9

    aget-wide v9, v7, v8

    goto :goto_30

    :cond_4a
    if-eq v6, v2, :cond_4d

    move v8, v6

    :cond_4d
    iget-object v3, p0, Labcd/dc;->Zo:[J

    aput-wide p1, v3, v8

    if-ne v6, v2, :cond_59

    iget v2, p0, Labcd/dc;->gn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/dc;->gn:I

    :cond_59
    iget v2, p0, Labcd/dc;->u7:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/dc;->u7:I

    iget v2, p0, Labcd/dc;->gn:I

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v3

    if-le v2, v3, :cond_69

    invoke-direct {p0}, Labcd/dc;->FH()V
    :try_end_69
    .catchall {:try_start_5 .. :try_end_69} :catchall_6a

    :cond_69
    return-void

    :catchall_6a
    move-exception v2

    sget-boolean v3, Labcd/dc;->Hw:Z

    if-eqz v3, :cond_77

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    goto :goto_79

    :goto_78
    throw v2

    :goto_79
    goto :goto_78
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14

    const-wide v0, 0x2081804770b3b6cL

    :try_start_5
    sget-boolean v2, Labcd/dc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/dc;

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    move-object v2, p1

    check-cast v2, Labcd/dc;

    invoke-virtual {v2}, Labcd/dc;->DW()I

    move-result v4

    invoke-virtual {p0}, Labcd/dc;->DW()I

    move-result v5

    if-eq v4, v5, :cond_20

    return v3

    :cond_20
    const/4 v4, 0x0

    :goto_21
    iget-object v5, p0, Labcd/dc;->Zo:[J

    array-length v6, v5

    if-ge v4, v6, :cond_48

    aget-wide v6, v5, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_45

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v5, v6, v10

    if-eqz v5, :cond_45

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, v6, v10

    if-nez v5, :cond_3e

    move-wide v6, v8

    :cond_3e
    invoke-virtual {v2, v6, v7}, Labcd/dc;->j6(J)Z

    move-result v5
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_4a

    if-nez v5, :cond_45

    return v3

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_48
    const/4 p1, 0x1

    return p1

    :catchall_4a
    move-exception v2

    sget-boolean v3, Labcd/dc;->Hw:Z

    if-eqz v3, :cond_52

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v2

    :goto_54
    goto :goto_53
.end method

.method public j6()V
    .registers 8

    const-wide v0, 0xb88232fb499375fL  # 4.1153329991590877E-253

    :try_start_5
    sget-boolean v2, Labcd/dc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/dc;->gn:I

    if-lez v2, :cond_22

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/dc;->Zo:[J

    array-length v5, v4

    if-ge v3, v5, :cond_1e

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1e
    iput v2, p0, Labcd/dc;->gn:I

    iput v2, p0, Labcd/dc;->u7:I
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/dc;->Hw:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.method public j6(J)Z
    .registers 16

    const-wide v0, -0x12734a148d897b90L  # -5.0674501639251705E219

    :try_start_5
    sget-boolean v2, Labcd/dc;->FH:Z

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

    iget-object v6, p0, Labcd/dc;->Zo:[J

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
    const/4 v2, 0x1

    cmp-long v6, v9, p1

    if-eqz v6, :cond_42

    cmp-long v6, v9, v4

    if-nez v6, :cond_39

    const/4 p1, 0x0

    return p1

    :cond_39
    add-int/2addr v2, v3

    add-int/2addr v8, v2

    iget-object v2, p0, Labcd/dc;->Zo:[J

    array-length v6, v2

    rem-int/2addr v8, v6

    aget-wide v9, v2, v8
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_43

    goto :goto_2e

    :cond_42
    return v2

    :catchall_43
    move-exception v2

    sget-boolean v3, Labcd/dc;->Hw:Z

    if-eqz v3, :cond_50

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v2

    :goto_52
    goto :goto_51
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    const-wide v0, -0x1c4fbe783c9c8960L  # -1.5705459076842588E172

    :try_start_5
    sget-boolean v2, Labcd/dc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_63

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget-object v4, p0, Labcd/dc;->Zo:[J

    array-length v5, v4

    if-ge v3, v5, :cond_51

    aget-wide v5, v4, v3

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-eqz v4, :cond_4e

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v4, v5, v7

    if-eqz v4, :cond_4e

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v4, v5, v7

    if-nez v4, :cond_3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_f .. :try_end_62} :catchall_63

    return-object v0

    :catchall_63
    move-exception v2

    sget-boolean v3, Labcd/dc;->Hw:Z

    if-eqz v3, :cond_6b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6b
    goto :goto_6d

    :goto_6c
    throw v2

    :goto_6d
    goto :goto_6c
.end method
