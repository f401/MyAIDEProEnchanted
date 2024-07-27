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
            "LFb",
            "<TK;TV;>.a;"
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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x9159ab499d3b92bL
    .end annotation

    const-wide v8, 0x244a52e65980c651L    # 7.243375036681313E-134

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Fb;

    const-wide v2, 0x47b2a1956aca5e8L

    const-wide v4, 0x47b2a1956aca5e8L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x244a52e65980c651L    # 7.243375036681313E-134

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Fb;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

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

    const-wide v4, 0x607c45b8b91b07f0L    # 6.0651237950703394E156

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x607c45b8b91b07f0L    # 6.0651237950703394E156

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Fb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Fb$a;-><init>(Labcd/Fb;Labcd/Eb;)V

    iput-object v0, p0, Labcd/Fb;->Hw:Labcd/Fb$a;

    iput-object p1, p0, Labcd/Fb;->we:Labcd/Ba;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb;->EQ:I

    sget-object v0, Labcd/Fb;->j6:[I

    iget v1, p0, Labcd/Fb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Fb;->v5:[I

    sget-object v0, Labcd/Fb;->j6:[I

    iget v1, p0, Labcd/Fb;->EQ:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Fb;->VH:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/Ba;Labcd/ec;)V
    .registers 11

    const-wide v2, 0x1290a114fb11a75cL

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v6, 0x1290a114fb11a75cL

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/Fb$a;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Labcd/Fb$a;-><init>(Labcd/Fb;Labcd/Eb;)V

    iput-object v1, p0, Labcd/Fb;->Hw:Labcd/Fb$a;

    iput-object p1, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Labcd/Fb;->EQ:I

    sget-object v5, Labcd/Fb;->j6:[I

    iget v6, p0, Labcd/Fb;->EQ:I

    aget v5, v5, v6

    new-array v5, v5, [I

    iput-object v5, p0, Labcd/Fb;->v5:[I

    sget-object v5, Labcd/Fb;->j6:[I

    iget v6, p0, Labcd/Fb;->EQ:I

    aget v5, v5, v6

    new-array v5, v5, [I

    iput-object v5, p0, Labcd/Fb;->VH:[I

    const/4 v5, 0x0

    iput v5, p0, Labcd/Fb;->u7:I

    const/4 v5, 0x0

    iput v5, p0, Labcd/Fb;->tp:I

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct {p0, v5, v6}, Labcd/Fb;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fb;->FH:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method private DW(I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x8f0ea48686120L
    .end annotation

    const-wide v6, -0x2f6cce10b560f0f7L    # -1.4224869225955292E80

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x2f6cce10b560f0f7L    # -1.4224869225955292E80

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    const/4 v3, 0x0

    and-int v4, v0, p1

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v5, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v0, v0

    rem-int v2, v4, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    aget v1, v0, v2

    move v0, v3

    :goto_0
    if-eqz v1, :cond_4

    if-ne v1, p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v5, -0x2

    rem-int v1, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/Fb;->v5:[I

    array-length v2, v2

    rem-int v2, v1, v2

    iget-object v1, p0, Labcd/Fb;->v5:[I

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return v0
.end method

.method private DW(II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x533cbd39ecd3084bL
    .end annotation

    const-wide v2, 0x5254926b63621c40L    # 4.0923637229377396E88

    const v0, 0x7fffffff

    const/high16 v10, -0x80000000

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v8, 0x5254926b63621c40L    # 4.0923637229377396E88

    invoke-static {v8, v9, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v7, v0, p1

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v0, v0

    rem-int v4, v7, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v8, v0

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/Fb;->v5:[I

    aget v5, v1, v4

    move v1, v6

    :goto_0
    if-eqz v5, :cond_6

    if-ne v5, p1, :cond_5

    iget-object v5, p0, Labcd/Fb;->VH:[I

    aget v5, v5, v4

    if-ne v5, p2, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v5, v8, -0x2

    rem-int v5, v7, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iget-object v5, p0, Labcd/Fb;->v5:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    iget-object v5, p0, Labcd/Fb;->v5:[I

    aget v5, v5, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Labcd/Fb;->v5:[I

    const/high16 v9, -0x80000000

    aput v9, v5, v4

    iget v5, p0, Labcd/Fb;->tp:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Labcd/Fb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fb;->FH:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    if-ne v5, v10, :cond_2

    move v1, v4

    goto :goto_1

    :cond_6
    if-nez v0, :cond_9

    if-eq v1, v6, :cond_7

    move v4, v1

    :cond_7
    :try_start_1
    iget-object v0, p0, Labcd/Fb;->v5:[I

    aput p1, v0, v4

    iget-object v0, p0, Labcd/Fb;->VH:[I

    aput p2, v0, v4

    iget v0, p0, Labcd/Fb;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Fb;->tp:I

    if-ne v1, v6, :cond_8

    iget v0, p0, Labcd/Fb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Fb;->u7:I

    :cond_8
    iget v0, p0, Labcd/Fb;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_9

    invoke-direct {p0}, Labcd/Fb;->Hw()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return-void
.end method

.method static synthetic DW(Labcd/Fb;)[I
    .registers 2

    iget-object v0, p0, Labcd/Fb;->v5:[I

    return-object v0
.end method

.method private FH(I)I
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x67e350104f7a636bL
    .end annotation

    const-wide v4, -0x694eb66aeb9dfacL

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x694eb66aeb9dfacL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eq v0, p1, :cond_3

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Fb;->v5:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/Fb;->VH:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method static synthetic FH(Labcd/Fb;)[I
    .registers 2

    iget-object v0, p0, Labcd/Fb;->VH:[I

    return-object v0
.end method

.method private Hw()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x2a12903454880c0dL
    .end annotation

    const-wide v10, -0x199063aca8f4480L    # -7.693319765583671E300

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x199063aca8f4480L    # -7.693319765583671E300

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Fb;->tp:I

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_1

    iget v0, p0, Labcd/Fb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Fb;->EQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Fb;->Zo:[I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Fb;->gn:[I

    sget-object v0, Labcd/Fb;->j6:[I

    iget v1, p0, Labcd/Fb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/Fb;->j6:[I

    iget v3, p0, Labcd/Fb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [I

    :goto_0
    move v3, v2

    move v4, v2

    :goto_1
    iget-object v2, p0, Labcd/Fb;->v5:[I

    array-length v2, v2

    if-ge v4, v2, :cond_6

    iget-object v2, p0, Labcd/Fb;->v5:[I

    aget v5, v2, v4

    if-eqz v5, :cond_7

    const/high16 v2, -0x80000000

    if-eq v5, v2, :cond_7

    const v2, 0x7fffffff

    and-int v6, v2, v5

    array-length v7, v1

    array-length v2, v1

    rem-int v2, v6, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    aget v8, v1, v2

    if-eqz v8, :cond_5

    add-int/lit8 v8, v7, -0x2

    :try_start_1
    rem-int v8, v6, v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v8

    array-length v8, v1

    rem-int/2addr v2, v8

    goto :goto_2

    :cond_1
    iget-object v0, p0, Labcd/Fb;->Zo:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Fb;->Zo:[I

    array-length v0, v0

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Labcd/Fb;->Zo:[I

    move v0, v2

    :goto_3
    array-length v3, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v0, v3, :cond_2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v0, p0, Labcd/Fb;->gn:[I

    iget-object v3, p0, Labcd/Fb;->v5:[I

    iput-object v3, p0, Labcd/Fb;->Zo:[I

    iget-object v3, p0, Labcd/Fb;->VH:[I

    iput-object v3, p0, Labcd/Fb;->gn:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/Fb;->v5:[I

    iput-object v0, p0, Labcd/Fb;->Zo:[I

    iget-object v0, p0, Labcd/Fb;->VH:[I

    iput-object v0, p0, Labcd/Fb;->gn:[I

    sget-object v0, Labcd/Fb;->j6:[I

    iget v1, p0, Labcd/Fb;->EQ:I

    aget v0, v0, v1

    new-array v1, v0, [I

    sget-object v0, Labcd/Fb;->j6:[I

    iget v3, p0, Labcd/Fb;->EQ:I

    aget v0, v0, v3

    new-array v0, v0, [I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    aput v5, v1, v2

    :try_start_4
    iget-object v5, p0, Labcd/Fb;->VH:[I

    aget v5, v5, v4

    aput v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    iput-object v1, p0, Labcd/Fb;->v5:[I

    iput-object v0, p0, Labcd/Fb;->VH:[I

    iput v3, p0, Labcd/Fb;->u7:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method private Hw(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xa21a3016f8c899L
    .end annotation

    const-wide v6, 0x190445205af4b4d0L    # 3.639544233642957E-188

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x190445205af4b4d0L    # 3.639544233642957E-188

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Labcd/Fb;->v5:[I

    const/high16 v4, -0x80000000

    aput v4, v0, v1

    iget v0, p0, Labcd/Fb;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Fb;->tp:I

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Fb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method static synthetic j6(Labcd/Fb;)Labcd/Ba;
    .registers 2

    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    return-object v0
.end method

.method private j6(II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x54e5c94bb0ee1a9L
    .end annotation

    const-wide v2, 0x149e2fdcf7af5530L

    const v0, 0x7fffffff

    const/4 v5, -0x1

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x149e2fdcf7af5530L

    invoke-static {v6, v7, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v6, v0, p1

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v0, v0

    rem-int v1, v6, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v7, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    aget v4, v0, v1

    move v0, v5

    :goto_0
    if-eqz v4, :cond_5

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Labcd/Fb;->VH:[I

    aget v4, v4, v1

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

    iget-object v4, p0, Labcd/Fb;->v5:[I

    array-length v4, v4

    rem-int/2addr v1, v4

    iget-object v4, p0, Labcd/Fb;->v5:[I

    aget v4, v4, v1

    goto :goto_0

    :cond_5
    if-eq v0, v5, :cond_6

    move v1, v0

    :cond_6
    iget-object v4, p0, Labcd/Fb;->v5:[I

    aput p1, v4, v1

    iget-object v4, p0, Labcd/Fb;->VH:[I

    aput p2, v4, v1

    iget v1, p0, Labcd/Fb;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Fb;->tp:I

    if-ne v0, v5, :cond_7

    iget v0, p0, Labcd/Fb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Fb;->u7:I

    :cond_7
    iget v0, p0, Labcd/Fb;->u7:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Fb;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fb;->FH:Z

    if-eqz v0, :cond_8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1
.end method

.method private j6(I)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x6074ba51f7beb08L
    .end annotation

    const-wide v4, -0x13ae2cf5c081485L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x13ae2cf5c081485L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Fb;->v5:[I

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

    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Fb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method


# virtual methods
.method public DW(Labcd/Aa;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const-wide v2, -0x28265cf6d540e88dL    # -1.578349472619836E115

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x28265cf6d540e88dL    # -1.578349472619836E115

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Fb;->DW(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW()Labcd/Aa;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const-wide v4, 0x13e9b567eb303b7bL    # 9.54578804971862E-213

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x13e9b567eb303b7bL    # 9.54578804971862E-213

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    move v2, v0

    :cond_1
    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Labcd/Fb;->v5:[I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/Fb;->we:Labcd/Ba;

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

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public DW(Labcd/Aa;Labcd/Aa;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    const-wide v2, -0x3f94875a36be6af0L    # -219.7702375679878

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3f94875a36be6af0L    # -219.7702375679878

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    iget-object v1, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v1, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Labcd/Fb;->DW(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fb;->FH:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0x19f666eb94c74d80L    # -3.399013311584785E183

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19f666eb94c74d80L    # -3.399013311584785E183

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Fb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Labcd/Aa;)Labcd/Aa;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const-wide v2, -0x47cd4431c90d20L

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x47cd4431c90d20L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    iget-object v1, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v1, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v1

    invoke-direct {p0, v1}, Labcd/Fb;->FH(I)I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Ba;->FH(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    const-wide v2, 0x20a8268483ceefc0L    # 2.305566155385034E-151

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20a8268483ceefc0L    # 2.305566155385034E-151

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Fb;->Hw(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Fb;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFb",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const-wide v4, 0x3d048fb103408a64L    # 9.131049138801927E-15

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x3d048fb103408a64L    # 9.131049138801927E-15

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p1, Labcd/Fb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Labcd/Fb;->v5:[I

    aget v1, v1, v0

    iget-object v2, p1, Labcd/Fb;->VH:[I

    aget v2, v2, v0

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Labcd/Fb;->j6(II)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    invoke-direct {p0, v1, v2}, Labcd/Fb;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6()V
    .registers 7

    const-wide v4, 0x1af95d6d77aef460L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Fb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1af95d6d77aef460L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Fb;->u7:I

    if-lez v1, :cond_2

    :goto_0
    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Fb;->v5:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Labcd/Aa;Labcd/Aa;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    const-wide v2, 0x2f28cb8a7b9e2d90L    # 1.6337166292622248E-81

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2f28cb8a7b9e2d90L    # 1.6337166292622248E-81

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    iget-object v1, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v1, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Labcd/Fb;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fb;->FH:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, 0x63a8539c90d074a3L    # 1.175138605850273E172

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x63a8539c90d074a3L    # 1.175138605850273E172

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Fb;->tp:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Labcd/Fb;->EQ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Fb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/Fb;->v5:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Labcd/Fb;->v5:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Labcd/Fb;->VH:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(Labcd/Aa;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const-wide v2, -0xa73166bb15c9efL

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa73166bb15c9efL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Fb;->j6(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v6, 0x4e44f575c3ca7dfL

    :try_start_0
    sget-boolean v0, Labcd/Fb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4e44f575c3ca7dfL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/Fb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/Fb;->v5:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Labcd/Fb;->VH:[I

    aget v3, v3, v1

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v0, v2}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Fb;->we:Labcd/Ba;

    invoke-virtual {v0, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    sget-boolean v1, Labcd/Fb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
