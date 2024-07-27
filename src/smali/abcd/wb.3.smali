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
            "Lwb",
            "<TT;>.a;"
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
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x183d9f27d834da24L
    .end annotation

    const-wide v8, 0x12ae048c2b7ae983L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/wb;

    const-wide v2, 0x66255a09283c80d1L    # 1.1340700264268908E184

    const-wide v4, 0x66255a09283c80d1L    # 1.1340700264268908E184

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/wb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12ae048c2b7ae983L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/wb;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

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

    const-wide v4, -0x29a3b3c34773f749L    # -1.0384154982112145E108

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/wb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29a3b3c34773f749L    # -1.0384154982112145E108

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/wb$a;-><init>(Labcd/wb;Labcd/vb;)V

    iput-object v0, p0, Labcd/wb;->Hw:Labcd/wb$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/wb;->EQ:I

    sget-object v0, Labcd/wb;->j6:[I

    iget v1, p0, Labcd/wb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/wb;->v5:[I

    sget-object v0, Labcd/wb;->j6:[I

    iget v1, p0, Labcd/wb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Labcd/wb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/wb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(I)V
    .registers 8

    const-wide v4, -0x31350c1b38fa5580L    # -3.720415302642587E71

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/wb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x31350c1b38fa5580L    # -3.720415302642587E71

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/wb$a;-><init>(Labcd/wb;Labcd/vb;)V

    iput-object v0, p0, Labcd/wb;->Hw:Labcd/wb$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/wb;->EQ:I

    :goto_0
    sget-object v0, Labcd/wb;->j6:[I

    iget v1, p0, Labcd/wb;->EQ:I

    aget v0, v0, v1

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_2

    iget v0, p0, Labcd/wb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/wb;->EQ:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Labcd/wb;->j6:[I

    iget v1, p0, Labcd/wb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/wb;->v5:[I

    sget-object v0, Labcd/wb;->j6:[I

    iget v1, p0, Labcd/wb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Labcd/wb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/wb;->tp:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method static synthetic DW(Labcd/wb;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    return-object v0
.end method

.method private FH()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x12d02e707292958L
    .end annotation

    const-wide v10, -0x28bfef2fa28c7fe0L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/wb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x28bfef2fa28c7fe0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/wb;->tp:I

    iget-object v1, p0, Labcd/wb;->v5:[I

    array-length v1, v1

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_1

    iget v0, p0, Labcd/wb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/wb;->EQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/wb;->Zo:[I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    sget-object v0, Labcd/wb;->j6:[I

    iget v1, p0, Labcd/wb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/wb;->j6:[I

    iget v2, p0, Labcd/wb;->EQ:I

    aget v0, v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    :goto_0
    move v3, v4

    move v5, v4

    :goto_1
    iget-object v2, p0, Labcd/wb;->v5:[I

    array-length v2, v2

    if-ge v5, v2, :cond_6

    iget-object v2, p0, Labcd/wb;->v5:[I

    aget v6, v2, v5

    if-eqz v6, :cond_8

    const/high16 v2, -0x80000000

    if-eq v6, v2, :cond_8

    const v2, 0x7fffffff

    and-int v7, v2, v6

    array-length v8, v1

    array-length v2, v1

    rem-int v2, v7, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    aget v9, v1, v2

    if-eqz v9, :cond_5

    add-int/lit8 v9, v8, -0x2

    :try_start_1
    rem-int v9, v7, v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v2, v9

    array-length v9, v1

    rem-int/2addr v2, v9

    goto :goto_2

    :cond_1
    iget-object v0, p0, Labcd/wb;->Zo:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/wb;->Zo:[I

    array-length v0, v0

    iget-object v1, p0, Labcd/wb;->v5:[I

    array-length v1, v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Labcd/wb;->Zo:[I

    move v0, v4

    :goto_3
    array-length v2, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v0, v2, :cond_2

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v0, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    iget-object v2, p0, Labcd/wb;->v5:[I

    iput-object v2, p0, Labcd/wb;->Zo:[I

    iget-object v2, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    iput-object v2, p0, Labcd/wb;->gn:[Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/wb;->v5:[I

    iput-object v0, p0, Labcd/wb;->Zo:[I

    iget-object v0, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    iput-object v0, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    sget-object v0, Labcd/wb;->j6:[I

    iget v1, p0, Labcd/wb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/wb;->j6:[I

    iget v2, p0, Labcd/wb;->EQ:I

    aget v0, v0, v2

    new-array v0, v0, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    aput v6, v1, v2

    :try_start_4
    iget-object v6, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    aget-object v6, v6, v5

    aput-object v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    iput-object v1, p0, Labcd/wb;->v5:[I

    iput-object v0, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    iput v3, p0, Labcd/wb;->u7:I

    iget-object v0, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    if-eqz v0, :cond_7

    move v0, v4

    :goto_5
    iget-object v1, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    return-void

    :cond_8
    move v2, v3

    goto :goto_4
.end method

.method static synthetic j6(Labcd/wb;)[I
    .registers 2

    iget-object v0, p0, Labcd/wb;->v5:[I

    return-object v0
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, -0x1a9caeedf5a48760L    # -2.5048397102928932E180

    :try_start_0
    sget-boolean v0, Labcd/wb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a9caeedf5a48760L    # -2.5048397102928932E180

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/wb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const-wide v4, -0x3bb7894e90efc318L    # -9.02549194103829E20

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/wb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x3bb7894e90efc318L    # -9.02549194103829E20

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/wb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/wb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/wb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eq v0, p1, :cond_3

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/wb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/wb;->v5:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public DW(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const-wide v2, -0x2a246fbdfdce6480L

    :try_start_0
    sget-boolean v0, Labcd/wb;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x2a246fbdfdce6480L

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/wb;->FH(I)V

    invoke-virtual {p0, p1, p2}, Labcd/wb;->j6(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/wb;->FH:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(I)V
    .registers 10

    const-wide v6, -0x4fbd40fc233ca0e0L    # -3.2378986869227723E-76

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/wb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x4fbd40fc233ca0e0L    # -3.2378986869227723E-76

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/wb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/wb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/wb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Labcd/wb;->v5:[I

    const/high16 v4, -0x80000000

    aput v4, v0, v1

    iget-object v0, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v0, v1

    iget v0, p0, Labcd/wb;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/wb;->tp:I

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/wb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/wb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public FH(Labcd/wb;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb",
            "<+TT;>;)V"
        }
    .end annotation

    const-wide v4, 0x1e715f76048fdbc1L    # 4.826969173118648E-162

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/wb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1e715f76048fdbc1L    # 4.826969173118648E-162

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p1, Labcd/wb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Labcd/wb;->v5:[I

    aget v1, v1, v0

    iget-object v2, p1, Labcd/wb;->VH:[Ljava/lang/Object;

    aget-object v2, v2, v0

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Labcd/wb;->j6(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v1, v2}, Labcd/wb;->j6(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x88cc525550dc558L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/wb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x88cc525550dc558L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/wb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/wb;->v5:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Labcd/wb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/wb;->tp:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/wb;->gn:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/wb;->Zo:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(ILjava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const-wide v2, 0x253d9aab4f845288L

    const v0, 0x7fffffff

    const/4 v5, -0x1

    :try_start_0
    sget-boolean v1, Labcd/wb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x253d9aab4f845288L

    invoke-static {v6, v7, p0, v1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v6, v0, p1

    iget-object v0, p0, Labcd/wb;->v5:[I

    array-length v0, v0

    rem-int v1, v6, v0

    iget-object v0, p0, Labcd/wb;->v5:[I

    array-length v7, v0

    iget-object v0, p0, Labcd/wb;->v5:[I

    aget v4, v0, v1

    move v0, v5

    :goto_0
    if-eqz v4, :cond_5

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    aget-object v4, v4, v1

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

    iget-object v4, p0, Labcd/wb;->v5:[I

    array-length v4, v4

    rem-int/2addr v1, v4

    iget-object v4, p0, Labcd/wb;->v5:[I

    aget v4, v4, v1

    goto :goto_0

    :cond_5
    if-eq v0, v5, :cond_6

    move v1, v0

    :cond_6
    iget-object v4, p0, Labcd/wb;->v5:[I

    aput p1, v4, v1

    iget-object v4, p0, Labcd/wb;->VH:[Ljava/lang/Object;

    aput-object p2, v4, v1

    iget v1, p0, Labcd/wb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/wb;->tp:I

    if-ne v0, v5, :cond_7

    iget v0, p0, Labcd/wb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/wb;->u7:I

    :cond_7
    iget v0, p0, Labcd/wb;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/wb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/wb;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/wb;->FH:Z

    if-eqz v0, :cond_8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1
.end method

.method public j6(I)Z
    .registers 8

    const-wide v4, 0x1a31ed86b565831L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/wb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1a31ed86b565831L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/wb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/wb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/wb;->v5:[I

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

    iget-object v1, p0, Labcd/wb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/wb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v2, -0xe47f2b395aa09cfL    # -6.264794196967859E239

    :try_start_0
    sget-boolean v0, Labcd/wb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe47f2b395aa09cfL    # -6.264794196967859E239

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/wb;->tp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
