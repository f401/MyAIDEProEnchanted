.class public Labcd/wb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/wb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
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
        field = -0x1d526fc34f50e900L
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0x10a20afb5f3c6bacL
    .end annotation
.end field

.field public final Hw:Labcd/wb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field private VH:[Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x164890ec4051ac6cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x20ce2e5625990a3L
    .end annotation
.end field

.field private gn:[Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x2da4960413e7a361L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x145ab0b03c4ecfe7L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0xb9245a38cf5746dL
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = -0x2f22f8fa6daa4c8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x183d9f27d834da24L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x12ae048c2b7ae983L

    :try_start_6
    const-class v3, Labcd/wb;

    const-wide v4, 0x66255a09283c80d1L  # 1.1340700264268908E184

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/wb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/wb;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/wb;->FH:Z

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

    const-wide v0, -0x29a3b3c34773f749L  # -1.0384154982112145E108

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/wb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/wb$a;

    invoke-direct {v3, p0, v2}, Labcd/wb$a;-><init>(Labcd/wb;Labcd/vb;)V

    iput-object v3, p0, Labcd/wb;->Hw:Labcd/wb$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/wb;->EQ:I

    sget-object v4, Labcd/wb;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/wb;->v5:[I

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    iput v3, p0, Labcd/wb;->u7:I

    iput v3, p0, Labcd/wb;->tp:I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Labcd/wb;->FH:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method public constructor <init>(I)V
    .registers 9

    const-wide v0, -0x31350c1b38fa5580L  # -3.720415302642587E71

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/wb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/wb$a;

    invoke-direct {v3, p0, v2}, Labcd/wb$a;-><init>(Labcd/wb;Labcd/vb;)V

    iput-object v3, p0, Labcd/wb;->Hw:Labcd/wb$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/wb;->EQ:I

    :goto_1a
    sget-object v4, Labcd/wb;->j6:[I

    iget v5, p0, Labcd/wb;->EQ:I

    aget v4, v4, v5

    mul-int/lit8 v6, p1, 0x2

    if-ge v4, v6, :cond_29

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Labcd/wb;->EQ:I

    goto :goto_1a

    :cond_29
    new-array v5, v4, [I

    iput-object v5, p0, Labcd/wb;->v5:[I

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    iput v3, p0, Labcd/wb;->u7:I

    iput v3, p0, Labcd/wb;->tp:I
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v3

    sget-boolean v4, Labcd/wb;->FH:Z

    if-eqz v4, :cond_43

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v0, v1, v2, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v3

    :goto_45
    goto :goto_44
.end method

.method static synthetic DW(Labcd/wb;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    return-object p0
.end method

.method private FH()V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x12d02e707292958L
    .end annotation

    const-wide v0, -0x28bfef2fa28c7fe0L

    :try_start_5
    sget-boolean v2, Labcd/wb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/wb;->tp:I

    iget-object v3, p0, Labcd/wb;->v5:[I

    array-length v4, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-le v2, v4, :cond_2a

    iget v2, p0, Labcd/wb;->EQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/wb;->EQ:I

    iput-object v5, p0, Labcd/wb;->Zo:[I

    iput-object v5, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    sget-object v3, Labcd/wb;->j6:[I

    aget v2, v3, v2

    new-array v3, v2, [I

    :goto_27
    new-array v2, v2, [Ljava/lang/Object;

    goto :goto_58

    :cond_2a
    iget-object v2, p0, Labcd/wb;->Zo:[I

    if-eqz v2, :cond_49

    array-length v4, v2

    array-length v7, v3

    if-ne v4, v7, :cond_49

    const/4 v3, 0x0

    :goto_33
    array-length v4, v2
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_9f

    if-ge v3, v4, :cond_3b

    aput v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3b
    :try_start_3b
    iget-object v3, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    iget-object v4, p0, Labcd/wb;->v5:[I

    iput-object v4, p0, Labcd/wb;->Zo:[I

    iget-object v4, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    iput-object v4, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto :goto_58

    :cond_49
    iput-object v3, p0, Labcd/wb;->Zo:[I

    iget-object v2, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    iput-object v2, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    sget-object v2, Labcd/wb;->j6:[I

    iget v3, p0, Labcd/wb;->EQ:I

    aget v2, v2, v3

    new-array v3, v2, [I

    goto :goto_27

    :goto_58
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_5a
    iget-object v8, p0, Labcd/wb;->v5:[I

    array-length v9, v8

    if-ge v4, v9, :cond_8a

    aget v8, v8, v4

    if-eqz v8, :cond_87

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_87

    const v9, 0x7fffffff

    and-int/2addr v9, v8

    array-length v10, v3

    array-length v11, v3

    rem-int v11, v9, v11
    :try_end_6f
    .catchall {:try_start_3b .. :try_end_6f} :catchall_9f

    :goto_6f
    aget v12, v3, v11

    if-eqz v12, :cond_7d

    add-int/lit8 v12, v10, -0x2

    :try_start_75
    rem-int v12, v9, v12

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    array-length v12, v3

    rem-int/2addr v11, v12
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_9f

    goto :goto_6f

    :cond_7d
    aput v8, v3, v11

    :try_start_7f
    iget-object v8, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    aget-object v8, v8, v4

    aput-object v8, v2, v11

    add-int/lit8 v7, v7, 0x1

    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    :cond_8a
    iput-object v3, p0, Labcd/wb;->v5:[I

    iput-object v2, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    iput v7, p0, Labcd/wb;->u7:I

    iget-object v2, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    if-eqz v2, :cond_9e

    :goto_94
    iget-object v2, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v6, v3, :cond_9e

    aput-object v5, v2, v6
    :try_end_9b
    .catchall {:try_start_7f .. :try_end_9b} :catchall_9f

    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    :cond_9e
    return-void

    :catchall_9f
    move-exception v2

    sget-boolean v3, Labcd/wb;->FH:Z

    if-eqz v3, :cond_a7

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_a7
    goto :goto_a9

    :goto_a8
    throw v2

    :goto_a9
    goto :goto_a8
.end method

.method static synthetic j6(Labcd/wb;)[I
    .registers 1

    iget-object p0, p0, Labcd/wb;->v5:[I

    return-object p0
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, -0x1a9caeedf5a48760L  # -2.5048397102928932E180

    :try_start_5
    sget-boolean v2, Labcd/wb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/wb;->tp:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/wb;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW(I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const-wide v0, -0x3bb7894e90efc318L  # -9.02549194103829E20

    :try_start_5
    sget-boolean v2, Labcd/wb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/wb;->v5:[I

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

    iget-object v3, p0, Labcd/wb;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5

    goto :goto_1d

    :cond_31
    iget-object v2, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    aget-object p1, v2, v5
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-object p1

    :catchall_36
    move-exception v2

    sget-boolean v3, Labcd/wb;->FH:Z

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

.method public DW(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/wb;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2a246fbdfdce6480L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0, p1}, Labcd/wb;->FH(I)V

    invoke-virtual {p0, p1, p2}, Labcd/wb;->j6(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x2a246fbdfdce6480L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public FH(I)V
    .registers 9

    const-wide v0, -0x4fbd40fc233ca0e0L  # -3.2378986869227723E-76

    :try_start_5
    sget-boolean v2, Labcd/wb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/wb;->v5:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    :goto_1d
    if-eqz v3, :cond_40

    if-ne v3, p1, :cond_32

    iget-object v3, p0, Labcd/wb;->v5:[I

    const/high16 v6, -0x80000000

    aput v6, v3, v4

    iget-object v3, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v3, v4

    iget v3, p0, Labcd/wb;->tp:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Labcd/wb;->tp:I

    :cond_32
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/wb;->v5:[I

    array-length v6, v3

    rem-int/2addr v4, v6

    aget v3, v3, v4
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_41

    goto :goto_1d

    :cond_40
    return-void

    :catchall_41
    move-exception v2

    sget-boolean v3, Labcd/wb;->FH:Z

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v2

    :goto_50
    goto :goto_4f
.end method

.method public FH(Labcd/wb;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb<",
            "+TT;>;)V"
        }
    .end annotation

    const-wide v0, 0x1e715f76048fdbc1L  # 4.826969173118648E-162

    :try_start_5
    sget-boolean v2, Labcd/wb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p1, Labcd/wb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2e

    aget v4, v4, v3

    iget-object v5, p1, Labcd/wb;->VH:[Ljava/lang/Object;

    aget-object v5, v5, v3

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_22

    invoke-virtual {p0, v2, v5}, Labcd/wb;->j6(ILjava/lang/Object;)V

    goto :goto_2b

    :cond_22
    if-eqz v4, :cond_2b

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_2b

    invoke-virtual {p0, v4, v5}, Labcd/wb;->j6(ILjava/lang/Object;)V
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

    sget-boolean v3, Labcd/wb;->FH:Z

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
    .registers 8

    const-wide v0, -0x88cc525550dc558L

    :try_start_5
    sget-boolean v2, Labcd/wb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p0, Labcd/wb;->v5:[I

    array-length v5, v4

    if-ge v3, v5, :cond_18

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    const/4 v3, 0x0

    :goto_19
    iget-object v4, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, 0x0

    if-ge v3, v5, :cond_24

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_24
    iput v2, p0, Labcd/wb;->u7:I

    iput v2, p0, Labcd/wb;->tp:I

    iput-object v6, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    iput-object v6, p0, Labcd/wb;->Zo:[I
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/wb;->FH:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method

.method public j6(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/wb;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x253d9aab4f845288L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const v0, 0x7fffffff

    if-nez p1, :cond_19

    const p1, 0x7fffffff

    :cond_19
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/wb;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_24
    if-eqz v1, :cond_42

    if-ne v1, p1, :cond_2f

    iget-object v1, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    aget-object v1, v1, v2

    if-ne v1, p2, :cond_34

    return-void

    :cond_2f
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_34

    move v5, v2

    :cond_34
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/wb;->v5:[I

    array-length v6, v1

    rem-int/2addr v2, v6

    aget v1, v1, v2

    goto :goto_24

    :cond_42
    if-eq v5, v4, :cond_45

    move v2, v5

    :cond_45
    iget-object v0, p0, Labcd/wb;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    aput-object p2, v1, v2

    iget v1, p0, Labcd/wb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/wb;->tp:I

    if-ne v5, v4, :cond_5b

    iget v1, p0, Labcd/wb;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/wb;->u7:I

    :cond_5b
    iget v1, p0, Labcd/wb;->u7:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_65

    invoke-direct {p0}, Labcd/wb;->FH()V
    :try_end_65
    .catchall {:try_start_0 .. :try_end_65} :catchall_66

    :cond_65
    return-void

    :catchall_66
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/wb;->FH:Z

    if-eqz v0, :cond_7c

    const-wide v1, 0x253d9aab4f845288L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7c
    goto :goto_7e

    :goto_7d
    throw v6

    :goto_7e
    goto :goto_7d
.end method

.method public j6(I)Z
    .registers 9

    const-wide v0, 0x1a31ed86b565831L

    :try_start_5
    sget-boolean v2, Labcd/wb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/wb;->v5:[I

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

    iget-object v3, p0, Labcd/wb;->v5:[I

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

    sget-boolean v3, Labcd/wb;->FH:Z

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
    .registers 5

    const-wide v0, -0xe47f2b395aa09cfL  # -6.264794196967859E239

    :try_start_5
    sget-boolean v2, Labcd/wb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[Size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/wb;->tp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-object v0

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/wb;->FH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method
