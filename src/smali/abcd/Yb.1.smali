.class public Labcd/Yb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Yb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Labcd/Aa;",
        ">",
        "Ljava/lang/Object;"
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
        field = 0x218543fec10106e4L
    .end annotation
.end field


# instance fields
.field public final Hw:Labcd/Yb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LYb",
            "<TE;>.a;"
        }
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x1f95514f30360b99L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x2712068f68d26327L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x286e24f0bb562d37L
    .end annotation
.end field

.field private final tp:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = -0x1f694d9c215cdb18L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x2d6f3ec9ce0ca9c0L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0x21f5d2179a96be58L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x144b4b28fd7b0960L
    .end annotation

    const-wide v8, 0x2683a68821bc22b5L    # 3.715743377605097E-123

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Yb;

    const-wide v2, 0x744eebb52f221f8L

    const-wide v4, 0x744eebb52f221f8L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2683a68821bc22b5L    # 3.715743377605097E-123

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Yb;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

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

.method public constructor <init>(Labcd/Ba;)V
    .registers 8

    const-wide v4, 0x272a89885728c480L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x272a89885728c480L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Yb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Yb$a;-><init>(Labcd/Yb;Labcd/Xb;)V

    iput-object v0, p0, Labcd/Yb;->Hw:Labcd/Yb$a;

    iput-object p1, p0, Labcd/Yb;->tp:Labcd/Ba;

    const/4 v0, 0x1

    iput v0, p0, Labcd/Yb;->u7:I

    sget-object v0, Labcd/Yb;->j6:[I

    iget v1, p0, Labcd/Yb;->u7:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Yb;->v5:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Yb;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Yb;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/Ba;Labcd/ec;)V
    .registers 11

    const-wide v2, 0x5b5a3fd6e06caa14L

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Yb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v6, 0x5b5a3fd6e06caa14L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/Yb$a;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Labcd/Yb$a;-><init>(Labcd/Yb;Labcd/Xb;)V

    iput-object v1, p0, Labcd/Yb;->Hw:Labcd/Yb$a;

    iput-object p1, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Labcd/Yb;->u7:I

    sget-object v5, Labcd/Yb;->j6:[I

    iget v6, p0, Labcd/Yb;->u7:I

    aget v5, v5, v6

    new-array v5, v5, [I

    iput-object v5, p0, Labcd/Yb;->v5:[I

    const/4 v5, 0x0

    iput v5, p0, Labcd/Yb;->VH:I

    const/4 v5, 0x0

    iput v5, p0, Labcd/Yb;->gn:I

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-direct {p0, v5}, Labcd/Yb;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Yb;->FH:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method static synthetic DW(Labcd/Yb;)Labcd/Ba;
    .registers 2

    iget-object v0, p0, Labcd/Yb;->tp:Labcd/Ba;

    return-object v0
.end method

.method private j6(I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x6276fd7f29c9fcadL
    .end annotation

    const-wide v8, 0x62a8baa6d3bd442dL    # 1.8227875916382766E167

    const v0, 0x7fffffff

    const/4 v3, -0x1

    :try_start_0
    sget-boolean v1, Labcd/Yb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v4, 0x62a8baa6d3bd442dL    # 1.8227875916382766E167

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v4, v0, p1

    iget-object v0, p0, Labcd/Yb;->v5:[I

    array-length v0, v0

    rem-int v1, v4, v0

    iget-object v0, p0, Labcd/Yb;->v5:[I

    array-length v5, v0

    iget-object v0, p0, Labcd/Yb;->v5:[I

    aget v2, v0, v1

    move v0, v3

    :goto_0
    if-eqz v2, :cond_5

    if-ne v2, p1, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v2, v5, -0x2

    rem-int v2, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/Yb;->v5:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Labcd/Yb;->v5:[I

    aget v2, v2, v1

    goto :goto_0

    :cond_5
    if-eq v0, v3, :cond_6

    move v1, v0

    :cond_6
    iget-object v2, p0, Labcd/Yb;->v5:[I

    aput p1, v2, v1

    if-ne v0, v3, :cond_7

    iget v0, p0, Labcd/Yb;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Yb;->VH:I

    :cond_7
    iget v0, p0, Labcd/Yb;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Yb;->gn:I

    iget v0, p0, Labcd/Yb;->VH:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Yb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Yb;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v0
.end method

.method static synthetic j6(Labcd/Yb;)[I
    .registers 2

    iget-object v0, p0, Labcd/Yb;->v5:[I

    return-object v0
.end method

.method private v5()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x186ccfb0e5fc3740L
    .end annotation

    const-wide v8, 0x20a4408684eea9d4L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x20a4408684eea9d4L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Yb;->gn:I

    iget-object v2, p0, Labcd/Yb;->v5:[I

    array-length v2, v2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v2, :cond_1

    iget v0, p0, Labcd/Yb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Yb;->u7:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Yb;->Zo:[I

    sget-object v0, Labcd/Yb;->j6:[I

    iget v2, p0, Labcd/Yb;->u7:I

    aget v0, v0, v2

    new-array v0, v0, [I

    :goto_0
    move v2, v1

    move v3, v1

    :goto_1
    iget-object v1, p0, Labcd/Yb;->v5:[I

    array-length v1, v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Labcd/Yb;->v5:[I

    aget v4, v1, v3

    if-eqz v4, :cond_7

    const/high16 v1, -0x80000000

    if-eq v4, v1, :cond_7

    const v1, 0x7fffffff

    and-int v5, v1, v4

    array-length v6, v0

    array-length v1, v0

    rem-int v1, v5, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    aget v7, v0, v1

    if-eqz v7, :cond_5

    add-int/lit8 v7, v6, -0x2

    :try_start_1
    rem-int v7, v5, v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v1, v7

    array-length v7, v0

    rem-int/2addr v1, v7

    goto :goto_2

    :cond_1
    iget-object v0, p0, Labcd/Yb;->Zo:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Yb;->Zo:[I

    array-length v0, v0

    iget-object v2, p0, Labcd/Yb;->v5:[I

    array-length v2, v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Labcd/Yb;->Zo:[I

    move v2, v1

    :goto_3
    array-length v3, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v2, v3, :cond_2

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v2, p0, Labcd/Yb;->v5:[I

    iput-object v2, p0, Labcd/Yb;->Zo:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/Yb;->v5:[I

    iput-object v0, p0, Labcd/Yb;->Zo:[I

    sget-object v0, Labcd/Yb;->j6:[I

    iget v2, p0, Labcd/Yb;->u7:I

    aget v0, v0, v2

    new-array v0, v0, [I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    aput v4, v0, v1

    add-int/lit8 v1, v2, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1

    :cond_6
    :try_start_4
    iput-object v0, p0, Labcd/Yb;->v5:[I

    iput v2, p0, Labcd/Yb;->VH:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v1, v2

    goto :goto_4
.end method


# virtual methods
.method public DW(Labcd/Aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-wide v2, -0x61458b9c15b51315L

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x61458b9c15b51315L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Labcd/Yb;->j6(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Yb;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW()Z
    .registers 5

    const-wide v2, 0x414ba1a491fe75cL

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x414ba1a491fe75cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Yb;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()Labcd/Aa;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const-wide v4, 0xa076d0902fd4b9fL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Yb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xa076d0902fd4b9fL

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    move v2, v0

    :cond_1
    iget-object v1, p0, Labcd/Yb;->v5:[I

    array-length v1, v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Labcd/Yb;->v5:[I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v1, v0}, Labcd/Ba;->FH(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(Labcd/Aa;)V
    .registers 10

    const-wide v6, 0x47f9449093e4f08L

    const v1, 0x7fffffff

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x47f9449093e4f08L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :cond_1
    and-int v3, v1, v0

    iget-object v1, p0, Labcd/Yb;->v5:[I

    array-length v1, v1

    rem-int v1, v3, v1

    iget-object v2, p0, Labcd/Yb;->v5:[I

    array-length v4, v2

    iget-object v2, p0, Labcd/Yb;->v5:[I

    aget v2, v2, v1

    :goto_0
    if-eq v2, v0, :cond_3

    if-nez v2, :cond_2

    :goto_1
    return-void

    :cond_2
    add-int/lit8 v2, v4, -0x2

    rem-int v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/Yb;->v5:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Labcd/Yb;->v5:[I

    aget v2, v2, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/Yb;->v5:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    iget v0, p0, Labcd/Yb;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Yb;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(Labcd/Yb;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYb",
            "<+TE;>;)V"
        }
    .end annotation

    const-wide v4, -0x2cf96b309c60affbL    # -9.199779823674272E91

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Yb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x2cf96b309c60affbL    # -9.199779823674272E91

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p1, Labcd/Yb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Labcd/Yb;->v5:[I

    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Labcd/Yb;->j6(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v1}, Labcd/Yb;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public Hw()I
    .registers 5

    const-wide v2, 0x151a48c78c3ca2d4L

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x151a48c78c3ca2d4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Yb;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Yb;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYb",
            "<+TE;>;)V"
        }
    .end annotation

    const-wide v2, -0x5fcfa62423e88418L

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5fcfa62423e88418L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Labcd/Yb;->Hw:Labcd/Yb$a;

    invoke-virtual {v0}, Labcd/Yb$a;->DW()V

    :goto_0
    iget-object v0, p1, Labcd/Yb;->Hw:Labcd/Yb$a;

    invoke-virtual {v0}, Labcd/Yb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Labcd/Yb;->Hw:Labcd/Yb$a;

    invoke-virtual {v0}, Labcd/Yb$a;->FH()Labcd/Aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Yb;->FH(Labcd/Aa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const-wide v8, 0x76b3bdd2e5196da5L    # 6.216362768869539E263

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_0

    const-wide v4, 0x76b3bdd2e5196da5L    # 6.216362768869539E263

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Labcd/bc;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Labcd/bc;

    move-object v2, v0

    invoke-virtual {v2}, Labcd/bc;->Hw()I

    move-result v4

    invoke-virtual {p0}, Labcd/Yb;->Hw()I

    move-result v5

    if-eq v4, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_1
    iget-object v4, p0, Labcd/Yb;->v5:[I

    array-length v4, v4

    if-ge v5, v4, :cond_5

    iget-object v4, p0, Labcd/Yb;->v5:[I

    aget v4, v4, v5

    if-eqz v4, :cond_4

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_4

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {v2, v4}, Labcd/bc;->j6(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_6

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v4, 0x31a722ea8d48dacL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Yb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x31a722ea8d48dacL

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Yb;->VH:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/Yb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Yb;->v5:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/Yb;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Yb;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, 0x12943d96736b5857L    # 3.583653842338894E-219

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12943d96736b5857L    # 3.583653842338894E-219

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Yb;->gn:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/Yb;->u7:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Yb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/Yb;->v5:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Labcd/Yb;->v5:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(Labcd/Aa;)Z
    .registers 10

    const-wide v6, -0x2630564c882bc7L

    const v1, 0x7fffffff

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x2630564c882bc7L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :cond_1
    and-int v3, v1, v0

    iget-object v1, p0, Labcd/Yb;->v5:[I

    array-length v4, v1

    iget-object v1, p0, Labcd/Yb;->v5:[I

    array-length v1, v1

    rem-int v1, v3, v1

    iget-object v2, p0, Labcd/Yb;->v5:[I

    aget v2, v2, v1

    :goto_0
    if-eq v2, v0, :cond_3

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v4, -0x2

    rem-int v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/Yb;->v5:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Labcd/Yb;->v5:[I

    aget v2, v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v6, 0x714531781a72affL

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x714531781a72affL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    move v3, v2

    :goto_0
    :try_start_1
    iget-object v1, p0, Labcd/Yb;->v5:[I

    array-length v1, v1

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Labcd/Yb;->v5:[I

    aget v1, v1, v3

    if-eqz v1, :cond_2

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_2

    const v4, 0x7fffffff

    if-ne v1, v4, :cond_1

    move v1, v2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v0, v1}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

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

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
