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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x76897b2a0916acL
    .end annotation

    const-wide v8, 0x4f39e5b7f2c5fc0L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/dc;

    const-wide v2, 0x3cc79f9d630e3cc0L

    const-wide v4, 0x3cc79f9d630e3cc0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/dc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f39e5b7f2c5fc0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/dc;->j6:[I

    new-instance v0, Labcd/dc;

    invoke-direct {v0}, Labcd/dc;-><init>()V

    sput-object v0, Labcd/dc;->DW:Labcd/dc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

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

    const-wide v4, 0x279b0b2a1e6c0ef1L    # 6.702647742821817E-118

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/dc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x279b0b2a1e6c0ef1L    # 6.702647742821817E-118

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/dc$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/dc$a;-><init>(Labcd/dc;Labcd/cc;)V

    iput-object v0, p0, Labcd/dc;->v5:Labcd/dc$a;

    const/4 v0, 0x1

    iput v0, p0, Labcd/dc;->tp:I

    sget-object v0, Labcd/dc;->j6:[I

    iget v1, p0, Labcd/dc;->tp:I

    aget v0, v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/dc;->Zo:[J

    const/4 v0, 0x0

    iput v0, p0, Labcd/dc;->gn:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/dc;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private FH()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x16d04359cc0a6b08L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/dc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1174a6d20be23097L    # -3.163428584455971E224

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/dc;->u7:I

    iget-object v1, p0, Labcd/dc;->Zo:[J

    array-length v2, v1

    const/4 v1, 0x0

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v2, :cond_1

    iget v0, p0, Labcd/dc;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/dc;->tp:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/dc;->VH:[J

    sget-object v0, Labcd/dc;->j6:[I

    iget v2, p0, Labcd/dc;->tp:I

    aget v0, v0, v2

    new-array v0, v0, [J

    :goto_0
    const/4 v2, 0x0

    move v3, v1

    :goto_1
    iget-object v1, p0, Labcd/dc;->Zo:[J

    array-length v1, v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Labcd/dc;->Zo:[J

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
    iget-object v0, p0, Labcd/dc;->VH:[J

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/dc;->VH:[J

    array-length v0, v0

    iget-object v2, p0, Labcd/dc;->Zo:[J

    array-length v2, v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Labcd/dc;->VH:[J

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
    iget-object v2, p0, Labcd/dc;->Zo:[J

    iput-object v2, p0, Labcd/dc;->VH:[J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dc;->Hw:Z

    if-eqz v1, :cond_3

    const-wide v2, -0x1174a6d20be23097L    # -3.163428584455971E224

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/dc;->Zo:[J

    iput-object v0, p0, Labcd/dc;->VH:[J

    sget-object v0, Labcd/dc;->j6:[I

    iget v2, p0, Labcd/dc;->tp:I

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
    iput-object v0, p0, Labcd/dc;->Zo:[J

    iput v2, p0, Labcd/dc;->gn:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v1, v2

    goto :goto_4
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, 0x2d317842f98c8a9L

    :try_start_0
    sget-boolean v0, Labcd/dc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2d317842f98c8a9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/dc;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(J)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/dc;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, -0xe46801651f3dc90L    # -6.641878791353761E239

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    and-long v2, v0, p1

    iget-object v0, p0, Labcd/dc;->Zo:[J

    array-length v0, v0

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v1, v0

    iget-object v0, p0, Labcd/dc;->Zo:[J

    array-length v0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    rem-long/2addr v2, v4

    long-to-int v4, v2

    iget-object v0, p0, Labcd/dc;->Zo:[J

    aget-wide v2, v0, v1

    const/4 v0, -0x1

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_5

    cmp-long v5, v2, p1

    if-nez v5, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/dc;->Zo:[J

    array-length v2, v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Labcd/dc;->Zo:[J

    aget-wide v2, v2, v1

    goto :goto_0

    :cond_5
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    move v1, v0

    :cond_6
    iget-object v2, p0, Labcd/dc;->Zo:[J

    aput-wide p1, v2, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Labcd/dc;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/dc;->gn:I

    :cond_7
    iget v0, p0, Labcd/dc;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/dc;->u7:I

    iget v0, p0, Labcd/dc;->gn:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/dc;->Zo:[J

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/dc;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dc;->Hw:Z

    if-eqz v1, :cond_8

    const-wide v2, -0xe46801651f3dc90L    # -6.641878791353761E239

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 16

    const-wide v12, 0x2081804770b3b6cL

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Labcd/dc;->FH:Z

    if-eqz v2, :cond_0

    const-wide v4, 0x2081804770b3b6cL

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Labcd/dc;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Labcd/dc;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/dc;->DW()I

    move-result v4

    invoke-virtual {p0}, Labcd/dc;->DW()I

    move-result v5

    if-eq v4, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v8, v3

    :goto_1
    iget-object v4, p0, Labcd/dc;->Zo:[J

    array-length v4, v4

    if-ge v8, v4, :cond_5

    iget-object v4, p0, Labcd/dc;->Zo:[J

    aget-wide v4, v4, v8

    cmp-long v9, v4, v6

    if-eqz v9, :cond_4

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v9, v4, v10

    if-eqz v9, :cond_4

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v9, v4, v10

    if-nez v9, :cond_3

    move-wide v4, v6

    :cond_3
    invoke-virtual {v2, v4, v5}, Labcd/dc;->j6(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/dc;->Hw:Z

    if-eqz v3, :cond_6

    invoke-static {v2, v12, v13, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v4, 0xb88232fb499375fL    # 4.1153329991590877E-253

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/dc;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xb88232fb499375fL    # 4.1153329991590877E-253

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/dc;->gn:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/dc;->Zo:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/dc;->Zo:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/dc;->gn:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/dc;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dc;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(J)Z
    .registers 16

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    const-wide v8, -0x12734a148d897b90L    # -5.0674501639251705E219

    :try_start_0
    sget-boolean v2, Labcd/dc;->FH:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v4, -0x12734a148d897b90L    # -5.0674501639251705E219

    invoke-static {v4, v5, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    cmp-long v2, p1, v10

    if-nez v2, :cond_1

    move-wide p1, v0

    :cond_1
    and-long v2, v0, p1

    iget-object v0, p0, Labcd/dc;->Zo:[J

    array-length v0, v0

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    iget-object v1, p0, Labcd/dc;->Zo:[J

    array-length v1, v1

    int-to-long v4, v1

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    rem-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Labcd/dc;->Zo:[J

    aget-wide v2, v2, v0

    :goto_0
    cmp-long v4, v2, p1

    if-eqz v4, :cond_3

    cmp-long v2, v2, v10

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    iget-object v2, p0, Labcd/dc;->Zo:[J

    array-length v2, v2

    rem-int/2addr v0, v2

    iget-object v2, p0, Labcd/dc;->Zo:[J

    aget-wide v2, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dc;->Hw:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v6, -0x1c4fbe783c9c8960L    # -1.5705459076842588E172

    :try_start_0
    sget-boolean v0, Labcd/dc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c4fbe783c9c8960L    # -1.5705459076842588E172

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/dc;->Zo:[J

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/dc;->Zo:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    sget-boolean v1, Labcd/dc;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
