.class public Labcd/yb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/yb$a;
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
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:[I
    .annotation runtime Labcd/ru;
        field = -0x22d70b1df0855b5cL
    .end annotation
.end field

.field public final FH:Labcd/yb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb",
            "<TE;>.a;"
        }
    .end annotation
.end field

.field private final Hw:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = -0x3e0148c13dd945cL
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x46d59f6cf52b48e0L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x3897d3ee75a8a21bL
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = -0xda74cc747d81ee9L
    .end annotation
.end field

.field private tp:[I
    .annotation runtime Labcd/ru;
        field = 0x2ddcdc3f200c3951L
    .end annotation
.end field

.field private u7:[I
    .annotation runtime Labcd/ru;
        field = -0x150f4dcc1133b390L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = -0x16c1f8c1797241a3L
    .end annotation
.end field

.field private we:I
    .annotation runtime Labcd/ru;
        field = -0x2bdc04a0ad02d06cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x217988153200b1b0L    # 1.996731700293985E-147

    const-class v0, Labcd/yb;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ba;)V
    .registers 8

    const-wide v4, -0x2a82bda73ab0bcfL    # -6.087459311568818E295

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a82bda73ab0bcfL    # -6.087459311568818E295

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/yb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/yb$a;-><init>(Labcd/yb;Labcd/xb;)V

    iput-object v0, p0, Labcd/yb;->FH:Labcd/yb$a;

    const/16 v0, 0xbb8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/yb;->v5:[I

    const/16 v0, 0xbb8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/yb;->Zo:[I

    const/16 v0, 0xbb8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/yb;->VH:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/yb;->gn:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/yb;->u7:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/yb;->tp:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/yb;->EQ:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/yb;->we:I

    iput-object p1, p0, Labcd/yb;->Hw:Labcd/Ba;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Hw()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xc6c1a961279a670L
    .end annotation

    const-wide v10, -0x1b0c2c55f2f6b1cdL    # -2.008585727231083E178

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x1b0c2c55f2f6b1cdL    # -2.008585727231083E178

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/yb;->v5:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [I

    iget-object v0, p0, Labcd/yb;->v5:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    iget-object v0, p0, Labcd/yb;->v5:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    move v2, v1

    :goto_0
    iget v0, p0, Labcd/yb;->we:I

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Labcd/yb;->gn:[I

    aget v6, v0, v2

    if-eqz v6, :cond_3

    iget-object v0, p0, Labcd/yb;->u7:[I

    aget v7, v0, v2

    iget-object v0, p0, Labcd/yb;->tp:[I

    aget v8, v0, v2

    const v0, 0x7fffffff

    and-int/2addr v0, v6

    array-length v9, v3

    rem-int/2addr v0, v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    aget v9, v3, v0

    if-eqz v9, :cond_2

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    array-length v9, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v0, v9, :cond_1

    move v0, v1

    goto :goto_1

    :cond_2
    aput v6, v3, v0

    aput v8, v4, v0

    aput v7, v5, v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    :try_start_2
    iput-object v3, p0, Labcd/yb;->v5:[I

    iput-object v5, p0, Labcd/yb;->VH:[I

    iput-object v4, p0, Labcd/yb;->Zo:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yb;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method private v5()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xc3d666c9753d875L
    .end annotation

    const-wide v6, -0x1af4f5b07a2dbd84L    # -5.47871317967862E178

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1af4f5b07a2dbd84L    # -5.47871317967862E178

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/yb;->gn:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/yb;->gn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/yb;->gn:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/yb;->gn:[I

    iget-object v0, p0, Labcd/yb;->u7:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/yb;->u7:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/yb;->u7:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/yb;->u7:[I

    iget-object v0, p0, Labcd/yb;->tp:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/yb;->tp:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/yb;->tp:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/yb;->tp:[I

    iget-object v0, p0, Labcd/yb;->EQ:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/yb;->EQ:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/yb;->EQ:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/yb;->EQ:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW(II)Labcd/Aa;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    const-wide v2, -0x33c9df68293f684cL    # -1.3889541917047732E59

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x33c9df68293f684cL    # -1.3889541917047732E59

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Labcd/yb;->v5:[I

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int v1, v0, v5

    const/4 v0, -0x1

    :cond_1
    aget v6, v4, v1

    if-ne v6, p1, :cond_2

    :try_start_1
    iget-object v7, p0, Labcd/yb;->VH:[I

    aget v7, v7, v1

    if-ne v7, p2, :cond_2

    iget-object v0, p0, Labcd/yb;->Zo:[I

    aget v0, v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v5, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-nez v6, :cond_1

    iget-object v1, p0, Labcd/yb;->Hw:Labcd/Ba;

    invoke-virtual {v1, v0}, Labcd/Ba;->FH(I)Labcd/Aa;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/yb;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public DW()V
    .registers 7

    const-wide v4, -0x2cb755e6a9781a7bL    # -1.607755846685379E93

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2cb755e6a9781a7bL    # -1.607755846685379E93

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/yb;->gn:[I

    array-length v0, v0

    iget v1, p0, Labcd/yb;->we:I

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Labcd/yb;->v5()V

    :cond_1
    iget-object v0, p0, Labcd/yb;->gn:[I

    iget v1, p0, Labcd/yb;->we:I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v0, p0, Labcd/yb;->we:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/yb;->we:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()V
    .registers 11

    const-wide v8, 0x1f888da3f720db60L

    const/4 v3, 0x0

    const/4 v1, -0x1

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, 0x1f888da3f720db60L

    invoke-static {v4, v5, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Labcd/yb;->v5:[I

    array-length v6, v5

    iget v0, p0, Labcd/yb;->we:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/yb;->we:I

    iget-object v0, p0, Labcd/yb;->gn:[I

    iget v2, p0, Labcd/yb;->we:I

    aget v0, v0, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    :goto_0
    if-eqz v4, :cond_6

    const v0, 0x7fffffff

    and-int/2addr v0, v4

    rem-int v2, v0, v6

    move v0, v1

    :cond_1
    aget v7, v5, v2

    if-ne v7, v4, :cond_2

    move v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v6, :cond_3

    move v2, v3

    :cond_3
    if-nez v7, :cond_1

    if-eq v0, v1, :cond_4

    aput v3, v5, v0

    :cond_4
    :try_start_1
    iget v0, p0, Labcd/yb;->we:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/yb;->we:I

    iget-object v0, p0, Labcd/yb;->gn:[I

    iget v2, p0, Labcd/yb;->we:I

    aget v0, v0, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yb;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    return-void
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x3492c0174bf6df3L    # -5.695155965439772E292

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/yb;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x3492c0174bf6df3L    # -5.695155965439772E292

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/yb;->we:I

    if-lez v1, :cond_1

    :goto_0
    iget-object v1, p0, Labcd/yb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/yb;->v5:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/yb;->we:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(ILabcd/Aa;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    const-wide v8, -0xbb8559849f8c6bdL

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xbb8559849f8c6bdL

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/yb;->v5:[I

    array-length v0, v0

    iget v1, p0, Labcd/yb;->we:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Labcd/yb;->Hw()V

    :cond_1
    iget-object v0, p0, Labcd/yb;->gn:[I

    array-length v0, v0

    iget v1, p0, Labcd/yb;->we:I

    if-gt v0, v1, :cond_2

    invoke-direct {p0}, Labcd/yb;->v5()V

    :cond_2
    iget-object v0, p0, Labcd/yb;->gn:[I

    iget v1, p0, Labcd/yb;->we:I

    aput p1, v0, v1

    iget-object v0, p0, Labcd/yb;->u7:[I

    iget v1, p0, Labcd/yb;->we:I

    aput p3, v0, v1

    iget-object v0, p0, Labcd/yb;->tp:[I

    iget v1, p0, Labcd/yb;->we:I

    iget-object v2, p0, Labcd/yb;->Hw:Labcd/Ba;

    invoke-virtual {v2, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Labcd/yb;->we:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/yb;->we:I

    iget-object v1, p0, Labcd/yb;->v5:[I

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int/2addr v0, v2

    :cond_3
    :goto_0
    aget v3, v1, v0

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    aput p1, v1, v0

    :try_start_1
    iget-object v1, p0, Labcd/yb;->Zo:[I

    iget-object v2, p0, Labcd/yb;->Hw:Labcd/Ba;

    invoke-virtual {v2, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Labcd/yb;->VH:[I

    aput p3, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/yb;->DW:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public j6(II)Z
    .registers 11

    const-wide v2, 0x9fee197a9138e0bL

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x9fee197a9138e0bL

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Labcd/yb;->v5:[I

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int/2addr v0, v5

    :cond_1
    aget v6, v4, v0

    if-ne v6, p1, :cond_2

    :try_start_1
    iget-object v7, p0, Labcd/yb;->VH:[I

    aget v7, v7, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v7, p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v5, :cond_3

    move v0, v1

    :cond_3
    if-nez v6, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/yb;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method
