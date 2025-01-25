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
            "LYb<",
            "TE;>.a;"
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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x144b4b28fd7b0960L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2683a68821bc22b5L  # 3.715743377605097E-123

    :try_start_6
    const-class v3, Labcd/Yb;

    const-wide v4, 0x744eebb52f221f8L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Yb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Yb;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Yb;->FH:Z

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

.method public constructor <init>(Labcd/Ba;)V
    .registers 7

    const-wide v0, 0x272a89885728c480L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Yb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Yb$a;

    invoke-direct {v3, p0, v2}, Labcd/Yb$a;-><init>(Labcd/Yb;Labcd/Xb;)V

    iput-object v3, p0, Labcd/Yb;->Hw:Labcd/Yb$a;

    iput-object p1, p0, Labcd/Yb;->tp:Labcd/Ba;

    const/4 v3, 0x1

    iput v3, p0, Labcd/Yb;->u7:I

    sget-object v4, Labcd/Yb;->j6:[I

    aget v3, v4, v3

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Yb;->v5:[I

    const/4 v3, 0x0

    iput v3, p0, Labcd/Yb;->VH:I

    iput v3, p0, Labcd/Yb;->gn:I
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v3

    sget-boolean v4, Labcd/Yb;->FH:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public constructor <init>(Labcd/Ba;Labcd/ec;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Yb;->DW:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x5b5a3fd6e06caa14L

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Yb$a;

    invoke-direct {v0, p0, v1}, Labcd/Yb$a;-><init>(Labcd/Yb;Labcd/Xb;)V

    iput-object v0, p0, Labcd/Yb;->Hw:Labcd/Yb$a;

    iput-object p1, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Yb;->u7:I

    sget-object v2, Labcd/Yb;->j6:[I

    aget v1, v2, v1

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Yb;->v5:[I

    const/4 v1, 0x0

    iput v1, p0, Labcd/Yb;->VH:I

    iput v1, p0, Labcd/Yb;->gn:I

    :goto_30
    if-ge v1, v0, :cond_3c

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Yb;->j6(I)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3d

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3c
    return-void

    :catchall_3d
    move-exception v0

    sget-boolean v1, Labcd/Yb;->FH:Z

    if-eqz v1, :cond_4e

    const-wide v2, 0x5b5a3fd6e06caa14L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v0

    :goto_50
    goto :goto_4f
.end method

.method static synthetic DW(Labcd/Yb;)Labcd/Ba;
    .registers 1

    iget-object p0, p0, Labcd/Yb;->tp:Labcd/Ba;

    return-object p0
.end method

.method private j6(I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x6276fd7f29c9fcadL
    .end annotation

    const-wide v0, 0x62a8baa6d3bd442dL  # 1.8227875916382766E167

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Yb;->v5:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_1f
    if-eqz v3, :cond_37

    if-ne v3, p1, :cond_24

    return-void

    :cond_24
    const/high16 v8, -0x80000000

    if-ne v3, v8, :cond_29

    move v7, v4

    :cond_29
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/Yb;->v5:[I

    array-length v8, v3

    rem-int/2addr v4, v8

    aget v3, v3, v4

    goto :goto_1f

    :cond_37
    if-eq v7, v6, :cond_3a

    move v4, v7

    :cond_3a
    iget-object v2, p0, Labcd/Yb;->v5:[I

    aput p1, v2, v4

    if-ne v7, v6, :cond_46

    iget v3, p0, Labcd/Yb;->VH:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Yb;->VH:I

    :cond_46
    iget v3, p0, Labcd/Yb;->gn:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Yb;->gn:I

    iget v3, p0, Labcd/Yb;->VH:I

    mul-int/lit8 v3, v3, 0x2

    array-length v2, v2

    if-le v3, v2, :cond_56

    invoke-direct {p0}, Labcd/Yb;->v5()V
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_57

    :cond_56
    return-void

    :catchall_57
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_64

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    goto :goto_66

    :goto_65
    throw v2

    :goto_66
    goto :goto_65
.end method

.method static synthetic j6(Labcd/Yb;)[I
    .registers 1

    iget-object p0, p0, Labcd/Yb;->v5:[I

    return-object p0
.end method

.method private v5()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x186ccfb0e5fc3740L
    .end annotation

    const-wide v0, 0x20a4408684eea9d4L

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Yb;->gn:I

    iget-object v3, p0, Labcd/Yb;->v5:[I

    array-length v4, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    if-le v2, v4, :cond_26

    iget v2, p0, Labcd/Yb;->u7:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Yb;->u7:I

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/Yb;->Zo:[I

    sget-object v3, Labcd/Yb;->j6:[I

    aget v2, v3, v2

    :goto_23
    new-array v2, v2, [I

    goto :goto_45

    :cond_26
    iget-object v2, p0, Labcd/Yb;->Zo:[I

    if-eqz v2, :cond_3c

    array-length v4, v2

    array-length v6, v3

    if-ne v4, v6, :cond_3c

    const/4 v3, 0x0

    :goto_2f
    array-length v4, v2
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_75

    if-ge v3, v4, :cond_37

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_37
    :try_start_37
    iget-object v3, p0, Labcd/Yb;->v5:[I

    iput-object v3, p0, Labcd/Yb;->Zo:[I

    goto :goto_45

    :cond_3c
    iput-object v3, p0, Labcd/Yb;->Zo:[I

    sget-object v2, Labcd/Yb;->j6:[I

    iget v3, p0, Labcd/Yb;->u7:I

    aget v2, v2, v3

    goto :goto_23

    :goto_45
    const/4 v3, 0x0

    :goto_46
    iget-object v4, p0, Labcd/Yb;->v5:[I

    array-length v6, v4

    if-ge v5, v6, :cond_70

    aget v4, v4, v5

    if-eqz v4, :cond_6d

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_6d

    const v6, 0x7fffffff

    and-int/2addr v6, v4

    array-length v7, v2

    array-length v8, v2

    rem-int v8, v6, v8
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_75

    :goto_5b
    aget v9, v2, v8

    if-eqz v9, :cond_69

    add-int/lit8 v9, v7, -0x2

    :try_start_61
    rem-int v9, v6, v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    array-length v9, v2

    rem-int/2addr v8, v9
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_75

    goto :goto_5b

    :cond_69
    aput v4, v2, v8

    add-int/lit8 v3, v3, 0x1

    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_70
    :try_start_70
    iput-object v2, p0, Labcd/Yb;->v5:[I

    iput v3, p0, Labcd/Yb;->VH:I
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_75

    return-void

    :catchall_75
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_7d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw v2

    :goto_7f
    goto :goto_7e
.end method


# virtual methods
.method public DW(Labcd/Aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-wide v0, -0x61458b9c15b51315L

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p1, :cond_13

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Labcd/Yb;->j6(I)V

    goto :goto_1c

    :cond_13
    iget-object v2, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Yb;->j6(I)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    :goto_1c
    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public DW()Z
    .registers 5

    const-wide v0, 0x414ba1a491fe75cL

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Yb;->gn:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public FH()Labcd/Aa;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const-wide v0, 0xa076d0902fd4b9fL

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_e
    iget-object v4, p0, Labcd/Yb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2b

    aget v4, v4, v3

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_e

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_e

    const v3, 0x7fffffff

    if-ne v4, v3, :cond_23

    goto :goto_24

    :cond_23
    move v2, v4

    :goto_24
    iget-object v3, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v3, v2}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2d

    return-object v0

    :cond_2b
    const/4 v0, 0x0

    return-object v0

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method

.method public FH(Labcd/Aa;)V
    .registers 10

    const-wide v0, 0x47f9449093e4f08L

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    const v3, 0x7fffffff

    if-nez v2, :cond_1a

    const v2, 0x7fffffff

    :cond_1a
    and-int/2addr v3, v2

    iget-object v4, p0, Labcd/Yb;->v5:[I

    array-length v5, v4

    rem-int v5, v3, v5

    array-length v6, v4

    aget v4, v4, v5

    :goto_23
    if-eq v4, v2, :cond_36

    if-nez v4, :cond_28

    return-void

    :cond_28
    add-int/lit8 v4, v6, -0x2

    rem-int v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v4

    iget-object v4, p0, Labcd/Yb;->v5:[I

    array-length v7, v4

    rem-int/2addr v5, v7

    aget v4, v4, v5

    goto :goto_23

    :cond_36
    iget-object v2, p0, Labcd/Yb;->v5:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v5

    iget v2, p0, Labcd/Yb;->gn:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/Yb;->gn:I
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    return-void

    :catchall_43
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method

.method public FH(Labcd/Yb;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYb<",
            "+TE;>;)V"
        }
    .end annotation

    const-wide v0, -0x2cf96b309c60affbL  # -9.199779823674272E91

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p1, Labcd/Yb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2a

    aget v4, v4, v3

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1e

    invoke-direct {p0, v2}, Labcd/Yb;->j6(I)V

    goto :goto_27

    :cond_1e
    if-eqz v4, :cond_27

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_27

    invoke-direct {p0, v4}, Labcd/Yb;->j6(I)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2b

    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public Hw()I
    .registers 5

    const-wide v0, 0x151a48c78c3ca2d4L

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Yb;->gn:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw(Labcd/Yb;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYb<",
            "+TE;>;)V"
        }
    .end annotation

    const-wide v0, -0x5fcfa62423e88418L

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p1, Labcd/Yb;->Hw:Labcd/Yb$a;

    invoke-virtual {v2}, Labcd/Yb$a;->DW()V

    :goto_11
    iget-object v2, p1, Labcd/Yb;->Hw:Labcd/Yb$a;

    invoke-virtual {v2}, Labcd/Yb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p1, Labcd/Yb;->Hw:Labcd/Yb$a;

    invoke-virtual {v2}, Labcd/Yb$a;->FH()Labcd/Aa;

    move-result-object v2

    invoke-virtual {p0, v2}, Labcd/Yb;->FH(Labcd/Aa;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_24

    goto :goto_11

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v2

    :goto_2e
    goto :goto_2d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const-wide v0, 0x76b3bdd2e5196da5L  # 6.216362768869539E263

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/bc;

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    move-object v2, p1

    check-cast v2, Labcd/bc;

    invoke-virtual {v2}, Labcd/bc;->Hw()I

    move-result v4

    invoke-virtual {p0}, Labcd/Yb;->Hw()I

    move-result v5

    if-eq v4, v5, :cond_20

    return v3

    :cond_20
    const/4 v4, 0x0

    :goto_21
    iget-object v5, p0, Labcd/Yb;->v5:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3e

    aget v5, v5, v4

    if-eqz v5, :cond_3b

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_3b

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_34

    const/4 v5, 0x0

    :cond_34
    invoke-virtual {v2, v5}, Labcd/bc;->j6(I)Z

    move-result v5
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_40

    if-nez v5, :cond_3b

    return v3

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_3e
    const/4 p1, 0x1

    return p1

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method

.method public j6()V
    .registers 7

    const-wide v0, 0x31a722ea8d48dacL

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Yb;->VH:I

    if-lez v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/Yb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1c

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    iput v2, p0, Labcd/Yb;->VH:I

    iput v2, p0, Labcd/Yb;->gn:I
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    goto :goto_2b

    :goto_2a
    throw v2

    :goto_2b
    goto :goto_2a
.end method

.method public j6(Labcd/fc;)V
    .registers 7

    const-wide v0, 0x12943d96736b5857L  # 3.583653842338894E-219

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Yb;->gn:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Yb;->u7:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Labcd/Yb;->v5:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2a

    aget v3, v3, v2

    if-eqz v3, :cond_27

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_27

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2b

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public j6(Labcd/Aa;)Z
    .registers 10

    const-wide v0, -0x2630564c882bc7L

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    const v3, 0x7fffffff

    if-nez v2, :cond_1a

    const v2, 0x7fffffff

    :cond_1a
    and-int/2addr v3, v2

    iget-object v4, p0, Labcd/Yb;->v5:[I

    array-length v5, v4

    array-length v6, v4

    rem-int v6, v3, v6

    aget v4, v4, v6

    :goto_23
    const/4 v7, 0x1

    if-eq v4, v2, :cond_37

    if-nez v4, :cond_2a

    const/4 p1, 0x0

    return p1

    :cond_2a
    add-int/lit8 v4, v5, -0x2

    rem-int v4, v3, v4

    add-int/2addr v4, v7

    add-int/2addr v6, v4

    iget-object v4, p0, Labcd/Yb;->v5:[I

    array-length v7, v4

    rem-int/2addr v6, v7

    aget v4, v4, v6
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_38

    goto :goto_23

    :cond_37
    return v7

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    goto :goto_42

    :goto_41
    throw v2

    :goto_42
    goto :goto_41
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const-wide v0, 0x714531781a72affL

    :try_start_5
    sget-boolean v2, Labcd/Yb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_5e

    :cond_c
    const/4 v2, 0x0

    const-string v3, "{"

    const/4 v4, 0x0

    :goto_10
    :try_start_10
    iget-object v5, p0, Labcd/Yb;->v5:[I

    array-length v6, v5

    if-ge v4, v6, :cond_4c

    aget v5, v5, v4

    if-eqz v5, :cond_49

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_49

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_23

    const/4 v5, 0x0

    :cond_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Yb;->tp:Labcd/Ba;

    invoke-virtual {v3, v5}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_10 .. :try_end_5d} :catchall_5e

    return-object v0

    :catchall_5e
    move-exception v2

    sget-boolean v3, Labcd/Yb;->FH:Z

    if-eqz v3, :cond_66

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_66
    goto :goto_68

    :goto_67
    throw v2

    :goto_68
    goto :goto_67
.end method
