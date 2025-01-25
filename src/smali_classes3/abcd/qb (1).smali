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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1c33d440ddba6d2bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x27ab408c5ca5dfb1L  # -3.270028956885504E117

    :try_start_6
    const-class v3, Labcd/qb;

    const-wide v4, 0x1544052f43d011cL

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/qb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/qb;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/qb;->FH:Z

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

    const-wide v0, 0x19ea323f62651cb0L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/qb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/qb$a;

    invoke-direct {v3, p0, v2}, Labcd/qb$a;-><init>(Labcd/qb;Labcd/pb;)V

    iput-object v3, p0, Labcd/qb;->Hw:Labcd/qb$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/qb;->EQ:I

    sget-object v4, Labcd/qb;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/qb;->v5:[I

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/qb;->VH:[I

    iput v3, p0, Labcd/qb;->u7:I

    iput v3, p0, Labcd/qb;->tp:I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Labcd/qb;->FH:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 9

    const-wide v0, -0x3fdcca9fdad55220L  # -9.604249154529441

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/qb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/qb$a;

    invoke-direct {v3, p0, v2}, Labcd/qb$a;-><init>(Labcd/qb;Labcd/pb;)V

    iput-object v3, p0, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Labcd/qb;->EQ:I

    sget-object v5, Labcd/qb;->j6:[I

    aget v4, v5, v4

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/qb;->v5:[I

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/qb;->VH:[I

    const/4 v4, 0x0

    iput v4, p0, Labcd/qb;->u7:I

    iput v4, p0, Labcd/qb;->tp:I

    :goto_32
    if-ge v4, v3, :cond_42

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Labcd/qb;->j6(II)V
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_43

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_42
    return-void

    :catchall_43
    move-exception v3

    sget-boolean v4, Labcd/qb;->FH:Z

    if-eqz v4, :cond_4b

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v3

    :goto_4d
    goto :goto_4c
.end method

.method private DW()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x15117ffd82046f7bL
    .end annotation

    const-wide v0, -0xd7ded8b222f25f0L

    :try_start_5
    sget-boolean v2, Labcd/qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/qb;->tp:I

    iget-object v3, p0, Labcd/qb;->v5:[I

    array-length v4, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    if-le v2, v4, :cond_2a

    iget v2, p0, Labcd/qb;->EQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/qb;->EQ:I

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/qb;->Zo:[I

    iput-object v3, p0, Labcd/qb;->gn:[I

    sget-object v3, Labcd/qb;->j6:[I

    aget v2, v3, v2

    new-array v3, v2, [I

    :goto_27
    new-array v2, v2, [I

    goto :goto_58

    :cond_2a
    iget-object v2, p0, Labcd/qb;->Zo:[I

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
    iget-object v3, p0, Labcd/qb;->gn:[I

    iget-object v4, p0, Labcd/qb;->v5:[I

    iput-object v4, p0, Labcd/qb;->Zo:[I

    iget-object v4, p0, Labcd/qb;->VH:[I

    iput-object v4, p0, Labcd/qb;->gn:[I

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_58

    :cond_49
    iput-object v3, p0, Labcd/qb;->Zo:[I

    iget-object v2, p0, Labcd/qb;->VH:[I

    iput-object v2, p0, Labcd/qb;->gn:[I

    sget-object v2, Labcd/qb;->j6:[I

    iget v3, p0, Labcd/qb;->EQ:I

    aget v2, v2, v3

    new-array v3, v2, [I

    goto :goto_27

    :goto_58
    const/4 v4, 0x0

    :goto_59
    iget-object v6, p0, Labcd/qb;->v5:[I

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
    iget-object v6, p0, Labcd/qb;->VH:[I

    aget v6, v6, v5

    aput v6, v2, v9

    add-int/lit8 v4, v4, 0x1

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_89
    iput-object v3, p0, Labcd/qb;->v5:[I

    iput-object v2, p0, Labcd/qb;->VH:[I

    iput v4, p0, Labcd/qb;->u7:I
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_90

    return-void

    :catchall_90
    move-exception v2

    sget-boolean v3, Labcd/qb;->FH:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v2

    :goto_9a
    goto :goto_99
.end method

.method static synthetic DW(Labcd/qb;)[I
    .registers 1

    iget-object p0, p0, Labcd/qb;->VH:[I

    return-object p0
.end method

.method static synthetic j6(Labcd/qb;)[I
    .registers 1

    iget-object p0, p0, Labcd/qb;->v5:[I

    return-object p0
.end method


# virtual methods
.method public DW(I)I
    .registers 9

    const-wide v0, 0x1b3df3febdbabc70L

    :try_start_5
    sget-boolean v2, Labcd/qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/qb;->v5:[I

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

    iget-object v3, p0, Labcd/qb;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5

    goto :goto_1d

    :cond_31
    iget-object v2, p0, Labcd/qb;->VH:[I

    aget p1, v2, v5
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return p1

    :catchall_36
    move-exception v2

    sget-boolean v3, Labcd/qb;->FH:Z

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

.method public FH(I)V
    .registers 9

    const-wide v0, 0x15f97a826f6472d0L

    :try_start_5
    sget-boolean v2, Labcd/qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/qb;->v5:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    :goto_1d
    if-eqz v3, :cond_3c

    if-ne v3, p1, :cond_2e

    iget-object v2, p0, Labcd/qb;->v5:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v4

    iget v2, p0, Labcd/qb;->tp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/qb;->tp:I

    return-void

    :cond_2e
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/qb;->v5:[I

    array-length v6, v3

    rem-int/2addr v4, v6

    aget v3, v3, v4
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3d

    goto :goto_1d

    :cond_3c
    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Labcd/qb;->FH:Z

    if-eqz v3, :cond_4a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v2

    :goto_4c
    goto :goto_4b
.end method

.method public FH(Labcd/qb;)V
    .registers 8

    const-wide v0, -0x24d90b120129f678L

    :try_start_5
    sget-boolean v2, Labcd/qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p1, Labcd/qb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_32

    aget v4, v4, v3

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_22

    iget-object v4, p1, Labcd/qb;->VH:[I

    aget v4, v4, v3

    invoke-virtual {p0, v2, v4}, Labcd/qb;->j6(II)V

    goto :goto_2f

    :cond_22
    if-eqz v4, :cond_2f

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2f

    iget-object v5, p1, Labcd/qb;->VH:[I

    aget v5, v5, v3

    invoke-virtual {p0, v4, v5}, Labcd/qb;->j6(II)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_33

    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_32
    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Labcd/qb;->FH:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v2

    :goto_3d
    goto :goto_3c
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x1fd188f829c68518L

    :try_start_5
    sget-boolean v2, Labcd/qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/qb;->u7:I

    if-lez v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/qb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1c

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    iput v2, p0, Labcd/qb;->u7:I

    iput v2, p0, Labcd/qb;->tp:I
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/qb;->FH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    goto :goto_2b

    :goto_2a
    throw v2

    :goto_2b
    goto :goto_2a
.end method

.method public j6(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/qb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xf6e5dc471bed4acL  # -1.7521069613739038E234

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const v0, 0x7fffffff

    if-nez p1, :cond_1e

    const p1, 0x7fffffff

    :cond_1e
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_29
    if-eqz v1, :cond_52

    const/high16 v6, -0x80000000

    if-ne v1, p1, :cond_41

    iget-object v1, p0, Labcd/qb;->VH:[I

    aget v1, v1, v2

    if-ne v1, p2, :cond_36

    return-void

    :cond_36
    iget-object v1, p0, Labcd/qb;->v5:[I

    aput v6, v1, v2

    iget v1, p0, Labcd/qb;->tp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/qb;->tp:I

    goto :goto_44

    :cond_41
    if-ne v1, v6, :cond_44

    move v5, v2

    :cond_44
    :goto_44
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/qb;->v5:[I

    array-length v6, v1

    rem-int/2addr v2, v6

    aget v1, v1, v2

    goto :goto_29

    :cond_52
    if-eq v5, v4, :cond_55

    move v2, v5

    :cond_55
    iget-object v0, p0, Labcd/qb;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/qb;->VH:[I

    aput p2, v1, v2

    iget v1, p0, Labcd/qb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/qb;->tp:I

    if-ne v5, v4, :cond_6b

    iget v1, p0, Labcd/qb;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/qb;->u7:I

    :cond_6b
    iget v1, p0, Labcd/qb;->u7:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_75

    invoke-direct {p0}, Labcd/qb;->DW()V
    :try_end_75
    .catchall {:try_start_0 .. :try_end_75} :catchall_76

    :cond_75
    return-void

    :catchall_76
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/qb;->FH:Z

    if-eqz v0, :cond_90

    const-wide v1, -0xf6e5dc471bed4acL  # -1.7521069613739038E234

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_90
    goto :goto_92

    :goto_91
    throw v6

    :goto_92
    goto :goto_91
.end method

.method public j6(Labcd/fc;)V
    .registers 7

    const-wide v0, -0x157cc6cc1fc2cfc3L  # -1.205419874162559E205

    :try_start_5
    sget-boolean v2, Labcd/qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/qb;->tp:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/qb;->EQ:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Labcd/qb;->v5:[I

    array-length v4, v3

    if-ge v2, v4, :cond_31

    aget v3, v3, v2

    if-eqz v3, :cond_2e

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2e

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Labcd/qb;->VH:[I

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

    sget-boolean v3, Labcd/qb;->FH:Z

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

    const-wide v0, -0x1d83cfba2026febL  # -4.972843274363125E299

    :try_start_5
    sget-boolean v2, Labcd/qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/qb;->v5:[I

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

    iget-object v3, p0, Labcd/qb;->v5:[I

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

    sget-boolean v3, Labcd/qb;->FH:Z

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

    const-wide v0, 0x10ed786d6a7cfc7dL

    :try_start_5
    sget-boolean v2, Labcd/qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_6e

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget-object v4, p0, Labcd/qb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5c

    aget v4, v4, v3

    if-eqz v4, :cond_59

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_59

    iget-object v5, p0, Labcd/qb;->VH:[I

    aget v5, v5, v3
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_6e

    const v6, 0x7fffffff

    const-string v7, ", "

    if-ne v4, v6, :cond_3f

    :try_start_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0->"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_59

    :cond_3f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_27 .. :try_end_6d} :catchall_6e

    return-object v0

    :catchall_6e
    move-exception v2

    sget-boolean v3, Labcd/qb;->FH:Z

    if-eqz v3, :cond_76

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_76
    goto :goto_78

    :goto_77
    throw v2

    :goto_78
    goto :goto_77
.end method
