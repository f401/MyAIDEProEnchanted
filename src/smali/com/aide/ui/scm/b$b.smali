.class Lcom/aide/ui/scm/b$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/scm/b$b$a;,
        Lcom/aide/ui/scm/b$b$b;
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
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0xc0c7a955a567d6dL
    .end annotation
.end field

.field private FH:I
    .annotation runtime Labcd/ru;
        field = 0x39c6e4dbac89ca10L
    .end annotation
.end field

.field public Hw:Z
    .annotation runtime Labcd/ru;
        field = 0x15a40670335e8ed7L
    .end annotation
.end field

.field private J0:I
    .annotation runtime Labcd/ru;
        field = 0x7bdd2624eeed1d0L
    .end annotation
.end field

.field private J8:Z
    .annotation runtime Labcd/ru;
        field = -0x29a07574e4cef0b8L
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x8244e9a47549cb8L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x81f906a9544989fL
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = 0x6a5d41bbee2c6d4L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x2e0cc82a515ba535L
    .end annotation
.end field

.field private u7:[I
    .annotation runtime Labcd/ru;
        field = 0x461ba3878245b64L
    .end annotation
.end field

.field public v5:Z
    .annotation runtime Labcd/ru;
        field = -0x6763e5e66582800L
    .end annotation
.end field

.field private final we:[Lcom/aide/ui/scm/b$b$b;
    .annotation runtime Labcd/ru;
        field = 0x23be3fd0fa11dd1fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x3c169f5fa9e8214L

    const-class v0, Lcom/aide/ui/scm/b$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x109a1ebae3b97460L
    .end annotation

    const-wide v2, -0x575585eb09bd09cfL    # -8.601188793368562E-113

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x575585eb09bd09cfL    # -8.601188793368562E-113

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/aide/ui/scm/b$b;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/scm/b$b;->Hw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/scm/b$b;->v5:Z

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aide/ui/scm/b$b$b;

    iput-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/scm/b$b;->J8:Z

    new-instance v0, Ljava/util/Hashtable;

    array-length v1, p1

    array-length v5, p2

    add-int/2addr v1, v5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    new-instance v5, Lcom/aide/ui/scm/b$b$b;

    invoke-direct {v5, p0, p1, v0}, Lcom/aide/ui/scm/b$b$b;-><init>(Lcom/aide/ui/scm/b$b;[Ljava/lang/Object;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aput-object v5, v1, v6

    :try_start_1
    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v5, 0x1

    new-instance v6, Lcom/aide/ui/scm/b$b$b;

    invoke-direct {v6, p0, p2, v0}, Lcom/aide/ui/scm/b$b$b;-><init>(Lcom/aide/ui/scm/b$b;[Ljava/lang/Object;Ljava/util/Hashtable;)V

    aput-object v6, v1, v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method synthetic constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;Lcom/aide/ui/scm/a;)V
    .registers 14

    const-wide v8, 0x1280691c26b0068L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1280691c26b0068L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/b$b;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(IIII)I
    .registers 30
    .annotation runtime Labcd/su;
        method = 0x25915a517acceb25L
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x19dee0aa1d841e11L

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aide/ui/scm/b$b;->gn:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aide/ui/scm/b$b;->u7:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aide/ui/scm/b$b;->Zo:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aide/ui/scm/b$b;->VH:[I

    move-object/from16 v20, v0

    sub-int v21, p3, p2

    sub-int v7, p4, p1

    sub-int v13, p3, p1

    sub-int v15, p4, p2

    sub-int v2, v13, v15

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move/from16 v16, v2

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v2, v13

    aput p3, v17, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v2, v15

    aput p4, v18, v2

    const/4 v2, 0x1

    move v12, v13

    move v14, v2

    move v10, v15

    move v11, v15

    move v5, v13

    :goto_1
    const/4 v9, -0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aide/ui/scm/b$b;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v2, v12, -0x1

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    aput v4, v17, v3

    move v12, v2

    :goto_2
    if-ge v5, v7, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aide/ui/scm/b$b;->tp:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, -0x1

    aput v4, v17, v3

    :goto_3
    const/4 v6, 0x0

    move v5, v2

    :goto_4
    if-lt v5, v12, :cond_8

    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    aget v4, v17, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    aget v3, v17, v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-lt v4, v3, :cond_1

    add-int/lit8 v3, v4, 0x1

    :cond_1
    sub-int v4, v3, v5

    move v8, v3

    :goto_5
    move/from16 v0, p4

    if-ge v8, v0, :cond_5

    move/from16 v0, p2

    if-ge v4, v0, :cond_5

    aget v22, v19, v8

    aget v23, v20, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    move/from16 v16, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v5, -0x1

    goto :goto_3

    :cond_5
    sub-int v3, v8, v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_6

    const/4 v6, 0x1

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v3, v5

    aput v8, v17, v3

    if-eqz v16, :cond_7

    if-gt v11, v5, :cond_7

    if-gt v5, v10, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v3, v5

    aget v3, v18, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v4, v5

    aget v4, v17, v4

    if-gt v3, v4, :cond_7

    mul-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/aide/ui/scm/b$b;->J0:I

    :goto_6
    return v5

    :cond_7
    add-int/lit8 v5, v5, -0x2

    goto :goto_4

    :cond_8
    move/from16 v0, v21

    if-le v11, v0, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aide/ui/scm/b$b;->EQ:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v8, v11, -0x1

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x1

    const v4, 0x7fffffff

    aput v4, v18, v3

    :goto_7
    if-ge v10, v7, :cond_a

    :try_start_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aide/ui/scm/b$b;->EQ:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v3, v10, 0x1

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    const v5, 0x7fffffff

    aput v5, v18, v4

    :goto_8
    move v5, v3

    :goto_9
    if-lt v5, v8, :cond_f

    :try_start_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aget v4, v18, v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x1

    aget v10, v18, v10
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    if-ge v4, v10, :cond_b

    :goto_a
    sub-int v10, v4, v5

    move v11, v4

    :goto_b
    move/from16 v0, p3

    if-le v11, v0, :cond_c

    move/from16 v0, p1

    if-le v10, v0, :cond_c

    add-int/lit8 v22, v11, -0x1

    aget v22, v19, v22

    add-int/lit8 v23, v10, -0x1

    aget v23, v20, v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v8, v11, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v10, -0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v4, v10, -0x1

    goto :goto_a

    :cond_c
    sub-int/2addr v4, v11

    const/16 v10, 0x14

    if-le v4, v10, :cond_1c

    const/4 v4, 0x1

    :goto_c
    :try_start_6
    move-object/from16 v0, p0

    iget v6, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v6, v5

    aput v11, v18, v6

    if-nez v16, :cond_e

    if-gt v12, v5, :cond_e

    if-gt v5, v2, :cond_e

    move-object/from16 v0, p0

    iget v6, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v6, v5

    aget v6, v18, v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v10, v5

    aget v10, v17, v10

    if-gt v6, v10, :cond_e

    mul-int/lit8 v2, v14, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/aide/ui/scm/b$b;->J0:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v3

    :goto_d
    sget-boolean v2, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v2, :cond_d

    const-wide v4, 0x19dee0aa1d841e11L

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v6, p0

    invoke-static/range {v3 .. v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    throw v3

    :cond_e
    add-int/lit8 v5, v5, -0x2

    move v6, v4

    goto/16 :goto_9

    :cond_f
    const/16 v4, 0xc8

    if-le v14, v4, :cond_1b

    if-eqz v6, :cond_1b

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/aide/ui/scm/b$b;->Hw:Z

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    move v6, v2

    move v5, v9

    :goto_e
    if-lt v6, v12, :cond_14

    sub-int v10, v6, v13

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v9, v6

    aget v11, v17, v9

    if-lez v10, :cond_12

    move v9, v10

    :goto_f
    sub-int v11, v11, p3

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v10

    add-int/2addr v9, v14

    mul-int/lit8 v9, v9, 0xc

    if-le v11, v9, :cond_11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v9, v6

    aget v9, v17, v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v10

    if-le v9, v4, :cond_11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v9, v6

    aget v9, v17, v9

    sub-int v9, v9, p3

    const/16 v11, 0x14

    if-le v9, v11, :cond_11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v9, v6

    aget v9, v17, v9

    sub-int/2addr v9, v6

    sub-int v9, v9, p1

    const/16 v11, 0x14

    if-le v9, v11, :cond_11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v9, v6

    aget v11, v17, v9

    const/4 v9, 0x1

    :goto_10
    const/16 v22, 0x14

    move/from16 v0, v22

    if-gt v9, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aide/ui/scm/b$b;->Zo:[I

    move-object/from16 v22, v0

    sub-int v23, v11, v9

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aide/ui/scm/b$b;->VH:[I

    move-object/from16 v23, v0

    sub-int v24, v11, v6

    sub-int v24, v24, v9

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    :cond_10
    const/16 v11, 0x15

    if-ne v9, v11, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v4, v6

    aget v4, v17, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v10

    move v5, v6

    :cond_11
    add-int/lit8 v6, v6, -0x2

    goto :goto_e

    :cond_12
    neg-int v9, v10

    goto :goto_f

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_14
    if-lez v4, :cond_15

    mul-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/aide/ui/scm/b$b;->J0:I

    goto/16 :goto_6

    :cond_15
    const/4 v4, 0x0

    move v6, v3

    :goto_11
    if-lt v6, v8, :cond_1a

    sub-int v10, v6, v15

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v9, v6

    aget v11, v18, v9
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    if-lez v10, :cond_18

    move v9, v10

    :goto_12
    sub-int v11, p4, v11

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v10

    add-int/2addr v9, v14

    mul-int/lit8 v9, v9, 0xc

    if-le v11, v9, :cond_17

    :try_start_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v9, v6

    aget v9, v18, v9

    sub-int v9, p4, v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    if-le v9, v4, :cond_17

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v9, v6

    aget v9, v18, v9

    sub-int v9, p4, v9

    const/16 v11, 0x14

    if-le v9, v11, :cond_17

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v9, v6

    aget v9, v18, v9
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    sub-int/2addr v9, v6

    sub-int v9, p2, v9

    const/16 v11, 0x14

    if-le v9, v11, :cond_17

    :try_start_9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v9, v6

    aget v11, v18, v9

    const/4 v9, 0x0

    :goto_13
    const/16 v22, 0x14

    move/from16 v0, v22

    if-ge v9, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aide/ui/scm/b$b;->Zo:[I

    move-object/from16 v22, v0

    add-int v23, v11, v9

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aide/ui/scm/b$b;->VH:[I

    move-object/from16 v23, v0

    sub-int v24, v11, v6

    add-int v24, v24, v9

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_19

    :cond_16
    const/16 v11, 0x14

    if-ne v9, v11, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v4, v6

    aget v4, v18, v4

    sub-int v4, p4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v10

    move v5, v6

    :cond_17
    add-int/lit8 v6, v6, -0x2

    goto :goto_11

    :cond_18
    neg-int v9, v10

    goto :goto_12

    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_1a
    if-lez v4, :cond_1b

    mul-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/aide/ui/scm/b$b;->J0:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v3

    goto/16 :goto_d

    :cond_1b
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v10, v3

    move v11, v8

    move v5, v2

    goto/16 :goto_1

    :catch_2
    move-exception v3

    goto/16 :goto_d

    :catch_3
    move-exception v3

    goto/16 :goto_d

    :cond_1c
    move v4, v6

    goto/16 :goto_c
.end method

.method static synthetic DW(Lcom/aide/ui/scm/b$b;)I
    .registers 2

    iget v0, p0, Lcom/aide/ui/scm/b$b;->FH:I

    return v0
.end method

.method private DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xa13748b562e33afL
    .end annotation

    const-wide v4, 0x722b9e94f75f5dadL    # 9.20834807723168E241

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x722b9e94f75f5dadL    # 9.20834807723168E241

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/b$b$b;->j6(Lcom/aide/ui/scm/b$b$b;)V

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/b$b$b;->j6(Lcom/aide/ui/scm/b$b$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic FH(Lcom/aide/ui/scm/b$b;)I
    .registers 3

    iget v0, p0, Lcom/aide/ui/scm/b$b;->FH:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/aide/ui/scm/b$b;->FH:I

    return v0
.end method

.method private FH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x68ddde6002305f1L
    .end annotation

    const-wide v4, 0x18c1e7eba9ddc17bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18c1e7eba9ddc17bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/scm/b$b;->J8:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/b$b$b;->DW(Lcom/aide/ui/scm/b$b$b;)V

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/b$b$b;->DW(Lcom/aide/ui/scm/b$b$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6()Lcom/aide/ui/scm/b$b$a;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x169881dc90240fa1L
    .end annotation

    const-wide v6, 0x5f4ae6b0e1f728bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5f4ae6b0e1f728bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/scm/b$b;->DW()V

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/aide/ui/scm/b$b$b;->v5:[I

    iput-object v0, p0, Lcom/aide/ui/scm/b$b;->Zo:[I

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/aide/ui/scm/b$b$b;->v5:[I

    iput-object v0, p0, Lcom/aide/ui/scm/b$b;->VH:[I

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/aide/ui/scm/b$b$b;->VH:I

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/aide/ui/scm/b$b$b;->VH:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/aide/ui/scm/b$b;->gn:[I

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/aide/ui/scm/b$b$b;->VH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aide/ui/scm/b$b;->tp:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/ui/scm/b$b;->u7:[I

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/aide/ui/scm/b$b$b;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/ui/scm/b$b;->EQ:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/aide/ui/scm/b$b$b;->VH:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/aide/ui/scm/b$b$b;->VH:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/aide/ui/scm/b$b;->j6(IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/scm/b$b;->gn:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/scm/b$b;->u7:[I

    invoke-direct {p0}, Lcom/aide/ui/scm/b$b;->FH()V

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/aide/ui/scm/b$b$b;->FH:I

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget-object v3, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/aide/ui/scm/b$b$b;->FH:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/aide/ui/scm/b$b;->j6([ZI[ZI)Lcom/aide/ui/scm/b$b$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/scm/b$b;)Lcom/aide/ui/scm/b$b$a;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/scm/b$b;->j6()Lcom/aide/ui/scm/b$b$a;

    move-result-object v0

    return-object v0
.end method

.method private j6([ZI[ZI)Lcom/aide/ui/scm/b$b$a;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x144d74d16fede7b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xc0f7cadfed0d05cL    # -2.95570851513299E250

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v5, 0x0

    move v4, p4

    move v3, p2

    :goto_0
    if-gez v3, :cond_1

    if-ltz v4, :cond_7

    :cond_1
    aget-boolean v0, p1, v3

    if-nez v0, :cond_2

    aget-boolean v0, p3, v4

    if-eqz v0, :cond_5

    :cond_2
    move v1, v3

    :goto_1
    aget-boolean v0, p1, v1

    if-eqz v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_2
    aget-boolean v0, p3, v2

    if-eqz v0, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v0, Lcom/aide/ui/scm/b$b$a;

    sub-int/2addr v3, v1

    sub-int/2addr v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/scm/b$b$a;-><init>(IIIILcom/aide/ui/scm/b$b$a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    move v3, v1

    move v4, v2

    :cond_5
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v0, :cond_6

    const-wide v2, -0xc0f7cadfed0d05cL    # -2.95570851513299E250

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    return-object v5
.end method

.method private j6(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x6990a6572e14428L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x38da26bc5925e20L

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_1

    if-ge p3, p4, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->Zo:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->VH:[I

    aget v1, v1, p3

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p1, :cond_2

    if-le p4, p3, :cond_2

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->Zo:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->VH:[I

    add-int/lit8 v2, p4, -0x1

    aget v1, v1, v2

    if-ne v0, v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_2
    if-ne p1, p2, :cond_3

    :goto_2
    if-ge p3, p4, :cond_5

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/aide/ui/scm/b$b$b;->Zo:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aget v1, v1, p3

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    if-ne p3, p4, :cond_4

    :goto_3
    if-ge p1, p2, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/aide/ui/scm/b$b$b;->Zo:[I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    aget v1, v1, p1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/aide/ui/scm/b$b;->DW(IIII)I

    move-result v0

    iget v1, p0, Lcom/aide/ui/scm/b$b;->J0:I

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->gn:[I

    iget v3, p0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->u7:[I

    iget v3, p0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    sub-int v0, v2, v0

    invoke-direct {p0, p1, v2, p3, v0}, Lcom/aide/ui/scm/b$b;->j6(IIII)V

    invoke-direct {p0, v2, p2, v0, p4}, Lcom/aide/ui/scm/b$b;->j6(IIII)V

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty subsequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v0, :cond_7

    const-wide v2, -0x38da26bc5925e20L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v1
.end method
