.class public Labcd/qb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/qb$a;
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
        field = 0x1d8113b37b4fa1d3L
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = -0xd9af1d4d2ad7d75L
    .end annotation
.end field

.field public final Hw:Labcd/qb$a;

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x2a5c40dc12971e61L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x1c45fcf0e2f47b90L
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = -0x403911248a55570L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x27ccc9ed880e8710L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x23b07aecfe300a04L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = -0xb3378ec4b98a7adL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1c33d440ddba6d2bL
    .end annotation

    const-wide v8, -0x27ab408c5ca5dfb1L    # -3.270028956885504E117

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/qb;

    const-wide v2, 0x1544052f43d011cL

    const-wide v4, 0x1544052f43d011cL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/qb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27ab408c5ca5dfb1L    # -3.270028956885504E117

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/qb;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

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

    const-wide v4, 0x19ea323f62651cb0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/qb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19ea323f62651cb0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/qb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/qb$a;-><init>(Labcd/qb;Labcd/pb;)V

    iput-object v0, p0, Labcd/qb;->Hw:Labcd/qb$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/qb;->EQ:I

    sget-object v0, Labcd/qb;->j6:[I

    iget v1, p0, Labcd/qb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/qb;->v5:[I

    sget-object v0, Labcd/qb;->j6:[I

    iget v1, p0, Labcd/qb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/qb;->VH:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/qb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/qb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 10

    const-wide v6, -0x3fdcca9fdad55220L    # -9.604249154529441

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/qb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x3fdcca9fdad55220L    # -9.604249154529441

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/qb$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Labcd/qb$a;-><init>(Labcd/qb;Labcd/pb;)V

    iput-object v1, p0, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Labcd/qb;->EQ:I

    sget-object v2, Labcd/qb;->j6:[I

    iget v3, p0, Labcd/qb;->EQ:I

    aget v2, v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/qb;->v5:[I

    sget-object v2, Labcd/qb;->j6:[I

    iget v3, p0, Labcd/qb;->EQ:I

    aget v2, v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/qb;->VH:[I

    const/4 v2, 0x0

    iput v2, p0, Labcd/qb;->u7:I

    const/4 v2, 0x0

    iput v2, p0, Labcd/qb;->tp:I

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Labcd/qb;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private DW()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x15117ffd82046f7bL
    .end annotation

    const-wide v10, -0xd7ded8b222f25f0L

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/qb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd7ded8b222f25f0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/qb;->tp:I

    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v1, v1

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_1

    iget v0, p0, Labcd/qb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/qb;->EQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/qb;->Zo:[I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/qb;->gn:[I

    sget-object v0, Labcd/qb;->j6:[I

    iget v1, p0, Labcd/qb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/qb;->j6:[I

    iget v3, p0, Labcd/qb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [I

    :goto_0
    move v4, v2

    move v3, v2

    :goto_1
    iget-object v2, p0, Labcd/qb;->v5:[I

    array-length v2, v2

    if-ge v4, v2, :cond_6

    iget-object v2, p0, Labcd/qb;->v5:[I

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
    iget-object v0, p0, Labcd/qb;->Zo:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/qb;->Zo:[I

    array-length v0, v0

    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v1, v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Labcd/qb;->Zo:[I

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
    iget-object v0, p0, Labcd/qb;->gn:[I

    iget-object v3, p0, Labcd/qb;->v5:[I

    iput-object v3, p0, Labcd/qb;->Zo:[I

    iget-object v3, p0, Labcd/qb;->VH:[I

    iput-object v3, p0, Labcd/qb;->gn:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/qb;->v5:[I

    iput-object v0, p0, Labcd/qb;->Zo:[I

    iget-object v0, p0, Labcd/qb;->VH:[I

    iput-object v0, p0, Labcd/qb;->gn:[I

    sget-object v0, Labcd/qb;->j6:[I

    iget v1, p0, Labcd/qb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/qb;->j6:[I

    iget v3, p0, Labcd/qb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    aput v5, v1, v2

    :try_start_4
    iget-object v5, p0, Labcd/qb;->VH:[I

    aget v5, v5, v4

    aput v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    iput-object v1, p0, Labcd/qb;->v5:[I

    iput-object v0, p0, Labcd/qb;->VH:[I

    iput v3, p0, Labcd/qb;->u7:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method static synthetic DW(Labcd/qb;)[I
    .registers 2

    iget-object v0, p0, Labcd/qb;->VH:[I

    return-object v0
.end method

.method static synthetic j6(Labcd/qb;)[I
    .registers 2

    iget-object v0, p0, Labcd/qb;->v5:[I

    return-object v0
.end method


# virtual methods
.method public DW(I)I
    .registers 8

    const-wide v4, 0x1b3df3febdbabc70L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/qb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1b3df3febdbabc70L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/qb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/qb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/qb;->v5:[I

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

    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/qb;->v5:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/qb;->VH:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(I)V
    .registers 8

    const-wide v4, 0x15f97a826f6472d0L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/qb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x15f97a826f6472d0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/qb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/qb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/qb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Labcd/qb;->v5:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    iget v0, p0, Labcd/qb;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/qb;->tp:I

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/qb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(Labcd/qb;)V
    .registers 8

    const-wide v4, -0x24d90b120129f678L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/qb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x24d90b120129f678L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p1, Labcd/qb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Labcd/qb;->v5:[I

    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    iget-object v2, p1, Labcd/qb;->VH:[I

    aget v2, v2, v0

    invoke-virtual {p0, v1, v2}, Labcd/qb;->j6(II)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v2, p1, Labcd/qb;->VH:[I

    aget v2, v2, v0

    invoke-virtual {p0, v1, v2}, Labcd/qb;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x1fd188f829c68518L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/qb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x1fd188f829c68518L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/qb;->u7:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/qb;->v5:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/qb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/qb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(II)V
    .registers 13

    const-wide v2, -0xf6e5dc471bed4acL    # -1.7521069613739038E234

    const v0, 0x7fffffff

    const/high16 v9, -0x80000000

    const/4 v5, -0x1

    :try_start_0
    sget-boolean v1, Labcd/qb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0xf6e5dc471bed4acL    # -1.7521069613739038E234

    invoke-static {v6, v7, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v6, v0, p1

    iget-object v0, p0, Labcd/qb;->v5:[I

    array-length v0, v0

    rem-int v1, v6, v0

    iget-object v0, p0, Labcd/qb;->v5:[I

    array-length v7, v0

    iget-object v0, p0, Labcd/qb;->v5:[I

    aget v4, v0, v1

    move v0, v5

    :goto_0
    if-eqz v4, :cond_6

    if-ne v4, p1, :cond_5

    iget-object v4, p0, Labcd/qb;->VH:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Labcd/qb;->v5:[I

    const/high16 v8, -0x80000000

    aput v8, v4, v1

    iget v4, p0, Labcd/qb;->tp:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Labcd/qb;->tp:I

    :cond_4
    :goto_2
    add-int/lit8 v4, v7, -0x2

    rem-int v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/qb;->v5:[I

    array-length v4, v4

    rem-int/2addr v1, v4

    iget-object v4, p0, Labcd/qb;->v5:[I

    aget v4, v4, v1

    goto :goto_0

    :cond_5
    if-ne v4, v9, :cond_4

    move v0, v1

    goto :goto_2

    :cond_6
    if-eq v0, v5, :cond_7

    move v1, v0

    :cond_7
    iget-object v4, p0, Labcd/qb;->v5:[I

    aput p1, v4, v1

    iget-object v4, p0, Labcd/qb;->VH:[I

    aput p2, v4, v1

    iget v1, p0, Labcd/qb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/qb;->tp:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Labcd/qb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/qb;->u7:I

    :cond_8
    iget v0, p0, Labcd/qb;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/qb;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/qb;->FH:Z

    if-eqz v0, :cond_9

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, -0x157cc6cc1fc2cfc3L    # -1.205419874162559E205

    :try_start_0
    sget-boolean v0, Labcd/qb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x157cc6cc1fc2cfc3L    # -1.205419874162559E205

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/qb;->tp:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/qb;->EQ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/qb;->v5:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Labcd/qb;->v5:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Labcd/qb;->VH:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(I)Z
    .registers 8

    const-wide v4, -0x1d83cfba2026febL    # -4.972843274363125E299

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/qb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x1d83cfba2026febL    # -4.972843274363125E299

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/qb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/qb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/qb;->v5:[I

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

    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/qb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v6, 0x10ed786d6a7cfc7dL

    :try_start_0
    sget-boolean v0, Labcd/qb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10ed786d6a7cfc7dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/qb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/qb;->v5:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Labcd/qb;->VH:[I

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

    sget-boolean v1, Labcd/qb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
