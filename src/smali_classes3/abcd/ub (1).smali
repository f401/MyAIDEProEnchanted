.class public Labcd/ub;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/ub$a;
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
        field = -0x29ddc84451fd9cL
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = -0x1555d0d56ddd3aa0L
    .end annotation
.end field

.field public final Hw:Labcd/ub$a;

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x1c4328a4a31f7c70L
    .end annotation
.end field

.field private Zo:[J
    .annotation runtime Labcd/ru;
        field = -0x230994d57d537e79L
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = 0x24b245f7e95f37b1L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x8db6448ab811c81L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x1139153122491fa7L
    .end annotation
.end field

.field private v5:[J
    .annotation runtime Labcd/ru;
        field = -0x147e8a4ac239be20L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x20d5b23bba32da90L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2d14e1d91ee63a14L

    :try_start_6
    const-class v3, Labcd/ub;

    const-wide v4, -0xbace96ba7174759L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/ub;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/ub;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/ub;->FH:Z

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

    const-wide v0, -0x4172458673901c60L  # -2.2149396824969393E-7

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/ub;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/ub$a;

    invoke-direct {v3, p0, v2}, Labcd/ub$a;-><init>(Labcd/ub;Labcd/tb;)V

    iput-object v3, p0, Labcd/ub;->Hw:Labcd/ub$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/ub;->EQ:I

    sget-object v4, Labcd/ub;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [J

    iput-object v5, p0, Labcd/ub;->v5:[J

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/ub;->VH:[I

    iput v3, p0, Labcd/ub;->u7:I

    iput v3, p0, Labcd/ub;->tp:I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Labcd/ub;->FH:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method private FH()V
    .registers 20
    .annotation runtime Labcd/su;
        method = -0x24161303d82e0e1cL
    .end annotation

    move-object/from16 v1, p0

    const-wide v2, -0x4ee0dfb1fb840ebL  # -6.671273438596252E284

    :try_start_7
    sget-boolean v0, Labcd/ub;->DW:Z

    if-eqz v0, :cond_e

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    iget v0, v1, Labcd/ub;->tp:I

    iget-object v4, v1, Labcd/ub;->v5:[J

    array-length v5, v4

    mul-int/lit8 v0, v0, 0x2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-le v0, v5, :cond_2e

    iget v0, v1, Labcd/ub;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Labcd/ub;->EQ:I

    const/4 v4, 0x0

    iput-object v4, v1, Labcd/ub;->Zo:[J

    iput-object v4, v1, Labcd/ub;->gn:[I

    sget-object v4, Labcd/ub;->j6:[I

    aget v0, v4, v0

    new-array v4, v0, [J

    :goto_2b
    new-array v0, v0, [I

    goto :goto_5e

    :cond_2e
    iget-object v0, v1, Labcd/ub;->Zo:[J

    if-eqz v0, :cond_4f

    array-length v5, v0

    array-length v9, v4

    if-ne v5, v9, :cond_4f

    const/4 v4, 0x0

    :goto_37
    array-length v5, v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_a3

    if-ge v4, v5, :cond_3f

    aput-wide v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_3f
    :try_start_3f
    iget-object v4, v1, Labcd/ub;->gn:[I

    iget-object v5, v1, Labcd/ub;->v5:[J

    iput-object v5, v1, Labcd/ub;->Zo:[J

    iget-object v5, v1, Labcd/ub;->VH:[I

    iput-object v5, v1, Labcd/ub;->gn:[I

    move-object/from16 v18, v4

    move-object v4, v0

    move-object/from16 v0, v18

    goto :goto_5e

    :cond_4f
    iput-object v4, v1, Labcd/ub;->Zo:[J

    iget-object v0, v1, Labcd/ub;->VH:[I

    iput-object v0, v1, Labcd/ub;->gn:[I

    sget-object v0, Labcd/ub;->j6:[I

    iget v4, v1, Labcd/ub;->EQ:I

    aget v0, v0, v4

    new-array v4, v0, [J

    goto :goto_2b

    :goto_5e
    const/4 v5, 0x0

    :goto_5f
    iget-object v9, v1, Labcd/ub;->v5:[J

    array-length v10, v9

    if-ge v8, v10, :cond_9c

    aget-wide v10, v9, v8

    cmp-long v9, v10, v6

    if-eqz v9, :cond_99

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v9, v10, v12

    if-eqz v9, :cond_99

    const-wide v12, 0x7fffffffffffffffL

    and-long/2addr v12, v10

    array-length v9, v4

    int-to-long v14, v9

    rem-long v14, v12, v14

    long-to-int v9, v14

    array-length v14, v4

    int-to-long v14, v14

    const-wide/16 v16, 0x2

    sub-long v14, v14, v16

    rem-long/2addr v12, v14
    :try_end_82
    .catchall {:try_start_3f .. :try_end_82} :catchall_a3

    long-to-int v13, v12

    :goto_83
    aget-wide v14, v4, v9

    cmp-long v12, v14, v6

    if-eqz v12, :cond_8f

    add-int/lit8 v12, v13, 0x1

    add-int/2addr v9, v12

    :try_start_8c
    array-length v12, v4

    rem-int/2addr v9, v12
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_a3

    goto :goto_83

    :cond_8f
    aput-wide v10, v4, v9

    :try_start_91
    iget-object v10, v1, Labcd/ub;->VH:[I

    aget v10, v10, v8

    aput v10, v0, v9

    add-int/lit8 v5, v5, 0x1

    :cond_99
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    :cond_9c
    iput-object v4, v1, Labcd/ub;->v5:[J

    iput-object v0, v1, Labcd/ub;->VH:[I

    iput v5, v1, Labcd/ub;->u7:I
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_a3

    return-void

    :catchall_a3
    move-exception v0

    sget-boolean v4, Labcd/ub;->FH:Z

    if-eqz v4, :cond_ab

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_ab
    goto :goto_ad

    :goto_ac
    throw v0

    :goto_ad
    goto :goto_ac
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x13b8d4ad2c04b455L

    :try_start_5
    sget-boolean v2, Labcd/ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/ub;->tp:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/ub;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW(J)I
    .registers 16

    const-wide v0, -0x6bff5e1bff843a53L  # -2.470288077215525E-212

    :try_start_5
    sget-boolean v2, Labcd/ub;->DW:Z

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

    iget-object v6, p0, Labcd/ub;->v5:[J

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
    cmp-long v2, v9, p1

    if-eqz v2, :cond_42

    cmp-long v2, v9, v4

    if-nez v2, :cond_38

    const/4 p1, -0x1

    return p1

    :cond_38
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v8, v2

    iget-object v2, p0, Labcd/ub;->v5:[J

    array-length v6, v2

    rem-int/2addr v8, v6

    aget-wide v9, v2, v8

    goto :goto_2e

    :cond_42
    iget-object v2, p0, Labcd/ub;->VH:[I

    aget p1, v2, v8
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    return p1

    :catchall_47
    move-exception v2

    sget-boolean v3, Labcd/ub;->FH:Z

    if-eqz v3, :cond_54

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v2

    :goto_56
    goto :goto_55
.end method

.method public j6()V
    .registers 8

    const-wide v0, -0x112bdddf28d0480dL  # -7.452329071376049E225

    :try_start_5
    sget-boolean v2, Labcd/ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/ub;->u7:I

    if-lez v2, :cond_22

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/ub;->v5:[J

    array-length v5, v4

    if-ge v3, v5, :cond_1e

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1e
    iput v2, p0, Labcd/ub;->u7:I

    iput v2, p0, Labcd/ub;->tp:I
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/ub;->FH:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.method public j6(JI)V
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/ub;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x2b59cc8487a4153dL  # -6.069922261485583E99

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_22

    move-wide p1, v0

    :cond_22
    and-long/2addr v0, p1

    iget-object v4, p0, Labcd/ub;->v5:[J

    array-length v5, v4

    int-to-long v5, v5

    rem-long v5, v0, v5

    long-to-int v6, v5

    array-length v5, v4

    int-to-long v7, v5

    const-wide/16 v9, 0x2

    sub-long/2addr v7, v9

    rem-long/2addr v0, v7

    long-to-int v1, v0

    aget-wide v7, v4, v6

    const/4 v0, -0x1

    const/4 v4, -0x1

    :goto_35
    cmp-long v5, v7, v2

    if-eqz v5, :cond_60

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v5, v7, p1

    if-nez v5, :cond_51

    iget-object v5, p0, Labcd/ub;->VH:[I

    aget v5, v5, v6

    if-ne v5, p3, :cond_46

    return-void

    :cond_46
    iget-object v5, p0, Labcd/ub;->v5:[J

    aput-wide v9, v5, v6

    iget v5, p0, Labcd/ub;->tp:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Labcd/ub;->tp:I

    goto :goto_56

    :cond_51
    cmp-long v5, v7, v9

    if-nez v5, :cond_56

    move v4, v6

    :cond_56
    :goto_56
    add-int/lit8 v5, v1, 0x1

    add-int/2addr v6, v5

    iget-object v5, p0, Labcd/ub;->v5:[J

    array-length v7, v5

    rem-int/2addr v6, v7

    aget-wide v7, v5, v6

    goto :goto_35

    :cond_60
    if-eq v4, v0, :cond_63

    move v6, v4

    :cond_63
    iget-object v1, p0, Labcd/ub;->v5:[J

    aput-wide p1, v1, v6

    iget-object v2, p0, Labcd/ub;->VH:[I

    aput p3, v2, v6

    iget v2, p0, Labcd/ub;->tp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/ub;->tp:I

    if-ne v4, v0, :cond_79

    iget v0, p0, Labcd/ub;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/ub;->u7:I

    :cond_79
    iget v0, p0, Labcd/ub;->u7:I

    mul-int/lit8 v0, v0, 0x2

    array-length v1, v1

    if-le v0, v1, :cond_83

    invoke-direct {p0}, Labcd/ub;->FH()V
    :try_end_83
    .catchall {:try_start_0 .. :try_end_83} :catchall_84

    :cond_83
    return-void

    :catchall_84
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/ub;->FH:Z

    if-eqz v0, :cond_9e

    const-wide v1, -0x2b59cc8487a4153dL  # -6.069922261485583E99

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9e
    goto :goto_a0

    :goto_9f
    throw v6

    :goto_a0
    goto :goto_9f
.end method

.method public j6(J)Z
    .registers 16

    const-wide v0, 0xb520e259f052280L

    :try_start_5
    sget-boolean v2, Labcd/ub;->DW:Z

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

    iget-object v6, p0, Labcd/ub;->v5:[J

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

    iget-object v2, p0, Labcd/ub;->v5:[J

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

    sget-boolean v3, Labcd/ub;->FH:Z

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
    .registers 12

    const-wide v0, 0xbdebfa322638b28L

    :try_start_5
    sget-boolean v2, Labcd/ub;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_78

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget-object v4, p0, Labcd/ub;->v5:[J

    array-length v5, v4

    if-ge v3, v5, :cond_66

    aget-wide v5, v4, v3

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-eqz v4, :cond_63

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v4, v5, v7

    if-eqz v4, :cond_63

    iget-object v4, p0, Labcd/ub;->VH:[I

    aget v4, v4, v3
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_78

    const-wide v7, 0x7fffffffffffffffL

    const-string v9, ", "

    cmp-long v10, v5, v7

    if-nez v10, :cond_49

    :try_start_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0->"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    :cond_49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_77
    .catchall {:try_start_31 .. :try_end_77} :catchall_78

    return-object v0

    :catchall_78
    move-exception v2

    sget-boolean v3, Labcd/ub;->FH:Z

    if-eqz v3, :cond_80

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_80
    goto :goto_82

    :goto_81
    throw v2

    :goto_82
    goto :goto_81
.end method
