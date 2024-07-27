.class public Labcd/Kb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Kb$a;
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
        field = 0xd3692b6c6780994L
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0x20dfb84b3d88cac0L
    .end annotation
.end field

.field public final Hw:Labcd/Kb$a;

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = -0x13a4e8cb694ec480L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x130ed5f95afec33fL
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = -0x7ece701e6c147fL
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x16770a8e364e29d1L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x1ed0cf55914f5e4fL
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0x1335e6dbb8619cb8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2c44b17fa1ba95d8L
    .end annotation

    const-wide v8, -0x107b50351fac8180L    # -1.5681865018318376E229

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Kb;

    const-wide v2, 0x2205c6faae890354L

    const-wide v4, 0x2205c6faae890354L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Kb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x107b50351fac8180L    # -1.5681865018318376E229

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Kb;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

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

    const-wide v4, -0x20349aef3b5bd63fL    # -2.8695628427402294E153

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20349aef3b5bd63fL    # -2.8695628427402294E153

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Kb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Kb$a;-><init>(Labcd/Kb;Labcd/Jb;)V

    iput-object v0, p0, Labcd/Kb;->Hw:Labcd/Kb$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb;->EQ:I

    sget-object v0, Labcd/Kb;->j6:[I

    iget v1, p0, Labcd/Kb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Kb;->v5:[I

    sget-object v0, Labcd/Kb;->j6:[I

    iget v1, p0, Labcd/Kb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Kb;->VH:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 10

    const-wide v6, 0x1a153a41d1d925edL    # 4.995774901321568E-183

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1a153a41d1d925edL    # 4.995774901321568E-183

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/Kb$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Labcd/Kb$a;-><init>(Labcd/Kb;Labcd/Jb;)V

    iput-object v1, p0, Labcd/Kb;->Hw:Labcd/Kb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Labcd/Kb;->EQ:I

    sget-object v2, Labcd/Kb;->j6:[I

    iget v3, p0, Labcd/Kb;->EQ:I

    aget v2, v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/Kb;->v5:[I

    sget-object v2, Labcd/Kb;->j6:[I

    iget v3, p0, Labcd/Kb;->EQ:I

    aget v2, v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/Kb;->VH:[I

    const/4 v2, 0x0

    iput v2, p0, Labcd/Kb;->u7:I

    const/4 v2, 0x0

    iput v2, p0, Labcd/Kb;->tp:I

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Labcd/Kb;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method static synthetic DW(Labcd/Kb;)[I
    .registers 2

    iget-object v0, p0, Labcd/Kb;->VH:[I

    return-object v0
.end method

.method private FH()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x1918371b7604d64L
    .end annotation

    const-wide v10, -0x10eac49da6c83c9L

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10eac49da6c83c9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Kb;->tp:I

    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_1

    iget v0, p0, Labcd/Kb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Kb;->EQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Kb;->Zo:[I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Kb;->gn:[I

    sget-object v0, Labcd/Kb;->j6:[I

    iget v1, p0, Labcd/Kb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/Kb;->j6:[I

    iget v3, p0, Labcd/Kb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [I

    :goto_0
    move v4, v2

    move v3, v2

    :goto_1
    iget-object v2, p0, Labcd/Kb;->v5:[I

    array-length v2, v2

    if-ge v4, v2, :cond_6

    iget-object v2, p0, Labcd/Kb;->v5:[I

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
    iget-object v0, p0, Labcd/Kb;->Zo:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Kb;->Zo:[I

    array-length v0, v0

    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Labcd/Kb;->Zo:[I

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
    iget-object v0, p0, Labcd/Kb;->gn:[I

    iget-object v3, p0, Labcd/Kb;->v5:[I

    iput-object v3, p0, Labcd/Kb;->Zo:[I

    iget-object v3, p0, Labcd/Kb;->VH:[I

    iput-object v3, p0, Labcd/Kb;->gn:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/Kb;->v5:[I

    iput-object v0, p0, Labcd/Kb;->Zo:[I

    iget-object v0, p0, Labcd/Kb;->VH:[I

    iput-object v0, p0, Labcd/Kb;->gn:[I

    sget-object v0, Labcd/Kb;->j6:[I

    iget v1, p0, Labcd/Kb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/Kb;->j6:[I

    iget v3, p0, Labcd/Kb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    aput v5, v1, v2

    :try_start_4
    iget-object v5, p0, Labcd/Kb;->VH:[I

    aget v5, v5, v4

    aput v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    iput-object v1, p0, Labcd/Kb;->v5:[I

    iput-object v0, p0, Labcd/Kb;->VH:[I

    iput v3, p0, Labcd/Kb;->u7:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method static synthetic j6(Labcd/Kb;)[I
    .registers 2

    iget-object v0, p0, Labcd/Kb;->v5:[I

    return-object v0
.end method


# virtual methods
.method public DW()Labcd/Kb$a;
    .registers 5

    const-wide v2, 0x5a7c310aaf859e8L

    :try_start_0
    sget-boolean v0, Labcd/Kb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5a7c310aaf859e8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Kb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Kb$a;-><init>(Labcd/Kb;Labcd/Jb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(II)V
    .registers 14

    const-wide v2, 0x40e67dcf4b0b56cfL    # 46062.47791068034

    const v0, 0x7fffffff

    const/high16 v10, -0x80000000

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v8, 0x40e67dcf4b0b56cfL    # 46062.47791068034

    invoke-static {v8, v9, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v7, v0, p1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v0, v0

    rem-int v4, v7, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v8, v0

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/Kb;->v5:[I

    aget v5, v1, v4

    move v1, v6

    :goto_0
    if-eqz v5, :cond_6

    if-ne v5, p1, :cond_5

    iget-object v5, p0, Labcd/Kb;->VH:[I

    aget v5, v5, v4

    if-ne v5, p2, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v5, v8, -0x2

    rem-int v5, v7, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iget-object v5, p0, Labcd/Kb;->v5:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    iget-object v5, p0, Labcd/Kb;->v5:[I

    aget v5, v5, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Labcd/Kb;->v5:[I

    const/high16 v9, -0x80000000

    aput v9, v5, v4

    iget v5, p0, Labcd/Kb;->tp:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Labcd/Kb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kb;->FH:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    if-ne v5, v10, :cond_2

    move v1, v4

    goto :goto_1

    :cond_6
    if-nez v0, :cond_9

    if-eq v1, v6, :cond_7

    move v4, v1

    :cond_7
    :try_start_1
    iget-object v0, p0, Labcd/Kb;->v5:[I

    aput p1, v0, v4

    iget-object v0, p0, Labcd/Kb;->VH:[I

    aput p2, v0, v4

    iget v0, p0, Labcd/Kb;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Kb;->tp:I

    if-ne v1, v6, :cond_8

    iget v0, p0, Labcd/Kb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Kb;->u7:I

    :cond_8
    iget v0, p0, Labcd/Kb;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_9

    invoke-direct {p0}, Labcd/Kb;->FH()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return-void
.end method

.method public DW(I)Z
    .registers 8

    const-wide v4, 0xa3eef0df7d8c560L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xa3eef0df7d8c560L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

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

    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(I)I
    .registers 8

    const-wide v4, -0xd6a9b715d4caaa9L    # -9.129440563201166E243

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xd6a9b715d4caaa9L    # -9.129440563201166E243

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eq v0, p1, :cond_3

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/Kb;->VH:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(II)V
    .registers 11

    const-wide v2, 0x35715826f0f74660L    # 2.89733444303488E-51

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x35715826f0f74660L    # 2.89733444303488E-51

    invoke-static {v6, v7, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v4, v0, p1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v0, v0

    rem-int v1, v4, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v5, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Labcd/Kb;->VH:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Labcd/Kb;->v5:[I

    const/high16 v6, -0x80000000

    aput v6, v0, v1

    iget v0, p0, Labcd/Kb;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Kb;->tp:I

    :cond_2
    add-int/lit8 v0, v5, -0x2

    rem-int v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kb;->FH:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    return-void
.end method

.method public FH(Labcd/Kb;)V
    .registers 8

    const-wide v4, 0x1814f6816d42948L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1814f6816d42948L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p1, Labcd/Kb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Labcd/Kb;->v5:[I

    aget v1, v1, v0

    iget-object v2, p1, Labcd/Kb;->VH:[I

    aget v2, v2, v0

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Labcd/Kb;->j6(II)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v1, v2}, Labcd/Kb;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public Hw(I)V
    .registers 10

    const-wide v6, 0x1bddb31914ba3195L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1bddb31914ba3195L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Labcd/Kb;->v5:[I

    const/high16 v4, -0x80000000

    aput v4, v0, v1

    iget v0, p0, Labcd/Kb;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Kb;->tp:I

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

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

    const-wide v4, 0x4a15031a680f459L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x4a15031a680f459L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Kb;->u7:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Kb;->v5:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(I)V
    .registers 8

    const-wide v4, 0x4eeaf09978c06f90L    # 1.4874556373733217E72

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x4eeaf09978c06f90L    # 1.4874556373733217E72

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget v1, p0, Labcd/Kb;->u7:I

    if-lez v1, :cond_4

    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    if-lt v1, p1, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb;->EQ:I

    :goto_0
    sget-object v0, Labcd/Kb;->j6:[I

    iget v1, p0, Labcd/Kb;->EQ:I

    aget v0, v0, v1

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_2

    iget v0, p0, Labcd/Kb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Kb;->EQ:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Labcd/Kb;->j6:[I

    iget v1, p0, Labcd/Kb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Kb;->v5:[I

    sget-object v0, Labcd/Kb;->j6:[I

    iget v1, p0, Labcd/Kb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Kb;->VH:[I

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb;->tp:I

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/Kb;->v5:[I

    const/4 v2, 0x0

    aput v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public j6(II)V
    .registers 12

    const-wide v2, -0x57e3bc0b62f10b05L

    const v0, 0x7fffffff

    const/4 v5, -0x1

    :try_start_0
    sget-boolean v1, Labcd/Kb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x57e3bc0b62f10b05L

    invoke-static {v6, v7, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v6, v0, p1

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v0, v0

    rem-int v1, v6, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    array-length v7, v0

    iget-object v0, p0, Labcd/Kb;->v5:[I

    aget v4, v0, v1

    move v0, v5

    :goto_0
    if-eqz v4, :cond_5

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Labcd/Kb;->VH:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_4

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

    iget-object v4, p0, Labcd/Kb;->v5:[I

    array-length v4, v4

    rem-int/2addr v1, v4

    iget-object v4, p0, Labcd/Kb;->v5:[I

    aget v4, v4, v1

    goto :goto_0

    :cond_5
    if-eq v0, v5, :cond_6

    move v1, v0

    :cond_6
    iget-object v4, p0, Labcd/Kb;->v5:[I

    aput p1, v4, v1

    iget-object v4, p0, Labcd/Kb;->VH:[I

    aput p2, v4, v1

    iget v1, p0, Labcd/Kb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Kb;->tp:I

    if-ne v0, v5, :cond_7

    iget v0, p0, Labcd/Kb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Kb;->u7:I

    :cond_7
    iget v0, p0, Labcd/Kb;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Kb;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kb;->FH:Z

    if-eqz v0, :cond_8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, 0x66dce9ee507c7f10L

    :try_start_0
    sget-boolean v0, Labcd/Kb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x66dce9ee507c7f10L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Kb;->tp:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/Kb;->EQ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Kb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/Kb;->v5:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Labcd/Kb;->v5:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Labcd/Kb;->VH:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v6, 0x2ef6fb784be6ab44L    # 1.8928437611341324E-82

    :try_start_0
    sget-boolean v0, Labcd/Kb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2ef6fb784be6ab44L    # 1.8928437611341324E-82

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/Kb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/Kb;->v5:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Labcd/Kb;->VH:[I

    aget v3, v3, v1

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

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

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    sget-boolean v1, Labcd/Kb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
