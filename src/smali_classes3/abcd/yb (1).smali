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
            "Lyb<",
            "TE;>.a;"
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
    .registers 3

    const-class v0, Labcd/yb;

    const-wide v1, 0x217988153200b1b0L  # 1.996731700293985E-147

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ba;)V
    .registers 7

    const-wide v0, -0x2a82bda73ab0bcfL  # -6.087459311568818E295

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/yb;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/yb$a;

    invoke-direct {v3, p0, v2}, Labcd/yb$a;-><init>(Labcd/yb;Labcd/xb;)V

    iput-object v3, p0, Labcd/yb;->FH:Labcd/yb$a;

    const/16 v3, 0xbb8

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/yb;->v5:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/yb;->Zo:[I

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/yb;->VH:[I

    const/16 v3, 0x3e8

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/yb;->gn:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/yb;->u7:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/yb;->tp:[I

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/yb;->EQ:[I

    const/4 v3, 0x0

    iput v3, p0, Labcd/yb;->we:I

    iput-object p1, p0, Labcd/yb;->Hw:Labcd/Ba;
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception v3

    sget-boolean v4, Labcd/yb;->DW:Z

    if-eqz v4, :cond_45

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v3
.end method

.method private Hw()V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xc6c1a961279a670L
    .end annotation

    const-wide v0, -0x1b0c2c55f2f6b1cdL  # -2.008585727231083E178

    :try_start_5
    sget-boolean v2, Labcd/yb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/yb;->v5:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v4, v3, [I

    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_25
    iget v8, p0, Labcd/yb;->we:I

    if-ge v7, v8, :cond_4f

    iget-object v8, p0, Labcd/yb;->gn:[I

    aget v8, v8, v7

    if-eqz v8, :cond_4c

    iget-object v9, p0, Labcd/yb;->u7:[I

    aget v9, v9, v7

    iget-object v10, p0, Labcd/yb;->tp:[I

    aget v10, v10, v7

    const v11, 0x7fffffff

    and-int/2addr v11, v8

    rem-int/2addr v11, v3
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_56

    :cond_3c
    :goto_3c
    aget v12, v4, v11

    if-eqz v12, :cond_46

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v3, :cond_3c

    const/4 v11, 0x0

    goto :goto_3c

    :cond_46
    aput v8, v4, v11

    aput v10, v5, v11

    aput v9, v2, v11

    :cond_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_4f
    :try_start_4f
    iput-object v4, p0, Labcd/yb;->v5:[I

    iput-object v2, p0, Labcd/yb;->VH:[I

    iput-object v5, p0, Labcd/yb;->Zo:[I
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_56

    return-void

    :catchall_56
    move-exception v2

    sget-boolean v3, Labcd/yb;->DW:Z

    if-eqz v3, :cond_5e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v2

    :goto_60
    goto :goto_5f
.end method

.method private v5()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xc3d666c9753d875L
    .end annotation

    const-wide v0, -0x1af4f5b07a2dbd84L  # -5.47871317967862E178

    :try_start_5
    sget-boolean v2, Labcd/yb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/yb;->gn:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/yb;->gn:[I

    iget-object v2, p0, Labcd/yb;->u7:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/yb;->u7:[I

    iget-object v2, p0, Labcd/yb;->tp:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/yb;->tp:[I

    iget-object v2, p0, Labcd/yb;->EQ:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/yb;->EQ:[I
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4a

    return-void

    :catchall_4a
    move-exception v2

    sget-boolean v3, Labcd/yb;->DW:Z

    if-eqz v3, :cond_52

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_52
    throw v2
.end method


# virtual methods
.method public DW(II)Labcd/Aa;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x33c9df68293f684cL  # -1.3889541917047732E59

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/yb;->v5:[I

    array-length v1, v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_3b

    const v2, 0x7fffffff

    and-int/2addr v2, p1

    rem-int/2addr v2, v1

    const/4 v3, -0x1

    :cond_1f
    aget v4, v0, v2

    if-ne v4, p1, :cond_2d

    :try_start_23
    iget-object v5, p0, Labcd/yb;->VH:[I

    aget v5, v5, v2

    if-ne v5, p2, :cond_2d

    iget-object v3, p0, Labcd/yb;->Zo:[I

    aget v3, v3, v2

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_32

    const/4 v2, 0x0

    :cond_32
    if-nez v4, :cond_1f

    iget-object v0, p0, Labcd/yb;->Hw:Labcd/Ba;

    invoke-virtual {v0, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object p1
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3b

    return-object p1

    :catchall_3b
    move-exception v0

    sget-boolean v1, Labcd/yb;->DW:Z

    if-eqz v1, :cond_54

    const-wide v2, -0x33c9df68293f684cL  # -1.3889541917047732E59

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public DW()V
    .registers 6

    const-wide v0, -0x2cb755e6a9781a7bL  # -1.607755846685379E93

    :try_start_5
    sget-boolean v2, Labcd/yb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/yb;->gn:[I

    array-length v2, v2

    iget v3, p0, Labcd/yb;->we:I

    if-gt v2, v3, :cond_16

    invoke-direct {p0}, Labcd/yb;->v5()V

    :cond_16
    iget-object v2, p0, Labcd/yb;->gn:[I

    iget v3, p0, Labcd/yb;->we:I

    const/4 v4, 0x0

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/yb;->we:I
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/yb;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public FH()V
    .registers 11

    const-wide v0, 0x1f888da3f720db60L

    :try_start_5
    sget-boolean v2, Labcd/yb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/yb;->v5:[I

    array-length v3, v2

    iget v4, p0, Labcd/yb;->we:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Labcd/yb;->we:I

    iget-object v5, p0, Labcd/yb;->gn:[I

    aget v4, v5, v4
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_3f

    :goto_19
    if-eqz v4, :cond_3e

    const v5, 0x7fffffff

    and-int/2addr v5, v4

    rem-int/2addr v5, v3

    const/4 v6, -0x1

    const/4 v7, -0x1

    :cond_22
    aget v8, v2, v5

    if-ne v8, v4, :cond_27

    move v7, v5

    :cond_27
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x0

    if-lt v5, v3, :cond_2d

    const/4 v5, 0x0

    :cond_2d
    if-nez v8, :cond_22

    if-eq v7, v6, :cond_33

    aput v9, v2, v7

    :cond_33
    :try_start_33
    iget v4, p0, Labcd/yb;->we:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Labcd/yb;->we:I

    iget-object v5, p0, Labcd/yb;->gn:[I

    aget v4, v5, v4
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3f

    goto :goto_19

    :cond_3e
    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Labcd/yb;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v2

    :goto_49
    goto :goto_48
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x3492c0174bf6df3L  # -5.695155965439772E292

    :try_start_5
    sget-boolean v2, Labcd/yb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/yb;->we:I

    const/4 v3, 0x0

    if-lez v2, :cond_1c

    const/4 v2, 0x0

    :goto_12
    iget-object v4, p0, Labcd/yb;->v5:[I

    array-length v5, v4

    if-ge v2, v5, :cond_1c

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1c
    iput v3, p0, Labcd/yb;->we:I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/yb;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    goto :goto_29

    :goto_28
    throw v2

    :goto_29
    goto :goto_28
.end method

.method public j6(ILabcd/Aa;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xbb8559849f8c6bdL

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/yb;->v5:[I

    array-length v0, v0

    iget v1, p0, Labcd/yb;->we:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_24

    invoke-direct {p0}, Labcd/yb;->Hw()V

    :cond_24
    iget-object v0, p0, Labcd/yb;->gn:[I

    array-length v0, v0

    iget v1, p0, Labcd/yb;->we:I

    if-gt v0, v1, :cond_2e

    invoke-direct {p0}, Labcd/yb;->v5()V

    :cond_2e
    iget-object v0, p0, Labcd/yb;->gn:[I

    iget v1, p0, Labcd/yb;->we:I

    aput p1, v0, v1

    iget-object v0, p0, Labcd/yb;->u7:[I

    aput p3, v0, v1

    iget-object v0, p0, Labcd/yb;->tp:[I

    iget-object v2, p0, Labcd/yb;->Hw:Labcd/Ba;

    invoke-virtual {v2, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Labcd/yb;->we:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/yb;->we:I

    iget-object v0, p0, Labcd/yb;->v5:[I

    array-length v1, v0
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_6b

    const v2, 0x7fffffff

    and-int/2addr v2, p1

    rem-int/2addr v2, v1

    :cond_50
    :goto_50
    aget v3, v0, v2

    if-eqz v3, :cond_5a

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_50

    const/4 v2, 0x0

    goto :goto_50

    :cond_5a
    aput p1, v0, v2

    :try_start_5c
    iget-object v0, p0, Labcd/yb;->Zo:[I

    iget-object v1, p0, Labcd/yb;->Hw:Labcd/Ba;

    invoke-virtual {v1, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Labcd/yb;->VH:[I

    aput p3, v0, v2
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_6b

    return-void

    :catchall_6b
    move-exception v0

    sget-boolean v1, Labcd/yb;->DW:Z

    if-eqz v1, :cond_85

    const-wide v2, -0xbb8559849f8c6bdL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_85
    goto :goto_87

    :goto_86
    throw v0

    :goto_87
    goto :goto_86
.end method

.method public j6(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/yb;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x9fee197a9138e0bL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/yb;->v5:[I

    array-length v1, v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_33

    const v2, 0x7fffffff

    and-int/2addr v2, p1

    rem-int/2addr v2, v1

    :cond_1e
    aget v3, v0, v2

    if-ne v3, p1, :cond_2a

    :try_start_22
    iget-object v4, p0, Labcd/yb;->VH:[I

    aget v4, v4, v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_33

    if-ne v4, p2, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    if-lt v2, v1, :cond_30

    const/4 v2, 0x0

    :cond_30
    if-nez v3, :cond_1e

    return v4

    :catchall_33
    move-exception v0

    sget-boolean v1, Labcd/yb;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x9fee197a9138e0bL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v0

    :goto_4e
    goto :goto_4d
.end method
