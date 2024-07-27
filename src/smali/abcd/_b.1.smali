.class public Labcd/_b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/_b$a;
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
        field = 0x2063dd10361ee86fL
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = -0x1731cce56b6e8471L
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = -0x240436902ff01c61L
    .end annotation
.end field

.field private final Zo:Labcd/Ea;
    .annotation runtime Labcd/ru;
        field = 0x2e57bd08ffb3d725L
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = -0x26b6079d4b5c8c40L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x2b56f983533aeb78L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x251882ca0524774cL
    .end annotation
.end field

.field public final v5:Labcd/_b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x44f8c1ef539952bL
    .end annotation

    const-wide v8, -0x29f141acfdd110f8L    # -3.525503472559429E106

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/_b;

    const-wide v2, 0x17d59162a21c22c0L    # 7.38636712008867E-194

    const-wide v4, 0x17d59162a21c22c0L    # 7.38636712008867E-194

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/_b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29f141acfdd110f8L    # -3.525503472559429E106

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/_b;->j6:[I

    new-instance v0, Labcd/bc;

    invoke-direct {v0}, Labcd/bc;-><init>()V

    sput-object v0, Labcd/_b;->DW:Labcd/bc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

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

.method public constructor <init>(Labcd/Ea;)V
    .registers 8

    const-wide v4, 0x299d746ded351903L    # 3.135434137187616E-108

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/_b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x299d746ded351903L    # 3.135434137187616E-108

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/_b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/_b$a;-><init>(Labcd/_b;Labcd/Zb;)V

    iput-object v0, p0, Labcd/_b;->v5:Labcd/_b$a;

    iput-object p1, p0, Labcd/_b;->Zo:Labcd/Ea;

    const/4 v0, 0x1

    iput v0, p0, Labcd/_b;->EQ:I

    sget-object v0, Labcd/_b;->j6:[I

    iget v1, p0, Labcd/_b;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/_b;->VH:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/_b;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/_b;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/Ea;Labcd/ec;)V
    .registers 11

    const-wide v2, -0x2a4107b04e9deb7dL    # -1.1098370968389729E105

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/_b;->FH:Z

    if-eqz v1, :cond_0

    const-wide v6, -0x2a4107b04e9deb7dL    # -1.1098370968389729E105

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/_b$a;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Labcd/_b$a;-><init>(Labcd/_b;Labcd/Zb;)V

    iput-object v1, p0, Labcd/_b;->v5:Labcd/_b$a;

    iput-object p1, p0, Labcd/_b;->Zo:Labcd/Ea;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Labcd/_b;->EQ:I

    sget-object v5, Labcd/_b;->j6:[I

    iget v6, p0, Labcd/_b;->EQ:I

    aget v5, v5, v6

    new-array v5, v5, [I

    iput-object v5, p0, Labcd/_b;->VH:[I

    const/4 v5, 0x0

    iput v5, p0, Labcd/_b;->u7:I

    const/4 v5, 0x0

    iput v5, p0, Labcd/_b;->tp:I

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-direct {p0, v5}, Labcd/_b;->DW(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/_b;->Hw:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method static synthetic DW(Labcd/_b;)Labcd/Ea;
    .registers 2

    iget-object v0, p0, Labcd/_b;->Zo:Labcd/Ea;

    return-object v0
.end method

.method private DW(I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x656c0884d7f293bcL
    .end annotation

    const-wide v8, 0x3a5f0690c7af7e30L    # 1.566394861787867E-27

    const v0, 0x7fffffff

    const/4 v3, -0x1

    :try_start_0
    sget-boolean v1, Labcd/_b;->FH:Z

    if-eqz v1, :cond_0

    const-wide v4, 0x3a5f0690c7af7e30L    # 1.566394861787867E-27

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v4, v0, p1

    iget-object v0, p0, Labcd/_b;->VH:[I

    array-length v0, v0

    rem-int v1, v4, v0

    iget-object v0, p0, Labcd/_b;->VH:[I

    array-length v5, v0

    iget-object v0, p0, Labcd/_b;->VH:[I

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

    iget-object v2, p0, Labcd/_b;->VH:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Labcd/_b;->VH:[I

    aget v2, v2, v1

    goto :goto_0

    :cond_5
    if-eq v0, v3, :cond_6

    move v1, v0

    :cond_6
    iget-object v2, p0, Labcd/_b;->VH:[I

    aput p1, v2, v1

    if-ne v0, v3, :cond_7

    iget v0, p0, Labcd/_b;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/_b;->u7:I

    :cond_7
    iget v0, p0, Labcd/_b;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/_b;->tp:I

    iget v0, p0, Labcd/_b;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/_b;->VH:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/_b;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v0
.end method

.method private Hw()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2a6a28b35996d2ebL
    .end annotation

    const-wide v8, -0x13c28ddf29446a45L    # -2.4782236986262273E213

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/_b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x13c28ddf29446a45L    # -2.4782236986262273E213

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/_b;->tp:I

    iget-object v2, p0, Labcd/_b;->VH:[I

    array-length v2, v2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v2, :cond_1

    iget v0, p0, Labcd/_b;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/_b;->EQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/_b;->gn:[I

    sget-object v0, Labcd/_b;->j6:[I

    iget v2, p0, Labcd/_b;->EQ:I

    aget v0, v0, v2

    new-array v0, v0, [I

    :goto_0
    move v2, v1

    move v3, v1

    :goto_1
    iget-object v1, p0, Labcd/_b;->VH:[I

    array-length v1, v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Labcd/_b;->VH:[I

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
    iget-object v0, p0, Labcd/_b;->gn:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/_b;->gn:[I

    array-length v0, v0

    iget-object v2, p0, Labcd/_b;->VH:[I

    array-length v2, v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Labcd/_b;->gn:[I

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
    iget-object v2, p0, Labcd/_b;->VH:[I

    iput-object v2, p0, Labcd/_b;->gn:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/_b;->VH:[I

    iput-object v0, p0, Labcd/_b;->gn:[I

    sget-object v0, Labcd/_b;->j6:[I

    iget v2, p0, Labcd/_b;->EQ:I

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
    iput-object v0, p0, Labcd/_b;->VH:[I

    iput v2, p0, Labcd/_b;->u7:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v1, v2

    goto :goto_4
.end method

.method static synthetic j6(Labcd/_b;)[I
    .registers 2

    iget-object v0, p0, Labcd/_b;->VH:[I

    return-object v0
.end method


# virtual methods
.method public DW()Labcd/Da;
    .registers 7

    const-wide v4, 0x9bdeb4555dbf608L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/_b;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x9bdeb4555dbf608L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    move v2, v0

    :cond_1
    iget-object v1, p0, Labcd/_b;->VH:[I

    array-length v1, v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Labcd/_b;->VH:[I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/_b;->Zo:Labcd/Ea;

    invoke-virtual {v1, v0}, Labcd/Ea;->Hw(I)Labcd/Da;
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

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public DW(Labcd/Da;)V
    .registers 6

    const-wide v2, -0x5c971176b1d1a770L    # -4.18721566855035E-138

    :try_start_0
    sget-boolean v0, Labcd/_b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5c971176b1d1a770L    # -4.18721566855035E-138

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/_b;->Zo:Labcd/Ea;

    invoke-virtual {v0, p1}, Labcd/Ea;->VH(Labcd/Da;)I

    move-result v0

    invoke-direct {p0, v0}, Labcd/_b;->DW(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0xfc9522a3fe07905L    # -3.5209624299550376E232

    :try_start_0
    sget-boolean v0, Labcd/_b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xfc9522a3fe07905L    # -3.5209624299550376E232

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/_b;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Labcd/Da;)V
    .registers 10

    const-wide v6, 0x40cb207fe86c991L

    const v1, 0x7fffffff

    :try_start_0
    sget-boolean v0, Labcd/_b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x40cb207fe86c991L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/_b;->Zo:Labcd/Ea;

    invoke-virtual {v0, p1}, Labcd/Ea;->VH(Labcd/Da;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :cond_1
    and-int v3, v1, v0

    iget-object v1, p0, Labcd/_b;->VH:[I

    array-length v1, v1

    rem-int v1, v3, v1

    iget-object v2, p0, Labcd/_b;->VH:[I

    array-length v4, v2

    iget-object v2, p0, Labcd/_b;->VH:[I

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

    iget-object v2, p0, Labcd/_b;->VH:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Labcd/_b;->VH:[I

    aget v2, v2, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/_b;->VH:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    iget v0, p0, Labcd/_b;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/_b;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH(Labcd/_b;)V
    .registers 8

    const-wide v4, 0x5997ddde487bf33fL    # 3.944301664017801E123

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/_b;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x5997ddde487bf33fL    # 3.944301664017801E123

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p1, Labcd/_b;->VH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Labcd/_b;->VH:[I

    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Labcd/_b;->DW(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v1}, Labcd/_b;->DW(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const-wide v8, 0x264a21faa1a93e8L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Labcd/_b;->FH:Z

    if-eqz v2, :cond_0

    const-wide v4, 0x264a21faa1a93e8L

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

    invoke-virtual {p0}, Labcd/_b;->FH()I

    move-result v5

    if-eq v4, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_1
    iget-object v4, p0, Labcd/_b;->VH:[I

    array-length v4, v4

    if-ge v5, v4, :cond_5

    iget-object v4, p0, Labcd/_b;->VH:[I

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

    sget-boolean v3, Labcd/_b;->Hw:Z

    if-eqz v3, :cond_6

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0xa774f95917a6a5bL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/_b;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xa774f95917a6a5bL

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/_b;->u7:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/_b;->VH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/_b;->VH:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/_b;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/_b;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, -0x6be01672f907c9a8L    # -9.479409358417016E-212

    :try_start_0
    sget-boolean v0, Labcd/_b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6be01672f907c9a8L    # -9.479409358417016E-212

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/_b;->tp:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/_b;->EQ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/_b;->VH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/_b;->VH:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Labcd/_b;->VH:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(I)Z
    .registers 8

    const-wide v4, -0x571865c1b510758L    # -2.212747746167806E282

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/_b;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x571865c1b510758L    # -2.212747746167806E282

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/_b;->VH:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/_b;->VH:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/_b;->VH:[I

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

    iget-object v1, p0, Labcd/_b;->VH:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/_b;->VH:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public j6(Labcd/Da;)Z
    .registers 6

    const-wide v2, 0x1eb3dfdfe3b850cL

    :try_start_0
    sget-boolean v0, Labcd/_b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1eb3dfdfe3b850cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/_b;->Zo:Labcd/Ea;

    invoke-virtual {v0, p1}, Labcd/Ea;->VH(Labcd/Da;)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/_b;->j6(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v6, 0x16b62442225f5f8cL

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/_b;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16b62442225f5f8cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    move v3, v2

    :goto_0
    :try_start_1
    iget-object v1, p0, Labcd/_b;->VH:[I

    array-length v1, v1

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Labcd/_b;->VH:[I

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

    iget-object v0, p0, Labcd/_b;->Zo:Labcd/Ea;

    invoke-virtual {v0, v1}, Labcd/Ea;->Hw(I)Labcd/Da;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Da;->XL()Ljava/lang/String;

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

    sget-boolean v1, Labcd/_b;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
