.class public Labcd/Fb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Fb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Labcd/Aa;",
        "V:",
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
        field = -0x21d2757a43228a0dL
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = -0x2071404b179b6d95L
    .end annotation
.end field

.field public final Hw:Labcd/Fb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFb<",
            "TK;TV;>.a;"
        }
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = -0x145909f054ebfcafL
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x2f1fb6c17086b280L
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = -0x31bc47bad39b2798L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x18c09f12f57f99a8L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0xfd062ec4d7b67f4L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0x16073dc6fd80165bL
    .end annotation
.end field

.field private final we:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = -0xfb22835b7709bc3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x9159ab499d3b92bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x244a52e65980c651L  # 7.243375036681313E-134

    :try_start_6
    const-class v3, Labcd/Fb;

    const-wide v4, 0x47b2a1956aca5e8L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Fb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Fb;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Fb;->FH:Z

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

    const-wide v0, 0x607c45b8b91b07f0L  # 6.0651237950703394E156

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Fb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Fb$a;

    invoke-direct {v3, p0, v2}, Labcd/Fb$a;-><init>(Labcd/Fb;Labcd/Eb;)V

    iput-object v3, p0, Labcd/Fb;->Hw:Labcd/Fb$a;

    iput-object p1, p0, Labcd/Fb;->we:Labcd/Ba;

    const/4 v3, 0x0

    iput v3, p0, Labcd/Fb;->EQ:I

    sget-object v4, Labcd/Fb;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/Fb;->v5:[I

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Fb;->VH:[I

    iput v3, p0, Labcd/Fb;->u7:I

    iput v3, p0, Labcd/Fb;->tp:I
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v3

    sget-boolean v4, Labcd/Fb;->FH:Z

    if-eqz v4, :cond_35

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v3
.end method

.method public constructor <init>(Labcd/Ba;Labcd/ec;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x1290a114fb11a75cL

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Fb$a;

    invoke-direct {v0, p0, v1}, Labcd/Fb$a;-><init>(Labcd/Fb;Labcd/Eb;)V

    iput-object v0, p0, Labcd/Fb;->Hw:Labcd/Fb$a;

    iput-object p1, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Fb;->EQ:I

    sget-object v2, Labcd/Fb;->j6:[I

    aget v1, v2, v1

    new-array v2, v1, [I

    iput-object v2, p0, Labcd/Fb;->v5:[I

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Fb;->VH:[I

    const/4 v1, 0x0

    iput v1, p0, Labcd/Fb;->u7:I

    iput v1, p0, Labcd/Fb;->tp:I

    :goto_34
    if-ge v1, v0, :cond_44

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-direct {p0, v2, v3}, Labcd/Fb;->j6(II)V
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_45

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_44
    return-void

    :catchall_45
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x1290a114fb11a75cL

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

.method private DW(I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x8f0ea48686120L
    .end annotation

    const-wide v0, -0x2f6cce10b560f0f7L  # -1.4224869225955292E80

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Fb;->v5:[I

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

    iget-object v3, p0, Labcd/Fb;->v5:[I

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

    sget-boolean v3, Labcd/Fb;->FH:Z

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

.method private DW(II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x533cbd39ecd3084bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x5254926b63621c40L  # 4.0923637229377396E88

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const v0, 0x7fffffff

    if-nez p1, :cond_1e

    const p1, 0x7fffffff

    :cond_1e
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Fb;->v5:[I

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

    iget-object v1, p0, Labcd/Fb;->VH:[I

    aget v1, v1, v2

    if-ne v1, p2, :cond_39

    const/4 v5, 0x1

    goto :goto_46

    :cond_39
    iget-object v1, p0, Labcd/Fb;->v5:[I

    aput v8, v1, v2

    iget v1, p0, Labcd/Fb;->tp:I

    sub-int/2addr v1, v7

    iput v1, p0, Labcd/Fb;->tp:I

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

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v7, v1

    rem-int/2addr v2, v7

    aget v1, v1, v2

    goto :goto_2a

    :cond_53
    if-nez v5, :cond_76

    if-eq v6, v4, :cond_58

    move v2, v6

    :cond_58
    iget-object v0, p0, Labcd/Fb;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/Fb;->VH:[I

    aput p2, v1, v2

    iget v1, p0, Labcd/Fb;->tp:I

    add-int/2addr v1, v7

    iput v1, p0, Labcd/Fb;->tp:I

    if-ne v6, v4, :cond_6c

    iget v1, p0, Labcd/Fb;->u7:I

    add-int/2addr v1, v7

    iput v1, p0, Labcd/Fb;->u7:I

    :cond_6c
    iget v1, p0, Labcd/Fb;->u7:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_76

    invoke-direct {p0}, Labcd/Fb;->Hw()V
    :try_end_76
    .catchall {:try_start_0 .. :try_end_76} :catchall_77

    :cond_76
    return-void

    :catchall_77
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Fb;->FH:Z

    if-eqz v0, :cond_91

    const-wide v1, 0x5254926b63621c40L  # 4.0923637229377396E88

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

.method static synthetic DW(Labcd/Fb;)[I
    .registers 1

    iget-object p0, p0, Labcd/Fb;->v5:[I

    return-object p0
.end method

.method private FH(I)I
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x67e350104f7a636bL
    .end annotation

    const-wide v0, -0x694eb66aeb9dfacL

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Fb;->v5:[I

    array-length v4, v3

    array-length v5, v3

    rem-int v5, v2, v5

    aget v3, v3, v5

    :goto_1d
    if-eq v3, p1, :cond_31

    if-nez v3, :cond_23

    const/4 p1, -0x1

    return p1

    :cond_23
    add-int/lit8 v3, v4, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v3

    iget-object v3, p0, Labcd/Fb;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5

    goto :goto_1d

    :cond_31
    iget-object v2, p0, Labcd/Fb;->VH:[I

    aget p1, v2, v5
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return p1

    :catchall_36
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_43

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v2

    :goto_45
    goto :goto_44
.end method

.method static synthetic FH(Labcd/Fb;)[I
    .registers 1

    iget-object p0, p0, Labcd/Fb;->VH:[I

    return-object p0
.end method

.method private Hw()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x2a12903454880c0dL
    .end annotation

    const-wide v0, -0x199063aca8f4480L  # -7.693319765583671E300

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Fb;->tp:I

    iget-object v3, p0, Labcd/Fb;->v5:[I

    array-length v4, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    if-le v2, v4, :cond_2a

    iget v2, p0, Labcd/Fb;->EQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Fb;->EQ:I

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/Fb;->Zo:[I

    iput-object v3, p0, Labcd/Fb;->gn:[I

    sget-object v3, Labcd/Fb;->j6:[I

    aget v2, v3, v2

    new-array v3, v2, [I

    :goto_27
    new-array v2, v2, [I

    goto :goto_58

    :cond_2a
    iget-object v2, p0, Labcd/Fb;->Zo:[I

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
    iget-object v3, p0, Labcd/Fb;->gn:[I

    iget-object v4, p0, Labcd/Fb;->v5:[I

    iput-object v4, p0, Labcd/Fb;->Zo:[I

    iget-object v4, p0, Labcd/Fb;->VH:[I

    iput-object v4, p0, Labcd/Fb;->gn:[I

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_58

    :cond_49
    iput-object v3, p0, Labcd/Fb;->Zo:[I

    iget-object v2, p0, Labcd/Fb;->VH:[I

    iput-object v2, p0, Labcd/Fb;->gn:[I

    sget-object v2, Labcd/Fb;->j6:[I

    iget v3, p0, Labcd/Fb;->EQ:I

    aget v2, v2, v3

    new-array v3, v2, [I

    goto :goto_27

    :goto_58
    const/4 v4, 0x0

    :goto_59
    iget-object v6, p0, Labcd/Fb;->v5:[I

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
    iget-object v6, p0, Labcd/Fb;->VH:[I

    aget v6, v6, v5

    aput v6, v2, v9

    add-int/lit8 v4, v4, 0x1

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_89
    iput-object v3, p0, Labcd/Fb;->v5:[I

    iput-object v2, p0, Labcd/Fb;->VH:[I

    iput v4, p0, Labcd/Fb;->u7:I
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_90

    return-void

    :catchall_90
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v2

    :goto_9a
    goto :goto_99
.end method

.method private Hw(I)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xa21a3016f8c899L
    .end annotation

    const-wide v0, 0x190445205af4b4d0L  # 3.639544233642957E-188

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Fb;->v5:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    :goto_1d
    if-eqz v3, :cond_3b

    if-ne v3, p1, :cond_2d

    iget-object v3, p0, Labcd/Fb;->v5:[I

    const/high16 v6, -0x80000000

    aput v6, v3, v4

    iget v3, p0, Labcd/Fb;->tp:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Labcd/Fb;->tp:I

    :cond_2d
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/Fb;->v5:[I

    array-length v6, v3

    rem-int/2addr v4, v6

    aget v3, v3, v4
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3c

    goto :goto_1d

    :cond_3b
    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

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

.method static synthetic j6(Labcd/Fb;)Labcd/Ba;
    .registers 1

    iget-object p0, p0, Labcd/Fb;->we:Labcd/Ba;

    return-object p0
.end method

.method private j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x54e5c94bb0ee1a9L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x149e2fdcf7af5530L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const v0, 0x7fffffff

    if-nez p1, :cond_1e

    const p1, 0x7fffffff

    :cond_1e
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_29
    if-eqz v1, :cond_47

    if-ne v1, p1, :cond_34

    iget-object v1, p0, Labcd/Fb;->VH:[I

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

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v6, v1

    rem-int/2addr v2, v6

    aget v1, v1, v2

    goto :goto_29

    :cond_47
    if-eq v5, v4, :cond_4a

    move v2, v5

    :cond_4a
    iget-object v0, p0, Labcd/Fb;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/Fb;->VH:[I

    aput p2, v1, v2

    iget v1, p0, Labcd/Fb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Fb;->tp:I

    if-ne v5, v4, :cond_60

    iget v1, p0, Labcd/Fb;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Fb;->u7:I

    :cond_60
    iget v1, p0, Labcd/Fb;->u7:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_6a

    invoke-direct {p0}, Labcd/Fb;->Hw()V
    :try_end_6a
    .catchall {:try_start_0 .. :try_end_6a} :catchall_6b

    :cond_6a
    return-void

    :catchall_6b
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Fb;->FH:Z

    if-eqz v0, :cond_85

    const-wide v1, 0x149e2fdcf7af5530L

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

.method private j6(I)Z
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x6074ba51f7beb08L
    .end annotation

    const-wide v0, -0x13ae2cf5c081485L

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Fb;->v5:[I

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

    iget-object v3, p0, Labcd/Fb;->v5:[I

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

    sget-boolean v3, Labcd/Fb;->FH:Z

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


# virtual methods
.method public DW(Labcd/Aa;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const-wide v0, -0x28265cf6d540e88dL  # -1.578349472619836E115

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Fb;->DW(I)I

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public DW()Labcd/Aa;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const-wide v0, 0x13e9b567eb303b7bL  # 9.54578804971862E-213

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_e
    iget-object v4, p0, Labcd/Fb;->v5:[I

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
    iget-object v3, p0, Labcd/Fb;->we:Labcd/Ba;

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

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method

.method public DW(Labcd/Aa;Labcd/Aa;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3f94875a36be6af0L  # -219.7702375679878

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    iget-object v1, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v1, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Labcd/Fb;->DW(II)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x3f94875a36be6af0L  # -219.7702375679878

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v0, -0x19f666eb94c74d80L  # -3.399013311584785E183

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Fb;->tp:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH(Labcd/Aa;)Labcd/Aa;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const-wide v0, -0x47cd4431c90d20L

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v3

    invoke-direct {p0, v3}, Labcd/Fb;->FH(I)I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object p1

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public Hw(Labcd/Aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    const-wide v0, 0x20a8268483ceefc0L  # 2.305566155385034E-151

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Fb;->Hw(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Hw(Labcd/Fb;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFb<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-wide v0, 0x3d048fb103408a64L  # 9.131049138801927E-15

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p1, Labcd/Fb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2e

    aget v4, v4, v3

    iget-object v5, p1, Labcd/Fb;->VH:[I

    aget v5, v5, v3

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_22

    invoke-direct {p0, v2, v5}, Labcd/Fb;->j6(II)V

    goto :goto_2b

    :cond_22
    if-eqz v4, :cond_2b

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_2b

    invoke-direct {p0, v4, v5}, Labcd/Fb;->j6(II)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2f

    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2e
    return-void

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    goto :goto_39

    :goto_38
    throw v2

    :goto_39
    goto :goto_38
.end method

.method public j6()V
    .registers 7

    const-wide v0, 0x1af95d6d77aef460L

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Fb;->u7:I

    if-lez v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/Fb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1c

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    iput v2, p0, Labcd/Fb;->u7:I

    iput v2, p0, Labcd/Fb;->tp:I
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    goto :goto_2b

    :goto_2a
    throw v2

    :goto_2b
    goto :goto_2a
.end method

.method public j6(Labcd/Aa;Labcd/Aa;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2f28cb8a7b9e2d90L  # 1.6337166292622248E-81

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    iget-object v1, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v1, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Labcd/Fb;->j6(II)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_2d

    const-wide v2, 0x2f28cb8a7b9e2d90L  # 1.6337166292622248E-81

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public j6(Labcd/fc;)V
    .registers 7

    const-wide v0, 0x63a8539c90d074a3L  # 1.175138605850273E172

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Fb;->tp:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Fb;->EQ:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Labcd/Fb;->v5:[I

    array-length v4, v3

    if-ge v2, v4, :cond_31

    aget v3, v3, v2

    if-eqz v3, :cond_2e

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2e

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Labcd/Fb;->VH:[I

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

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v2

    :goto_3c
    goto :goto_3b
.end method

.method public j6(Labcd/Aa;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const-wide v0, -0xa73166bb15c9efL

    :try_start_5
    sget-boolean v2, Labcd/Fb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Fb;->j6(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    const-string v0, " "

    const-wide v1, 0x4e44f575c3ca7dfL

    :try_start_7
    sget-boolean v3, Labcd/Fb;->DW:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_90

    :cond_e
    const-string v3, "{"

    const/4 v4, 0x0

    :goto_11
    :try_start_11
    iget-object v5, p0, Labcd/Fb;->v5:[I

    array-length v6, v5

    if-ge v4, v6, :cond_7e

    aget v5, v5, v4

    if-eqz v5, :cond_7b

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_7b

    iget-object v6, p0, Labcd/Fb;->VH:[I

    aget v6, v6, v4
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_90

    const v7, 0x7fffffff

    const-string v8, ", "

    if-ne v5, v7, :cond_41

    :try_start_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0->"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7b

    :cond_41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v3, v5}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v3, v6}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7b
    :goto_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8f
    .catchall {:try_start_29 .. :try_end_8f} :catchall_90

    return-object v0

    :catchall_90
    move-exception v0

    sget-boolean v3, Labcd/Fb;->FH:Z

    if-eqz v3, :cond_98

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v0

    :goto_9a
    goto :goto_99
.end method
