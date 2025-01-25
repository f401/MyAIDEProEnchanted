.class public Labcd/Sb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Sb$a;
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
        field = -0x23ea3371597b7cddL
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = -0x132b015242791880L
    .end annotation
.end field

.field public final Hw:Labcd/Sb$a;

.field private J0:I
    .annotation runtime Labcd/ru;
        field = -0x2c5cf77bbdce9ebdL
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x8658b12fa569321L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x23d0f029362a6f2cL
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = -0x35af34eb18c22ac8L
    .end annotation
.end field

.field private tp:[Z
    .annotation runtime Labcd/ru;
        field = 0x3891509e9604c781L
    .end annotation
.end field

.field private u7:[Z
    .annotation runtime Labcd/ru;
        field = -0xeeef363010f8e88L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0xfc576bedb4fc057L
    .end annotation
.end field

.field private we:I
    .annotation runtime Labcd/ru;
        field = -0x1b89d4341c14c6b8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xeea1a2d9d9dfe85L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x29f5c44dfee0ac93L  # -3.0082886609195546E106

    :try_start_6
    const-class v3, Labcd/Sb;

    const-wide v4, -0x156d5d695e65c197L  # -2.337055591122932E205

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Sb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Sb;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Sb;->FH:Z

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

    const-wide v0, -0x2d48d20c37ce3417L  # -2.951092349346254E90

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Sb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Sb$a;

    invoke-direct {v3, p0, v2}, Labcd/Sb$a;-><init>(Labcd/Sb;Labcd/Rb;)V

    iput-object v3, p0, Labcd/Sb;->Hw:Labcd/Sb$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/Sb;->J0:I

    sget-object v4, Labcd/Sb;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/Sb;->v5:[I

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Sb;->VH:[I

    iput v3, p0, Labcd/Sb;->EQ:I

    iput v3, p0, Labcd/Sb;->we:I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Labcd/Sb;->FH:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 9

    const-wide v0, 0x251c568d5a2988d5L  # 6.387817854628206E-130

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Sb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Sb$a;

    invoke-direct {v3, p0, v2}, Labcd/Sb$a;-><init>(Labcd/Sb;Labcd/Rb;)V

    iput-object v3, p0, Labcd/Sb;->Hw:Labcd/Sb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Sb;->we:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Sb;->EQ:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Sb;->J0:I

    sget-object v4, Labcd/Sb;->j6:[I

    aget v3, v4, v3

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Sb;->v5:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_33
    iget-object v5, p0, Labcd/Sb;->v5:[I

    array-length v6, v5

    if-ge v4, v6, :cond_41

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_41
    sget-object v4, Labcd/Sb;->j6:[I

    iget v5, p0, Labcd/Sb;->J0:I

    aget v4, v4, v5

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Sb;->VH:[I

    const/4 v4, 0x0

    :goto_4c
    iget-object v5, p0, Labcd/Sb;->VH:[I

    array-length v6, v5

    if-ge v4, v6, :cond_5a

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_5a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    if-eqz v4, :cond_78

    sget-object v4, Labcd/Sb;->j6:[I

    iget v5, p0, Labcd/Sb;->J0:I

    aget v4, v4, v5

    new-array v4, v4, [Z

    iput-object v4, p0, Labcd/Sb;->u7:[Z

    :goto_6a
    iget-object v4, p0, Labcd/Sb;->u7:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_78

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    aput-boolean v5, v4, v3
    :try_end_75
    .catchall {:try_start_6 .. :try_end_75} :catchall_79

    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_78
    return-void

    :catchall_79
    move-exception v3

    sget-boolean v4, Labcd/Sb;->FH:Z

    if-eqz v4, :cond_81

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_81
    goto :goto_83

    :goto_82
    throw v3

    :goto_83
    goto :goto_82
.end method

.method private DW()V
    .registers 17
    .annotation runtime Labcd/su;
        method = 0x1e2e94944bf82de9L
    .end annotation

    move-object/from16 v1, p0

    const-wide v2, 0x40897b0c21cc800L

    :try_start_7
    sget-boolean v0, Labcd/Sb;->DW:Z

    if-eqz v0, :cond_e

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    iget v0, v1, Labcd/Sb;->we:I

    iget-object v4, v1, Labcd/Sb;->v5:[I

    array-length v5, v4

    mul-int/lit8 v0, v0, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v0, v5, :cond_34

    iget v0, v1, Labcd/Sb;->J0:I

    add-int/2addr v0, v8

    iput v0, v1, Labcd/Sb;->J0:I

    iput-object v6, v1, Labcd/Sb;->Zo:[I

    iput-object v6, v1, Labcd/Sb;->gn:[I

    iput-object v6, v1, Labcd/Sb;->tp:[Z

    sget-object v4, Labcd/Sb;->j6:[I

    aget v0, v4, v0

    new-array v4, v0, [I

    new-array v5, v0, [I

    iget-object v9, v1, Labcd/Sb;->u7:[Z

    if-eqz v9, :cond_7d

    new-array v6, v0, [Z

    goto :goto_7d

    :cond_34
    iget-object v0, v1, Labcd/Sb;->Zo:[I

    if-eqz v0, :cond_63

    array-length v5, v0

    array-length v9, v4

    if-ne v5, v9, :cond_63

    const/4 v4, 0x0

    :goto_3d
    array-length v5, v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_125

    if-ge v4, v5, :cond_45

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_45
    :try_start_45
    iget-object v4, v1, Labcd/Sb;->tp:[Z

    if-eqz v4, :cond_53

    const/4 v5, 0x0

    :goto_4a
    array-length v6, v4
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_125

    if-ge v5, v6, :cond_52

    aput-boolean v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_52
    move-object v6, v4

    :cond_53
    :try_start_53
    iget-object v5, v1, Labcd/Sb;->gn:[I

    iget-object v4, v1, Labcd/Sb;->v5:[I

    iput-object v4, v1, Labcd/Sb;->Zo:[I

    iget-object v4, v1, Labcd/Sb;->VH:[I

    iput-object v4, v1, Labcd/Sb;->gn:[I

    iget-object v4, v1, Labcd/Sb;->u7:[Z

    iput-object v4, v1, Labcd/Sb;->tp:[Z

    move-object v4, v0

    goto :goto_7d

    :cond_63
    iput-object v4, v1, Labcd/Sb;->Zo:[I

    iget-object v0, v1, Labcd/Sb;->VH:[I

    iput-object v0, v1, Labcd/Sb;->gn:[I

    iget-object v0, v1, Labcd/Sb;->u7:[Z

    iput-object v0, v1, Labcd/Sb;->tp:[Z

    sget-object v4, Labcd/Sb;->j6:[I

    iget v5, v1, Labcd/Sb;->J0:I

    aget v4, v4, v5

    new-array v5, v4, [I

    new-array v9, v4, [I

    if-eqz v0, :cond_7b

    new-array v6, v4, [Z

    :cond_7b
    move-object v4, v5

    move-object v5, v9

    :cond_7d
    :goto_7d
    iget-object v0, v1, Labcd/Sb;->u7:[Z

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    if-nez v0, :cond_b2

    const/4 v0, 0x0

    :goto_87
    iget-object v11, v1, Labcd/Sb;->v5:[I

    array-length v12, v11

    if-ge v0, v12, :cond_11c

    aget v11, v11, v0

    if-eqz v11, :cond_af

    if-eq v11, v10, :cond_af

    and-int v12, v11, v9

    array-length v13, v4

    array-length v14, v4

    rem-int v14, v12, v14
    :try_end_98
    .catchall {:try_start_53 .. :try_end_98} :catchall_125

    :goto_98
    aget v15, v4, v14

    if-eqz v15, :cond_a5

    add-int/lit8 v15, v13, -0x2

    :try_start_9e
    rem-int v15, v12, v15

    add-int/2addr v15, v8

    add-int/2addr v14, v15

    array-length v15, v4

    rem-int/2addr v14, v15
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_125

    goto :goto_98

    :cond_a5
    aput v11, v4, v14

    :try_start_a7
    iget-object v11, v1, Labcd/Sb;->VH:[I

    aget v11, v11, v0

    aput v11, v5, v14

    add-int/lit8 v7, v7, 0x1

    :cond_af
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    :cond_b2
    const/4 v0, 0x0

    :goto_b3
    iget-object v11, v1, Labcd/Sb;->v5:[I

    array-length v12, v11

    if-ge v0, v12, :cond_11c

    aget v11, v11, v0

    if-eqz v11, :cond_114

    if-eq v11, v10, :cond_114

    and-int v12, v11, v9

    array-length v13, v4

    add-int/lit8 v13, v13, -0x2

    rem-int v13, v12, v13

    add-int/2addr v13, v8

    array-length v14, v4

    rem-int v14, v12, v14

    iget-object v15, v1, Labcd/Sb;->u7:[Z

    aget-boolean v15, v15, v0
    :try_end_cd
    .catchall {:try_start_a7 .. :try_end_cd} :catchall_125

    if-nez v15, :cond_114

    :goto_cf
    aget v15, v4, v14

    if-eqz v15, :cond_d7

    add-int/2addr v14, v13

    :try_start_d4
    array-length v15, v4

    rem-int/2addr v14, v15
    :try_end_d6
    .catchall {:try_start_d4 .. :try_end_d6} :catchall_125

    goto :goto_cf

    :cond_d7
    aput v11, v4, v14

    :try_start_d9
    iget-object v15, v1, Labcd/Sb;->VH:[I

    aget v15, v15, v0

    aput v15, v5, v14

    add-int/lit8 v7, v7, 0x1

    iget-object v15, v1, Labcd/Sb;->v5:[I

    array-length v9, v15

    array-length v15, v15

    rem-int v15, v12, v15

    :goto_e7
    iget-object v10, v1, Labcd/Sb;->v5:[I

    aget v10, v10, v15
    :try_end_eb
    .catchall {:try_start_d9 .. :try_end_eb} :catchall_125

    if-eqz v10, :cond_114

    if-ne v10, v11, :cond_107

    if-eq v15, v0, :cond_107

    :goto_f1
    aget v10, v4, v14

    if-eqz v10, :cond_f9

    add-int/2addr v14, v13

    :try_start_f6
    array-length v10, v4

    rem-int/2addr v14, v10
    :try_end_f8
    .catchall {:try_start_f6 .. :try_end_f8} :catchall_125

    goto :goto_f1

    :cond_f9
    aput v11, v4, v14

    :try_start_fb
    iget-object v10, v1, Labcd/Sb;->VH:[I

    aget v10, v10, v15

    aput v10, v5, v14
    :try_end_101
    .catchall {:try_start_fb .. :try_end_101} :catchall_125

    if-eqz v6, :cond_105

    aput-boolean v8, v6, v14

    :cond_105
    add-int/lit8 v7, v7, 0x1

    :cond_107
    add-int/lit8 v10, v9, -0x2

    :try_start_109
    rem-int v10, v12, v10

    add-int/2addr v10, v8

    add-int/2addr v15, v10

    iget-object v10, v1, Labcd/Sb;->v5:[I

    array-length v10, v10

    rem-int/2addr v15, v10

    const/high16 v10, -0x80000000

    goto :goto_e7

    :cond_114
    add-int/lit8 v0, v0, 0x1

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    goto :goto_b3

    :cond_11c
    iput-object v6, v1, Labcd/Sb;->u7:[Z

    iput-object v4, v1, Labcd/Sb;->v5:[I

    iput-object v5, v1, Labcd/Sb;->VH:[I

    iput v7, v1, Labcd/Sb;->EQ:I
    :try_end_124
    .catchall {:try_start_109 .. :try_end_124} :catchall_125

    return-void

    :catchall_125
    move-exception v0

    sget-boolean v4, Labcd/Sb;->FH:Z

    if-eqz v4, :cond_12d

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_12d
    goto :goto_12f

    :goto_12e
    throw v0

    :goto_12f
    goto :goto_12e
.end method

.method static synthetic DW(Labcd/Sb;)[I
    .registers 1

    iget-object p0, p0, Labcd/Sb;->v5:[I

    return-object p0
.end method

.method static synthetic FH(Labcd/Sb;)[I
    .registers 1

    iget-object p0, p0, Labcd/Sb;->VH:[I

    return-object p0
.end method

.method static synthetic j6(Labcd/Sb;)[Z
    .registers 1

    iget-object p0, p0, Labcd/Sb;->u7:[Z

    return-object p0
.end method


# virtual methods
.method public DW(I)V
    .registers 9

    const-wide v0, 0x1aad5e33e0a620L

    :try_start_5
    sget-boolean v2, Labcd/Sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Sb;->v5:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    :goto_1d
    if-eqz v3, :cond_3b

    if-ne v3, p1, :cond_2d

    iget-object v3, p0, Labcd/Sb;->v5:[I

    const/high16 v6, -0x80000000

    aput v6, v3, v4

    iget v3, p0, Labcd/Sb;->we:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Labcd/Sb;->we:I

    :cond_2d
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/Sb;->v5:[I

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

    sget-boolean v3, Labcd/Sb;->FH:Z

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

.method public DW(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1fce6b04586d9880L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const v0, 0x7fffffff

    if-nez p1, :cond_1e

    const p1, 0x7fffffff

    :cond_1e
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, 0x0

    :goto_28
    const/4 v5, 0x1

    if-eqz v1, :cond_42

    if-ne v1, p1, :cond_35

    iget-object v1, p0, Labcd/Sb;->VH:[I

    aget v1, v1, v2

    if-ne v1, p2, :cond_34

    return-void

    :cond_34
    const/4 v4, 0x1

    :cond_35
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/2addr v1, v5

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v5, v1

    rem-int/2addr v2, v5

    aget v1, v1, v2

    goto :goto_28

    :cond_42
    iget-object v0, p0, Labcd/Sb;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/Sb;->VH:[I

    aput p2, v1, v2

    if-eqz v4, :cond_59

    iget-object v1, p0, Labcd/Sb;->u7:[Z

    if-nez v1, :cond_55

    array-length v1, v0

    new-array v1, v1, [Z

    iput-object v1, p0, Labcd/Sb;->u7:[Z

    :cond_55
    iget-object v1, p0, Labcd/Sb;->u7:[Z

    aput-boolean v5, v1, v2

    :cond_59
    iget v1, p0, Labcd/Sb;->we:I

    add-int/2addr v1, v5

    iput v1, p0, Labcd/Sb;->we:I

    iget v1, p0, Labcd/Sb;->EQ:I

    add-int/2addr v1, v5

    iput v1, p0, Labcd/Sb;->EQ:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_6b

    invoke-direct {p0}, Labcd/Sb;->DW()V
    :try_end_6b
    .catchall {:try_start_0 .. :try_end_6b} :catchall_6c

    :cond_6b
    return-void

    :catchall_6c
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Sb;->FH:Z

    if-eqz v0, :cond_86

    const-wide v1, 0x1fce6b04586d9880L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    goto :goto_88

    :goto_87
    throw v6

    :goto_88
    goto :goto_87
.end method

.method public FH(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xf691ee0adb2c580L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1}, Labcd/Sb;->DW(I)V

    invoke-virtual {p0, p1, p2}, Labcd/Sb;->DW(II)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_36

    const-wide v2, 0xf691ee0adb2c580L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x26e92051b92fdd30L

    :try_start_5
    sget-boolean v2, Labcd/Sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Sb;->EQ:I

    if-lez v2, :cond_2f

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/Sb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1c

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    iget-object v3, p0, Labcd/Sb;->u7:[Z

    if-eqz v3, :cond_2b

    const/4 v3, 0x0

    :goto_21
    iget-object v4, p0, Labcd/Sb;->u7:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_2b

    aput-boolean v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_2b
    iput v2, p0, Labcd/Sb;->EQ:I

    iput v2, p0, Labcd/Sb;->we:I
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    :cond_2f
    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Sb;->FH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    goto :goto_3a

    :goto_39
    throw v2

    :goto_3a
    goto :goto_39
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v0, -0x5aeaead55c2b4599L  # -4.752342554752193E-130

    :try_start_5
    sget-boolean v2, Labcd/Sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Sb;->we:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Sb;->EQ:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Sb;->J0:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    iget-object v4, p0, Labcd/Sb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2a

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    iget-object v4, p0, Labcd/Sb;->VH:[I

    array-length v5, v4

    if-ge v3, v5, :cond_38

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_38
    iget-object v3, p0, Labcd/Sb;->u7:[Z

    if-eqz v3, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v3, p0, Labcd/Sb;->u7:[Z

    if-eqz v3, :cond_53

    :goto_46
    iget-object v3, p0, Labcd/Sb;->u7:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_53

    aget-boolean v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_54

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_53
    return-void

    :catchall_54
    move-exception v2

    sget-boolean v3, Labcd/Sb;->FH:Z

    if-eqz v3, :cond_5c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    goto :goto_5e

    :goto_5d
    throw v2

    :goto_5e
    goto :goto_5d
.end method

.method public j6(I)Z
    .registers 9

    const-wide v0, 0xca81708042b7f9fL

    :try_start_5
    sget-boolean v2, Labcd/Sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Sb;->v5:[I

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

    iget-object v3, p0, Labcd/Sb;->v5:[I

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

    sget-boolean v3, Labcd/Sb;->FH:Z

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

.method public j6(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x14429e560016bbdcL  # 4.424434109124435E-211

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const v0, 0x7fffffff

    if-nez p1, :cond_1e

    const p1, 0x7fffffff

    :cond_1e
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    :goto_27
    const/4 v4, 0x1

    if-ne v1, p1, :cond_32

    iget-object v5, p0, Labcd/Sb;->VH:[I

    aget v5, v5, v2

    if-eq v5, p2, :cond_31

    goto :goto_32

    :cond_31
    return v4

    :cond_32
    :goto_32
    if-nez v1, :cond_36

    const/4 p1, 0x0

    return p1

    :cond_36
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/2addr v1, v4

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v4, v1

    rem-int/2addr v2, v4

    aget v1, v1, v2
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    goto :goto_27

    :catchall_43
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Sb;->FH:Z

    if-eqz v0, :cond_5d

    const-wide v1, 0x14429e560016bbdcL  # 4.424434109124435E-211

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    goto :goto_5f

    :goto_5e
    throw v6

    :goto_5f
    goto :goto_5e
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v0, 0x1a296f80464704b3L

    :try_start_5
    sget-boolean v2, Labcd/Sb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_6e

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget-object v4, p0, Labcd/Sb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5c

    aget v4, v4, v3

    if-eqz v4, :cond_59

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_59

    iget-object v5, p0, Labcd/Sb;->VH:[I

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

    sget-boolean v3, Labcd/Sb;->FH:Z

    if-eqz v3, :cond_76

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_76
    goto :goto_78

    :goto_77
    throw v2

    :goto_78
    goto :goto_77
.end method
