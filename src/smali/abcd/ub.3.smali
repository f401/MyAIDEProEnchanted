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
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x20d5b23bba32da90L
    .end annotation

    const-wide v8, 0x2d14e1d91ee63a14L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/ub;

    const-wide v2, -0xbace96ba7174759L

    const-wide v4, -0xbace96ba7174759L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2d14e1d91ee63a14L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/ub;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ub;->FH:Z

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

    const-wide v4, -0x4172458673901c60L    # -2.2149396824969393E-7

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4172458673901c60L    # -2.2149396824969393E-7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/ub$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/ub$a;-><init>(Labcd/ub;Labcd/tb;)V

    iput-object v0, p0, Labcd/ub;->Hw:Labcd/ub$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/ub;->EQ:I

    sget-object v0, Labcd/ub;->j6:[I

    iget v1, p0, Labcd/ub;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/ub;->v5:[J

    sget-object v0, Labcd/ub;->j6:[I

    iget v1, p0, Labcd/ub;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/ub;->VH:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/ub;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/ub;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ub;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private FH()V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x24161303d82e0e1cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4ee0dfb1fb840ebL    # -6.671273438596252E284

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/ub;->tp:I

    iget-object v1, p0, Labcd/ub;->v5:[J

    array-length v1, v1

    const/4 v2, 0x0

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_1

    iget v0, p0, Labcd/ub;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/ub;->EQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ub;->Zo:[J

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ub;->gn:[I

    sget-object v0, Labcd/ub;->j6:[I

    iget v1, p0, Labcd/ub;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [J

    sget-object v0, Labcd/ub;->j6:[I

    iget v3, p0, Labcd/ub;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [I

    :goto_0
    const/4 v3, 0x0

    move v4, v2

    :goto_1
    iget-object v2, p0, Labcd/ub;->v5:[J

    array-length v2, v2

    if-ge v4, v2, :cond_6

    iget-object v2, p0, Labcd/ub;->v5:[J

    aget-wide v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_7

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v2, v6, v8

    if-eqz v2, :cond_7

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v8, v6

    array-length v2, v1

    int-to-long v10, v2

    rem-long v10, v8, v10

    long-to-int v2, v10

    array-length v5, v1

    int-to-long v10, v5

    const-wide/16 v12, 0x2

    sub-long/2addr v10, v12

    rem-long/2addr v8, v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v5, v8

    :goto_2
    aget-wide v8, v1, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v2, v8

    :try_start_1
    array-length v8, v1

    rem-int/2addr v2, v8

    goto :goto_2

    :cond_1
    iget-object v0, p0, Labcd/ub;->Zo:[J

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/ub;->Zo:[J

    array-length v0, v0

    iget-object v1, p0, Labcd/ub;->v5:[J

    array-length v1, v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Labcd/ub;->Zo:[J

    const/4 v0, 0x0

    :goto_3
    array-length v3, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v0, v3, :cond_2

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v0, p0, Labcd/ub;->gn:[I

    iget-object v3, p0, Labcd/ub;->v5:[J

    iput-object v3, p0, Labcd/ub;->Zo:[J

    iget-object v3, p0, Labcd/ub;->VH:[I

    iput-object v3, p0, Labcd/ub;->gn:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ub;->FH:Z

    if-eqz v1, :cond_3

    const-wide v2, -0x4ee0dfb1fb840ebL    # -6.671273438596252E284

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/ub;->v5:[J

    iput-object v0, p0, Labcd/ub;->Zo:[J

    iget-object v0, p0, Labcd/ub;->VH:[I

    iput-object v0, p0, Labcd/ub;->gn:[I

    sget-object v0, Labcd/ub;->j6:[I

    iget v1, p0, Labcd/ub;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [J

    sget-object v0, Labcd/ub;->j6:[I

    iget v3, p0, Labcd/ub;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_5
    aput-wide v6, v1, v2

    :try_start_4
    iget-object v5, p0, Labcd/ub;->VH:[I

    aget v5, v5, v4

    aput v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_6
    iput-object v1, p0, Labcd/ub;->v5:[J

    iput-object v0, p0, Labcd/ub;->VH:[I

    iput v3, p0, Labcd/ub;->u7:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v2, v3

    goto :goto_4
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, 0x13b8d4ad2c04b455L

    :try_start_0
    sget-boolean v0, Labcd/ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13b8d4ad2c04b455L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/ub;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ub;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(J)I
    .registers 16

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    const-wide v8, -0x6bff5e1bff843a53L    # -2.470288077215525E-212

    :try_start_0
    sget-boolean v2, Labcd/ub;->DW:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v4, -0x6bff5e1bff843a53L    # -2.470288077215525E-212

    invoke-static {v4, v5, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    cmp-long v2, p1, v10

    if-nez v2, :cond_1

    move-wide p1, v0

    :cond_1
    and-long v2, v0, p1

    iget-object v0, p0, Labcd/ub;->v5:[J

    array-length v0, v0

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    iget-object v1, p0, Labcd/ub;->v5:[J

    array-length v1, v1

    int-to-long v4, v1

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    rem-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Labcd/ub;->v5:[J

    aget-wide v2, v2, v0

    :goto_0
    cmp-long v4, v2, p1

    if-eqz v4, :cond_3

    cmp-long v2, v2, v10

    if-nez v2, :cond_2

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    iget-object v2, p0, Labcd/ub;->v5:[J

    array-length v2, v2

    rem-int/2addr v0, v2

    iget-object v2, p0, Labcd/ub;->v5:[J

    aget-wide v2, v2, v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Labcd/ub;->VH:[I

    aget v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ub;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x112bdddf28d0480dL    # -7.452329071376049E225

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/ub;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x112bdddf28d0480dL    # -7.452329071376049E225

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/ub;->u7:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/ub;->v5:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/ub;->v5:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/ub;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/ub;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ub;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(JI)V
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/ub;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x2b59cc8487a4153dL    # -6.069922261485583E99

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    and-long v2, v0, p1

    iget-object v0, p0, Labcd/ub;->v5:[J

    array-length v0, v0

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v1, v0

    iget-object v0, p0, Labcd/ub;->v5:[J

    array-length v0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    rem-long/2addr v2, v4

    long-to-int v4, v2

    iget-object v0, p0, Labcd/ub;->v5:[J

    aget-wide v2, v0, v1

    const/4 v0, -0x1

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_6

    cmp-long v5, v2, p1

    if-nez v5, :cond_5

    iget-object v2, p0, Labcd/ub;->VH:[I

    aget v2, v2, v1

    if-ne v2, p3, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Labcd/ub;->v5:[J

    const-wide/high16 v6, -0x8000000000000000L

    aput-wide v6, v2, v1

    iget v2, p0, Labcd/ub;->tp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/ub;->tp:I

    :cond_4
    :goto_2
    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/ub;->v5:[J

    array-length v2, v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Labcd/ub;->v5:[J

    aget-wide v2, v2, v1

    goto :goto_0

    :cond_5
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_2

    :cond_6
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    :cond_7
    iget-object v2, p0, Labcd/ub;->v5:[J

    aput-wide p1, v2, v1

    iget-object v2, p0, Labcd/ub;->VH:[I

    aput p3, v2, v1

    iget v1, p0, Labcd/ub;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/ub;->tp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, Labcd/ub;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/ub;->u7:I

    :cond_8
    iget v0, p0, Labcd/ub;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/ub;->v5:[J

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/ub;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ub;->FH:Z

    if-eqz v0, :cond_9

    const-wide v2, -0x2b59cc8487a4153dL    # -6.069922261485583E99

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1
.end method

.method public j6(J)Z
    .registers 16

    const-wide v0, 0x7fffffffffffffffL

    const-wide v10, 0xb520e259f052280L

    const-wide/16 v8, 0x0

    :try_start_0
    sget-boolean v2, Labcd/ub;->DW:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v4, 0xb520e259f052280L

    invoke-static {v4, v5, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    cmp-long v2, p1, v8

    if-nez v2, :cond_1

    move-wide p1, v0

    :cond_1
    and-long v2, v0, p1

    iget-object v0, p0, Labcd/ub;->v5:[J

    array-length v0, v0

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    iget-object v1, p0, Labcd/ub;->v5:[J

    array-length v1, v1

    int-to-long v4, v1

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    rem-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Labcd/ub;->v5:[J

    aget-wide v2, v2, v0

    :goto_0
    cmp-long v4, v2, p1

    if-eqz v4, :cond_3

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    iget-object v2, p0, Labcd/ub;->v5:[J

    array-length v2, v2

    rem-int/2addr v0, v2

    iget-object v2, p0, Labcd/ub;->v5:[J

    aget-wide v2, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ub;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v10, v11, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const-wide v8, 0xbdebfa322638b28L

    :try_start_0
    sget-boolean v0, Labcd/ub;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xbdebfa322638b28L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/ub;->v5:[J

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/ub;->v5:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Labcd/ub;->VH:[I

    aget v4, v4, v1

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v5, v2, v6

    if-nez v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    sget-boolean v1, Labcd/ub;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
