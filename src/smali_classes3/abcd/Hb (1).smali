.class public Labcd/Hb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Hb$a;
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
        field = -0x1d05243ee07e445L
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = -0x21ca9b297eee5d9dL
    .end annotation
.end field

.field public final Hw:Labcd/Hb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHb<",
            "TE;>.a;"
        }
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = -0x1a1e30957549e337L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x3058b01fab6a4f30L
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = -0x6f12375923f9430L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x7d12205dceb7140L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x10c55ae0d84b704cL
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0x11cfda561550899bL
    .end annotation
.end field

.field private final we:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = 0x10c6f45be2cf0cddL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2b6439cf30bc6f5dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1b2b9252f34f52a0L  # 8.504997641227283E-178

    :try_start_6
    const-class v3, Labcd/Hb;

    const-wide v4, -0x29ffc2e310540b11L  # -1.8621744112569646E106

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Hb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Hb;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Hb;->FH:Z

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
    .registers 8

    const-wide v0, -0x5bff7a3f1bf1434L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Hb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Hb$a;

    invoke-direct {v3, p0, v2}, Labcd/Hb$a;-><init>(Labcd/Hb;Labcd/Gb;)V

    iput-object v3, p0, Labcd/Hb;->Hw:Labcd/Hb$a;

    iput-object p1, p0, Labcd/Hb;->we:Labcd/Ba;

    const/4 v3, 0x0

    iput v3, p0, Labcd/Hb;->EQ:I

    sget-object v4, Labcd/Hb;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/Hb;->v5:[I

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Hb;->VH:[I

    iput v3, p0, Labcd/Hb;->u7:I

    iput v3, p0, Labcd/Hb;->tp:I
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v3

    sget-boolean v4, Labcd/Hb;->FH:Z

    if-eqz v4, :cond_35

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v3
.end method

.method public constructor <init>(Labcd/Ba;Labcd/ec;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Hb;->DW:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x36d532d1848bf00L  # -1.164765740848213E292

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Hb$a;

    invoke-direct {v0, p0, v1}, Labcd/Hb$a;-><init>(Labcd/Hb;Labcd/Gb;)V

    iput-object v0, p0, Labcd/Hb;->Hw:Labcd/Hb$a;

    iput-object p1, p0, Labcd/Hb;->we:Labcd/Ba;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Hb;->EQ:I

    sget-object v2, Labcd/Hb;->j6:[I

    aget v1, v2, v1

    new-array v2, v1, [I

    iput-object v2, p0, Labcd/Hb;->v5:[I

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Hb;->VH:[I

    const/4 v1, 0x0

    iput v1, p0, Labcd/Hb;->u7:I

    iput v1, p0, Labcd/Hb;->tp:I

    :goto_34
    if-ge v1, v0, :cond_44

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-direct {p0, v2, v3}, Labcd/Hb;->j6(II)V
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_45

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_44
    return-void

    :catchall_45
    move-exception v0

    sget-boolean v1, Labcd/Hb;->FH:Z

    if-eqz v1, :cond_56

    const-wide v2, -0x36d532d1848bf00L  # -1.164765740848213E292

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method

.method private DW(II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x316f1c430211284dL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Hb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x4b63d68397e12edL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const v0, 0x7fffffff

    if-nez p1, :cond_1e

    const p1, 0x7fffffff

    :cond_1e
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Hb;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_2a
    const/4 v7, 0x1

    if-eqz v1, :cond_53

    const/high16 v8, -0x80000000

    if-ne v1, p1, :cond_43

    iget-object v1, p0, Labcd/Hb;->VH:[I

    aget v1, v1, v2

    if-ne v1, p2, :cond_39

    const/4 v5, 0x1

    goto :goto_46

    :cond_39
    iget-object v1, p0, Labcd/Hb;->v5:[I

    aput v8, v1, v2

    iget v1, p0, Labcd/Hb;->tp:I

    sub-int/2addr v1, v7

    iput v1, p0, Labcd/Hb;->tp:I

    goto :goto_46

    :cond_43
    if-ne v1, v8, :cond_46

    move v6, v2

    :cond_46
    :goto_46
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/2addr v1, v7

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/Hb;->v5:[I

    array-length v7, v1

    rem-int/2addr v2, v7

    aget v1, v1, v2

    goto :goto_2a

    :cond_53
    if-nez v5, :cond_76

    if-eq v6, v4, :cond_58

    move v2, v6

    :cond_58
    iget-object v0, p0, Labcd/Hb;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/Hb;->VH:[I

    aput p2, v1, v2

    iget v1, p0, Labcd/Hb;->tp:I

    add-int/2addr v1, v7

    iput v1, p0, Labcd/Hb;->tp:I

    if-ne v6, v4, :cond_6c

    iget v1, p0, Labcd/Hb;->u7:I

    add-int/2addr v1, v7

    iput v1, p0, Labcd/Hb;->u7:I

    :cond_6c
    iget v1, p0, Labcd/Hb;->u7:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_76

    invoke-direct {p0}, Labcd/Hb;->Hw()V
    :try_end_76
    .catchall {:try_start_0 .. :try_end_76} :catchall_77

    :cond_76
    return-void

    :catchall_77
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Hb;->FH:Z

    if-eqz v0, :cond_91

    const-wide v1, 0x4b63d68397e12edL

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_91
    goto :goto_93

    :goto_92
    throw v6

    :goto_93
    goto :goto_92
.end method

.method static synthetic DW(Labcd/Hb;)[I
    .registers 1

    iget-object p0, p0, Labcd/Hb;->VH:[I

    return-object p0
.end method

.method static synthetic FH(Labcd/Hb;)Labcd/Ba;
    .registers 1

    iget-object p0, p0, Labcd/Hb;->we:Labcd/Ba;

    return-object p0
.end method

.method private Hw()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x2c165dac9cb966b3L
    .end annotation

    const-wide v0, -0x254562b0e8e728fL

    :try_start_5
    sget-boolean v2, Labcd/Hb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Hb;->tp:I

    iget-object v3, p0, Labcd/Hb;->v5:[I

    array-length v4, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    if-le v2, v4, :cond_2a

    iget v2, p0, Labcd/Hb;->EQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Hb;->EQ:I

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/Hb;->Zo:[I

    iput-object v3, p0, Labcd/Hb;->gn:[I

    sget-object v3, Labcd/Hb;->j6:[I

    aget v2, v3, v2

    new-array v3, v2, [I

    :goto_27
    new-array v2, v2, [I

    goto :goto_58

    :cond_2a
    iget-object v2, p0, Labcd/Hb;->Zo:[I

    if-eqz v2, :cond_49

    array-length v4, v2

    array-length v6, v3

    if-ne v4, v6, :cond_49

    const/4 v3, 0x0

    :goto_33
    array-length v4, v2
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_90

    if-ge v3, v4, :cond_3b

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3b
    :try_start_3b
    iget-object v3, p0, Labcd/Hb;->gn:[I

    iget-object v4, p0, Labcd/Hb;->v5:[I

    iput-object v4, p0, Labcd/Hb;->Zo:[I

    iget-object v4, p0, Labcd/Hb;->VH:[I

    iput-object v4, p0, Labcd/Hb;->gn:[I

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_58

    :cond_49
    iput-object v3, p0, Labcd/Hb;->Zo:[I

    iget-object v2, p0, Labcd/Hb;->VH:[I

    iput-object v2, p0, Labcd/Hb;->gn:[I

    sget-object v2, Labcd/Hb;->j6:[I

    iget v3, p0, Labcd/Hb;->EQ:I

    aget v2, v2, v3

    new-array v3, v2, [I

    goto :goto_27

    :goto_58
    const/4 v4, 0x0

    :goto_59
    iget-object v6, p0, Labcd/Hb;->v5:[I

    array-length v7, v6

    if-ge v5, v7, :cond_89

    aget v6, v6, v5

    if-eqz v6, :cond_86

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_86

    const v7, 0x7fffffff

    and-int/2addr v7, v6

    array-length v8, v3

    array-length v9, v3

    rem-int v9, v7, v9
    :try_end_6e
    .catchall {:try_start_3b .. :try_end_6e} :catchall_90

    :goto_6e
    aget v10, v3, v9

    if-eqz v10, :cond_7c

    add-int/lit8 v10, v8, -0x2

    :try_start_74
    rem-int v10, v7, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    array-length v10, v3

    rem-int/2addr v9, v10
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_90

    goto :goto_6e

    :cond_7c
    aput v6, v3, v9

    :try_start_7e
    iget-object v6, p0, Labcd/Hb;->VH:[I

    aget v6, v6, v5

    aput v6, v2, v9

    add-int/lit8 v4, v4, 0x1

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_89
    iput-object v3, p0, Labcd/Hb;->v5:[I

    iput-object v2, p0, Labcd/Hb;->VH:[I

    iput v4, p0, Labcd/Hb;->u7:I
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_90

    return-void

    :catchall_90
    move-exception v2

    sget-boolean v3, Labcd/Hb;->FH:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v2

    :goto_9a
    goto :goto_99
.end method

.method private j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x25003d2ec19db99L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Hb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x5a0d20c77398e433L  # -6.969774874548338E-126

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const v0, 0x7fffffff

    if-nez p1, :cond_1e

    const p1, 0x7fffffff

    :cond_1e
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Hb;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_29
    if-eqz v1, :cond_47

    if-ne v1, p1, :cond_34

    iget-object v1, p0, Labcd/Hb;->VH:[I

    aget v1, v1, v2

    if-ne v1, p2, :cond_39

    return-void

    :cond_34
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_39

    move v5, v2

    :cond_39
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/Hb;->v5:[I

    array-length v6, v1

    rem-int/2addr v2, v6

    aget v1, v1, v2

    goto :goto_29

    :cond_47
    if-eq v5, v4, :cond_4a

    move v2, v5

    :cond_4a
    iget-object v0, p0, Labcd/Hb;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/Hb;->VH:[I

    aput p2, v1, v2

    iget v1, p0, Labcd/Hb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Hb;->tp:I

    if-ne v5, v4, :cond_60

    iget v1, p0, Labcd/Hb;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Hb;->u7:I

    :cond_60
    iget v1, p0, Labcd/Hb;->u7:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_6a

    invoke-direct {p0}, Labcd/Hb;->Hw()V
    :try_end_6a
    .catchall {:try_start_0 .. :try_end_6a} :catchall_6b

    :cond_6a
    return-void

    :catchall_6b
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Hb;->FH:Z

    if-eqz v0, :cond_85

    const-wide v1, -0x5a0d20c77398e433L  # -6.969774874548338E-126

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_85
    goto :goto_87

    :goto_86
    throw v6

    :goto_87
    goto :goto_86
.end method

.method static synthetic j6(Labcd/Hb;)[I
    .registers 1

    iget-object p0, p0, Labcd/Hb;->v5:[I

    return-object p0
.end method


# virtual methods
.method public DW(I)I
    .registers 10

    const-wide v0, -0x379f9df9f55d3354L  # -4.459850867060392E40

    :try_start_5
    sget-boolean v2, Labcd/Hb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Hb;->v5:[I

    array-length v4, v3

    array-length v5, v3

    rem-int v5, v2, v5

    aget v3, v3, v5

    const/4 v6, 0x0

    :goto_1e
    if-eqz v3, :cond_32

    if-ne v3, p1, :cond_24

    add-int/lit8 v6, v6, 0x1

    :cond_24
    add-int/lit8 v3, v4, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v3

    iget-object v3, p0, Labcd/Hb;->v5:[I

    array-length v7, v3

    rem-int/2addr v5, v7

    aget v3, v3, v5
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_33

    goto :goto_1e

    :cond_32
    return v6

    :catchall_33
    move-exception v2

    sget-boolean v3, Labcd/Hb;->FH:Z

    if-eqz v3, :cond_40

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    goto :goto_42

    :goto_41
    throw v2

    :goto_42
    goto :goto_41
.end method

.method public DW()Labcd/Hb$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHb<",
            "TE;>.a;"
        }
    .end annotation

    const-wide v0, 0x33ad38044105de2cL  # 9.091456579552852E-60

    :try_start_5
    sget-boolean v2, Labcd/Hb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Hb$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Labcd/Hb$a;-><init>(Labcd/Hb;Labcd/Gb;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v2

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Hb;->FH:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public DW(ILabcd/Aa;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Hb;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xa7b201bf6a63557L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Labcd/Hb;->we:Labcd/Ba;

    invoke-virtual {v0, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Hb;->DW(II)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Labcd/Hb;->FH:Z

    if-eqz v1, :cond_30

    const-wide v2, 0xa7b201bf6a63557L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0x1325a2e0d55a50b1L

    :try_start_5
    sget-boolean v2, Labcd/Hb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Hb;->tp:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Hb;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH(I)Labcd/Aa;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const-wide v0, 0x56974c55468d4d35L  # 1.3679189728014314E109

    :try_start_5
    sget-boolean v2, Labcd/Hb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Hb;->v5:[I

    array-length v4, v3

    array-length v5, v3

    rem-int v5, v2, v5

    aget v3, v3, v5

    :goto_1d
    if-eq v3, p1, :cond_31

    if-nez v3, :cond_23

    const/4 p1, 0x0

    return-object p1

    :cond_23
    add-int/lit8 v3, v4, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v3

    iget-object v3, p0, Labcd/Hb;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5

    goto :goto_1d

    :cond_31
    iget-object v2, p0, Labcd/Hb;->we:Labcd/Ba;

    iget-object v3, p0, Labcd/Hb;->VH:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    return-object p1

    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/Hb;->FH:Z

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

.method public j6()V
    .registers 7

    const-wide v0, 0x4dfbcefd33ff677L

    :try_start_5
    sget-boolean v2, Labcd/Hb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Hb;->u7:I

    if-lez v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/Hb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1c

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    iput v2, p0, Labcd/Hb;->u7:I

    iput v2, p0, Labcd/Hb;->tp:I
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/Hb;->FH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    goto :goto_2b

    :goto_2a
    throw v2

    :goto_2b
    goto :goto_2a
.end method

.method public j6(ILabcd/Aa;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Hb;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5216eb6d82d9e221L  # -1.5759594569542083E-87

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Labcd/Hb;->we:Labcd/Ba;

    invoke-virtual {v0, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Hb;->j6(II)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Labcd/Hb;->FH:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x5216eb6d82d9e221L  # -1.5759594569542083E-87

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public j6(Labcd/fc;)V
    .registers 7

    const-wide v0, 0x7f5a87deaab7b10L

    :try_start_5
    sget-boolean v2, Labcd/Hb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Hb;->tp:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Hb;->EQ:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Labcd/Hb;->v5:[I

    array-length v4, v3

    if-ge v2, v4, :cond_31

    aget v3, v3, v2

    if-eqz v3, :cond_2e

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2e

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Labcd/Hb;->VH:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_32

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_31
    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Hb;->FH:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v2

    :goto_3c
    goto :goto_3b
.end method

.method public j6(I)Z
    .registers 9

    const-wide v0, -0x82837c026ec6550L

    :try_start_5
    sget-boolean v2, Labcd/Hb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Hb;->v5:[I

    array-length v4, v3

    array-length v5, v3

    rem-int v5, v2, v5

    aget v3, v3, v5

    :goto_1d
    const/4 v6, 0x1

    if-eq v3, p1, :cond_31

    if-nez v3, :cond_24

    const/4 p1, 0x0

    return p1

    :cond_24
    add-int/lit8 v3, v4, -0x2

    rem-int v3, v2, v3

    add-int/2addr v3, v6

    add-int/2addr v5, v3

    iget-object v3, p0, Labcd/Hb;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_32

    goto :goto_1d

    :cond_31
    return v6

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Hb;->FH:Z

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v2

    :goto_41
    goto :goto_40
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v0, -0x76444948dab31d8L

    :try_start_5
    sget-boolean v2, Labcd/Hb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_78

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget-object v4, p0, Labcd/Hb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_66

    aget v4, v4, v3

    if-eqz v4, :cond_63

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_63

    iget-object v5, p0, Labcd/Hb;->we:Labcd/Ba;

    iget-object v6, p0, Labcd/Hb;->VH:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v5
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_78

    const v6, 0x7fffffff

    const-string v7, ", "

    if-ne v4, v6, :cond_49

    :try_start_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0->"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    :cond_49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    sget-boolean v3, Labcd/Hb;->FH:Z

    if-eqz v3, :cond_80

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_80
    goto :goto_82

    :goto_81
    throw v2

    :goto_82
    goto :goto_81
.end method
