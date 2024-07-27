.class public Labcd/bc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/bc$a;
    }
.end annotation


# static fields
.field public static final DW:Labcd/bc;

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
        field = 0x2987dd28875442d9L
    .end annotation
.end field


# instance fields
.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x880279cb15ffae0L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x364e602bb8a54e7L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x184567c0eaeeece0L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x177b164002204305L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x21420a89536b002cL
    .end annotation
.end field

.field public final v5:Labcd/bc$a;


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1676e9835bf77703L
    .end annotation

    const-wide v8, 0x31a579b01929fdb8L    # 1.5557905360253027E-69

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/bc;

    const-wide v2, -0x32ea8b5a0107d6d5L    # -2.2065864281719188E63

    const-wide v4, -0x32ea8b5a0107d6d5L    # -2.2065864281719188E63

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/bc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x31a579b01929fdb8L    # 1.5557905360253027E-69

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/bc;->j6:[I

    new-instance v0, Labcd/bc;

    invoke-direct {v0}, Labcd/bc;-><init>()V

    sput-object v0, Labcd/bc;->DW:Labcd/bc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

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

    const-wide v4, -0x2fb687c08bc38200L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/bc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2fb687c08bc38200L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/bc$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/bc$a;-><init>(Labcd/bc;Labcd/ac;)V

    iput-object v0, p0, Labcd/bc;->v5:Labcd/bc$a;

    const/4 v0, 0x1

    iput v0, p0, Labcd/bc;->tp:I

    sget-object v0, Labcd/bc;->j6:[I

    iget v1, p0, Labcd/bc;->tp:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/bc;->Zo:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/bc;->gn:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/bc;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 10

    const-wide v6, 0x22e570f0b27381cL

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/bc;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x22e570f0b27381cL

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/bc$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Labcd/bc$a;-><init>(Labcd/bc;Labcd/ac;)V

    iput-object v1, p0, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Labcd/bc;->tp:I

    sget-object v2, Labcd/bc;->j6:[I

    iget v3, p0, Labcd/bc;->tp:I

    aget v2, v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/bc;->Zo:[I

    const/4 v2, 0x0

    iput v2, p0, Labcd/bc;->gn:I

    const/4 v2, 0x0

    iput v2, p0, Labcd/bc;->u7:I

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/bc;->DW(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method static synthetic j6(Labcd/bc;)[I
    .registers 2

    iget-object v0, p0, Labcd/bc;->Zo:[I

    return-object v0
.end method

.method private v5()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2bb58f9577216f9bL
    .end annotation

    const-wide v8, 0x18f77b6f1d9c9c4bL

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/bc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x18f77b6f1d9c9c4bL

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/bc;->u7:I

    iget-object v2, p0, Labcd/bc;->Zo:[I

    array-length v2, v2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v2, :cond_1

    iget v0, p0, Labcd/bc;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/bc;->tp:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/bc;->VH:[I

    sget-object v0, Labcd/bc;->j6:[I

    iget v2, p0, Labcd/bc;->tp:I

    aget v0, v0, v2

    new-array v0, v0, [I

    :goto_0
    move v2, v1

    move v3, v1

    :goto_1
    iget-object v1, p0, Labcd/bc;->Zo:[I

    array-length v1, v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Labcd/bc;->Zo:[I

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
    iget-object v0, p0, Labcd/bc;->VH:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/bc;->VH:[I

    array-length v0, v0

    iget-object v2, p0, Labcd/bc;->Zo:[I

    array-length v2, v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Labcd/bc;->VH:[I

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
    iget-object v2, p0, Labcd/bc;->Zo:[I

    iput-object v2, p0, Labcd/bc;->VH:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/bc;->Zo:[I

    iput-object v0, p0, Labcd/bc;->VH:[I

    sget-object v0, Labcd/bc;->j6:[I

    iget v2, p0, Labcd/bc;->tp:I

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
    iput-object v0, p0, Labcd/bc;->Zo:[I

    iput v2, p0, Labcd/bc;->gn:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v1, v2

    goto :goto_4
.end method


# virtual methods
.method public DW(I)V
    .registers 12

    const-wide v8, 0x67cd32b8aaff8c60L    # 1.0407401225201698E192

    const v0, 0x7fffffff

    const/4 v3, -0x1

    :try_start_0
    sget-boolean v1, Labcd/bc;->FH:Z

    if-eqz v1, :cond_0

    const-wide v4, 0x67cd32b8aaff8c60L    # 1.0407401225201698E192

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v4, v0, p1

    iget-object v0, p0, Labcd/bc;->Zo:[I

    array-length v0, v0

    rem-int v1, v4, v0

    iget-object v0, p0, Labcd/bc;->Zo:[I

    array-length v5, v0

    iget-object v0, p0, Labcd/bc;->Zo:[I

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

    iget-object v2, p0, Labcd/bc;->Zo:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Labcd/bc;->Zo:[I

    aget v2, v2, v1

    goto :goto_0

    :cond_5
    if-eq v0, v3, :cond_6

    move v1, v0

    :cond_6
    iget-object v2, p0, Labcd/bc;->Zo:[I

    aput p1, v2, v1

    if-ne v0, v3, :cond_7

    iget v0, p0, Labcd/bc;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/bc;->gn:I

    :cond_7
    iget v0, p0, Labcd/bc;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/bc;->u7:I

    iget v0, p0, Labcd/bc;->gn:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/bc;->Zo:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/bc;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v0
.end method

.method public DW(Labcd/bc;)V
    .registers 8

    const-wide v4, -0x958ea8d9edf4088L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/bc;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x958ea8d9edf4088L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p1, Labcd/bc;->Zo:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Labcd/bc;->Zo:[I

    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Labcd/bc;->DW(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Labcd/bc;->DW(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public DW()Z
    .registers 5

    const-wide v2, 0x1421d4c7eea3e26dL

    :try_start_0
    sget-boolean v0, Labcd/bc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1421d4c7eea3e26dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/bc;->u7:I
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

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()I
    .registers 7

    const-wide v4, -0xccfae23ecaaa388L    # -7.131655316003699E246

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/bc;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xccfae23ecaaa388L    # -7.131655316003699E246

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    move v2, v0

    :cond_1
    iget-object v1, p0, Labcd/bc;->Zo:[I

    array-length v1, v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Labcd/bc;->Zo:[I

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(I)V
    .registers 8

    const-wide v4, -0x16b2b3acc7b3a3fL    # -5.580184858594659E301

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/bc;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x16b2b3acc7b3a3fL    # -5.580184858594659E301

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/bc;->Zo:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/bc;->Zo:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/bc;->Zo:[I

    aget v0, v0, v1

    :goto_0
    if-eq v0, p1, :cond_3

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/bc;->Zo:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/bc;->Zo:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/bc;->Zo:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    iget v0, p0, Labcd/bc;->u7:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/bc;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(Labcd/bc;)V
    .registers 6

    const-wide v2, -0x29cd119e48fa7c9L    # -9.801369893219106E295

    :try_start_0
    sget-boolean v0, Labcd/bc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29cd119e48fa7c9L    # -9.801369893219106E295

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v0}, Labcd/bc$a;->DW()V

    :goto_0
    iget-object v0, p1, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v0}, Labcd/bc$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v0}, Labcd/bc$a;->FH()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/bc;->FH(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public Hw()I
    .registers 5

    const-wide v2, 0xf564d21b93efd8bL    # 8.767453869989196E-235

    :try_start_0
    sget-boolean v0, Labcd/bc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf564d21b93efd8bL    # 8.767453869989196E-235

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/bc;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const-wide v8, 0x5b5a6a4cca31618L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_0

    const-wide v4, 0x5b5a6a4cca31618L

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

    invoke-virtual {p0}, Labcd/bc;->Hw()I

    move-result v5

    if-eq v4, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_1
    iget-object v4, p0, Labcd/bc;->Zo:[I

    array-length v4, v4

    if-ge v5, v4, :cond_5

    iget-object v4, p0, Labcd/bc;->Zo:[I

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

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_6

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v4, 0x12efd117c4d2bd15L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/bc;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x12efd117c4d2bd15L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/bc;->gn:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/bc;->Zo:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/bc;->Zo:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/bc;->gn:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/bc;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, -0x6d4ca7cc66f44ff8L    # -1.3700029534785164E-218

    :try_start_0
    sget-boolean v0, Labcd/bc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6d4ca7cc66f44ff8L    # -1.3700029534785164E-218

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/bc;->u7:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/bc;->tp:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/bc;->Zo:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/bc;->Zo:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Labcd/bc;->Zo:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(I)Z
    .registers 8

    const-wide v4, -0xf0344acaa1467e8L    # -1.8270841535615377E236

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/bc;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xf0344acaa1467e8L    # -1.8270841535615377E236

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/bc;->Zo:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/bc;->Zo:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/bc;->Zo:[I

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

    iget-object v1, p0, Labcd/bc;->Zo:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/bc;->Zo:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-wide v4, 0xdfdf1c7499f636cL

    :try_start_0
    sget-boolean v0, Labcd/bc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xdfdf1c7499f636cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/bc;->Zo:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/bc;->Zo:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

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
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    sget-boolean v1, Labcd/bc;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
