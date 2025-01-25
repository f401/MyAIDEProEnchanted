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
    .registers 3

    const-class v0, Lcom/aide/ui/scm/b$b;

    const-wide v1, 0x3c169f5fa9e8214L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x109a1ebae3b97460L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x575585eb09bd09cfL  # -8.601188793368562E-113

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/aide/ui/scm/b$b;->FH:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aide/ui/scm/b$b;->Hw:Z

    iput-boolean v1, p0, Lcom/aide/ui/scm/b$b;->v5:Z

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/aide/ui/scm/b$b$b;

    iput-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    iput-boolean v1, p0, Lcom/aide/ui/scm/b$b;->J8:Z

    new-instance v3, Ljava/util/Hashtable;

    array-length v4, p1

    array-length v5, p2

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v4, Lcom/aide/ui/scm/b$b$b;

    invoke-direct {v4, p0, p1, v3}, Lcom/aide/ui/scm/b$b$b;-><init>(Lcom/aide/ui/scm/b$b;[Ljava/lang/Object;Ljava/util/Hashtable;)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_36

    aput-object v4, v2, v1

    :try_start_2e
    new-instance v1, Lcom/aide/ui/scm/b$b$b;

    invoke-direct {v1, p0, p2, v3}, Lcom/aide/ui/scm/b$b$b;-><init>(Lcom/aide/ui/scm/b$b;[Ljava/lang/Object;Ljava/util/Hashtable;)V

    aput-object v1, v2, v0
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x575585eb09bd09cfL  # -8.601188793368562E-113

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method synthetic constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;Lcom/aide/ui/scm/a;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x1280691c26b0068L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/b$b;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x1280691c26b0068L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private DW(IIII)I
    .registers 34
    .annotation runtime Labcd/su;
        method = 0x25915a517acceb25L
    .end annotation

    move-object/from16 v9, p0

    move/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    :try_start_a
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_2c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x19dee0aa1d841e11L

    move-object/from16 v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    iget-object v0, v9, Lcom/aide/ui/scm/b$b;->gn:[I

    iget-object v1, v9, Lcom/aide/ui/scm/b$b;->u7:[I

    iget-object v2, v9, Lcom/aide/ui/scm/b$b;->Zo:[I

    iget-object v3, v9, Lcom/aide/ui/scm/b$b;->VH:[I

    sub-int v4, v11, v10

    sub-int v5, v12, v8

    sub-int v6, v11, v8

    sub-int v7, v12, v10

    sub-int v13, v6, v7

    const/4 v14, 0x1

    and-int/2addr v13, v14

    if-eqz v13, :cond_44

    const/4 v13, 0x1

    goto :goto_45

    :cond_44
    const/4 v13, 0x0

    :goto_45
    iget v15, v9, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v15, v6

    aput v11, v0, v15

    iget v15, v9, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v15, v7

    aput v12, v1, v15

    move v15, v6

    move/from16 v16, v15

    move/from16 v17, v7

    move/from16 v18, v17

    const/16 v19, 0x1

    :goto_58
    const/16 v20, -0x1

    if-le v15, v4, :cond_68

    iget v14, v9, Lcom/aide/ui/scm/b$b;->tp:I
    :try_end_5e
    .catchall {:try_start_a .. :try_end_5e} :catchall_2f6

    add-int/lit8 v15, v15, -0x1

    add-int/2addr v14, v15

    const/16 v21, 0x1

    add-int/lit8 v14, v14, -0x1

    aput v20, v0, v14

    goto :goto_6a

    :cond_68
    add-int/lit8 v15, v15, 0x1

    :goto_6a
    move/from16 v14, v16

    if-ge v14, v5, :cond_7c

    move/from16 v16, v7

    :try_start_70
    iget v7, v9, Lcom/aide/ui/scm/b$b;->tp:I
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_2f6

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v7, v14

    const/16 v21, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v20, v0, v7

    goto :goto_81

    :cond_7c
    move/from16 v16, v7

    add-int/lit8 v7, v14, -0x1

    move v14, v7

    :goto_81
    move/from16 v23, v6

    move v7, v14

    const/16 v22, 0x0

    :goto_86
    if-lt v7, v15, :cond_fb

    :try_start_88
    iget v6, v9, Lcom/aide/ui/scm/b$b;->tp:I

    add-int v24, v6, v7

    const/16 v21, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v25, v14

    aget v14, v0, v24

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    aget v6, v0, v6
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_f4

    if-lt v14, v6, :cond_9d

    add-int/lit8 v6, v14, 0x1

    :cond_9d
    sub-int v14, v6, v7

    move/from16 v24, v15

    move v15, v6

    :goto_a2
    if-ge v15, v12, :cond_b5

    if-ge v14, v10, :cond_b5

    aget v10, v2, v15

    aget v12, v3, v14

    if-ne v10, v12, :cond_b5

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v10, p2

    move/from16 v12, p4

    goto :goto_a2

    :cond_b5
    sub-int v6, v15, v6

    const/16 v10, 0x14

    if-le v6, v10, :cond_bd

    const/16 v22, 0x1

    :cond_bd
    :try_start_bd
    iget v6, v9, Lcom/aide/ui/scm/b$b;->tp:I

    add-int v10, v6, v7

    aput v15, v0, v10

    move/from16 v10, v17

    move/from16 v12, v18

    if-eqz v13, :cond_e1

    if-gt v10, v7, :cond_e1

    if-gt v7, v12, :cond_e1

    iget v14, v9, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v14, v7

    aget v14, v1, v14

    add-int/2addr v6, v7

    aget v6, v0, v6

    if-gt v14, v6, :cond_e1

    move/from16 v14, v19

    mul-int/lit8 v19, v14, 0x2

    const/4 v0, 0x1

    add-int/lit8 v0, v19, -0x1

    iput v0, v9, Lcom/aide/ui/scm/b$b;->J0:I

    return v7

    :cond_e1
    move/from16 v14, v19

    add-int/lit8 v7, v7, -0x2

    move/from16 v17, v10

    move/from16 v18, v12

    move/from16 v19, v14

    move/from16 v15, v24

    move/from16 v14, v25

    move/from16 v10, p2

    move/from16 v12, p4

    goto :goto_86

    :catchall_f4
    move-exception v0

    move/from16 v7, p2

    move/from16 v12, p4

    goto/16 :goto_2f8

    :cond_fb
    move/from16 v25, v14

    move/from16 v24, v15

    move/from16 v10, v17

    move/from16 v12, v18

    move/from16 v14, v19

    const v6, 0x7fffffff

    if-le v10, v4, :cond_115

    iget v7, v9, Lcom/aide/ui/scm/b$b;->EQ:I
    :try_end_10c
    .catchall {:try_start_bd .. :try_end_10c} :catchall_f4

    add-int/lit8 v17, v10, -0x1

    add-int v7, v7, v17

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    aput v6, v1, v7

    goto :goto_117

    :cond_115
    add-int/lit8 v17, v10, 0x1

    :goto_117
    move/from16 v7, v17

    if-ge v12, v5, :cond_126

    :try_start_11b
    iget v10, v9, Lcom/aide/ui/scm/b$b;->EQ:I
    :try_end_11d
    .catchall {:try_start_11b .. :try_end_11d} :catchall_f4

    add-int/lit8 v18, v12, 0x1

    add-int v10, v10, v18

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aput v6, v1, v10

    goto :goto_128

    :cond_126
    add-int/lit8 v18, v12, -0x1

    :goto_128
    move/from16 v6, v18

    :goto_12a
    if-lt v6, v7, :cond_190

    :try_start_12c
    iget v10, v9, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int v12, v10, v6

    const/4 v15, 0x1

    sub-int/2addr v12, v15

    aget v12, v1, v12

    add-int/2addr v10, v6

    add-int/2addr v10, v15

    aget v10, v1, v10
    :try_end_138
    .catchall {:try_start_12c .. :try_end_138} :catchall_f4

    if-ge v12, v10, :cond_13b

    goto :goto_13d

    :cond_13b
    add-int/lit8 v12, v10, -0x1

    :goto_13d
    sub-int v10, v12, v6

    move v15, v12

    :goto_140
    if-le v15, v11, :cond_15b

    if-le v10, v8, :cond_15b

    add-int/lit8 v17, v15, -0x1

    move/from16 v19, v4

    aget v4, v2, v17

    add-int/lit8 v17, v10, -0x1

    move-object/from16 v26, v2

    aget v2, v3, v17

    if-ne v4, v2, :cond_15f

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v10, v10, -0x1

    move/from16 v4, v19

    move-object/from16 v2, v26

    goto :goto_140

    :cond_15b
    move-object/from16 v26, v2

    move/from16 v19, v4

    :cond_15f
    sub-int/2addr v12, v15

    const/16 v2, 0x14

    if-le v12, v2, :cond_166

    const/16 v22, 0x1

    :cond_166
    :try_start_166
    iget v2, v9, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int v4, v2, v6

    aput v15, v1, v4

    move/from16 v15, v24

    move/from16 v4, v25

    if-nez v13, :cond_185

    if-gt v15, v6, :cond_185

    if-gt v6, v4, :cond_185

    add-int/2addr v2, v6

    aget v2, v1, v2

    iget v10, v9, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v10, v6

    aget v10, v0, v10

    if-gt v2, v10, :cond_185

    mul-int/lit8 v0, v14, 0x2

    iput v0, v9, Lcom/aide/ui/scm/b$b;->J0:I

    return v6

    :cond_185
    add-int/lit8 v6, v6, -0x2

    move/from16 v25, v4

    move/from16 v24, v15

    move/from16 v4, v19

    move-object/from16 v2, v26

    goto :goto_12a

    :cond_190
    move-object/from16 v26, v2

    move/from16 v19, v4

    move/from16 v15, v24

    move/from16 v4, v25

    const/16 v2, 0xc8

    if-le v14, v2, :cond_2cd

    if-eqz v22, :cond_2cd

    iget-boolean v2, v9, Lcom/aide/ui/scm/b$b;->Hw:Z

    if-eqz v2, :cond_2cd

    move v2, v4

    const/4 v6, 0x0

    :goto_1a4
    if-lt v2, v15, :cond_219

    sub-int v10, v2, v23

    iget v12, v9, Lcom/aide/ui/scm/b$b;->tp:I

    add-int v17, v12, v2

    aget v17, v0, v17

    move-object/from16 v22, v3

    if-lez v10, :cond_1b4

    move v3, v10

    goto :goto_1b5

    :cond_1b4
    neg-int v3, v10

    :goto_1b5
    sub-int v17, v17, v11

    mul-int/lit8 v17, v17, 0x2

    move/from16 v25, v4

    sub-int v4, v17, v10

    add-int/2addr v3, v14

    mul-int/lit8 v3, v3, 0xc

    if-le v4, v3, :cond_20e

    add-int v3, v12, v2

    aget v3, v0, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v10

    if-le v3, v6, :cond_20e

    add-int v3, v12, v2

    aget v3, v0, v3

    sub-int/2addr v3, v11

    const/16 v4, 0x14

    if-le v3, v4, :cond_20e

    add-int v3, v12, v2

    aget v3, v0, v3

    sub-int/2addr v3, v2

    sub-int/2addr v3, v8

    if-le v3, v4, :cond_20e

    add-int/2addr v12, v2

    aget v3, v0, v12

    const/4 v12, 0x1

    :goto_1e0
    if-gt v12, v4, :cond_1fc

    iget-object v4, v9, Lcom/aide/ui/scm/b$b;->Zo:[I

    sub-int v17, v3, v12

    aget v4, v4, v17

    move/from16 v17, v5

    iget-object v5, v9, Lcom/aide/ui/scm/b$b;->VH:[I

    sub-int v24, v3, v2

    sub-int v24, v24, v12

    aget v5, v5, v24

    if-eq v4, v5, :cond_1f5

    goto :goto_1fe

    :cond_1f5
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v17

    const/16 v4, 0x14

    goto :goto_1e0

    :cond_1fc
    move/from16 v17, v5

    :goto_1fe
    const/16 v3, 0x15

    if-ne v12, v3, :cond_210

    iget v3, v9, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v3, v2

    aget v3, v0, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v6, v3, v10

    move/from16 v20, v2

    goto :goto_210

    :cond_20e
    move/from16 v17, v5

    :cond_210
    :goto_210
    add-int/lit8 v2, v2, -0x2

    move/from16 v5, v17

    move-object/from16 v3, v22

    move/from16 v4, v25

    goto :goto_1a4

    :cond_219
    move-object/from16 v22, v3

    move/from16 v25, v4

    move/from16 v17, v5

    if-lez v6, :cond_229

    mul-int/lit8 v19, v14, 0x2

    const/4 v0, 0x1

    add-int/lit8 v0, v19, -0x1

    iput v0, v9, Lcom/aide/ui/scm/b$b;->J0:I

    return v20

    :cond_229
    move/from16 v2, v18

    const/4 v3, 0x0

    :goto_22c
    if-lt v2, v7, :cond_2b7

    sub-int v4, v2, v16

    iget v5, v9, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int v6, v5, v2

    aget v6, v1, v6
    :try_end_236
    .catchall {:try_start_166 .. :try_end_236} :catchall_f4

    if-lez v4, :cond_23c

    move/from16 v12, p4

    move v10, v4

    goto :goto_23f

    :cond_23c
    neg-int v10, v4

    move/from16 v12, p4

    :goto_23f
    sub-int v6, v12, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    add-int/2addr v10, v14

    mul-int/lit8 v10, v10, 0xc

    if-le v6, v10, :cond_2a7

    add-int v6, v5, v2

    :try_start_24b
    aget v6, v1, v6

    sub-int v6, v12, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    if-le v6, v3, :cond_2a7

    add-int v6, v5, v2

    aget v6, v1, v6

    sub-int v6, v12, v6

    const/16 v10, 0x14

    if-le v6, v10, :cond_2a7

    add-int v6, v5, v2

    aget v6, v1, v6
    :try_end_262
    .catchall {:try_start_24b .. :try_end_262} :catchall_2a3

    sub-int/2addr v6, v2

    move/from16 v24, v7

    move/from16 v7, p2

    sub-int v6, v7, v6

    if-le v6, v10, :cond_29e

    add-int/2addr v5, v2

    :try_start_26c
    aget v5, v1, v5

    const/4 v6, 0x0

    :goto_26f
    if-ge v6, v10, :cond_28b

    iget-object v10, v9, Lcom/aide/ui/scm/b$b;->Zo:[I

    add-int v27, v5, v6

    aget v10, v10, v27

    move-object/from16 v27, v0

    iget-object v0, v9, Lcom/aide/ui/scm/b$b;->VH:[I

    sub-int v28, v5, v2

    add-int v28, v28, v6

    aget v0, v0, v28

    if-eq v10, v0, :cond_284

    goto :goto_28d

    :cond_284
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v27

    const/16 v10, 0x14

    goto :goto_26f

    :cond_28b
    move-object/from16 v27, v0

    :goto_28d
    const/16 v0, 0x14

    if-ne v6, v0, :cond_2af

    iget v3, v9, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v3, v2

    aget v3, v1, v3

    sub-int v3, v12, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    move/from16 v20, v2

    goto :goto_2af

    :cond_29e
    move-object/from16 v27, v0

    const/16 v0, 0x14

    goto :goto_2af

    :catchall_2a3
    move-exception v0

    move/from16 v7, p2

    goto :goto_2f8

    :cond_2a7
    move-object/from16 v27, v0

    move/from16 v24, v7

    const/16 v0, 0x14

    move/from16 v7, p2

    :cond_2af
    :goto_2af
    add-int/lit8 v2, v2, -0x2

    move/from16 v7, v24

    move-object/from16 v0, v27

    goto/16 :goto_22c

    :cond_2b7
    move/from16 v12, p4

    move-object/from16 v27, v0

    move/from16 v24, v7

    move/from16 v7, p2

    if-lez v3, :cond_2cb

    mul-int/lit8 v19, v14, 0x2

    const/4 v0, 0x1

    add-int/lit8 v0, v19, -0x1

    iput v0, v9, Lcom/aide/ui/scm/b$b;->J0:I
    :try_end_2c8
    .catchall {:try_start_26c .. :try_end_2c8} :catchall_2c9

    return v20

    :catchall_2c9
    move-exception v0

    goto :goto_2f8

    :cond_2cb
    const/4 v0, 0x1

    goto :goto_2dc

    :cond_2cd
    move/from16 v12, p4

    move-object/from16 v27, v0

    move-object/from16 v22, v3

    move/from16 v25, v4

    move/from16 v17, v5

    move/from16 v24, v7

    const/4 v0, 0x1

    move/from16 v7, p2

    :goto_2dc
    add-int/lit8 v2, v14, 0x1

    move v10, v7

    move/from16 v7, v16

    move/from16 v5, v17

    move/from16 v4, v19

    move-object/from16 v3, v22

    move/from16 v6, v23

    move/from16 v17, v24

    move/from16 v16, v25

    move-object/from16 v0, v27

    const/4 v14, 0x1

    move/from16 v19, v2

    move-object/from16 v2, v26

    goto/16 :goto_58

    :catchall_2f6
    move-exception v0

    move v7, v10

    :goto_2f8
    sget-boolean v1, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v1, :cond_31b

    const-wide v2, 0x19dee0aa1d841e11L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v12}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31b
    goto :goto_31d

    :goto_31c
    throw v0

    :goto_31d
    goto :goto_31c
.end method

.method static synthetic DW(Lcom/aide/ui/scm/b$b;)I
    .registers 1

    iget p0, p0, Lcom/aide/ui/scm/b$b;->FH:I

    return p0
.end method

.method private DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xa13748b562e33afL
    .end annotation

    const-wide v0, 0x722b9e94f75f5dadL  # 9.20834807723168E241

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Lcom/aide/ui/scm/b$b$b;->j6(Lcom/aide/ui/scm/b$b$b;)V

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v4, v2, v5

    aget-object v2, v2, v3

    invoke-virtual {v4, v2}, Lcom/aide/ui/scm/b$b$b;->j6(Lcom/aide/ui/scm/b$b$b;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
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

    const-wide v0, 0x18c1e7eba9ddc17bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/scm/b$b;->J8:Z

    if-eqz v2, :cond_11

    return-void

    :cond_11
    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Lcom/aide/ui/scm/b$b$b;->DW(Lcom/aide/ui/scm/b$b$b;)V

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v4, v2, v5

    aget-object v2, v2, v3

    invoke-virtual {v4, v2}, Lcom/aide/ui/scm/b$b$b;->DW(Lcom/aide/ui/scm/b$b$b;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method private j6()Lcom/aide/ui/scm/b$b$a;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x169881dc90240fa1L
    .end annotation

    const-wide v0, 0x5f4ae6b0e1f728bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/scm/b$b;->DW()V

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/aide/ui/scm/b$b$b;->v5:[I

    iput-object v2, p0, Lcom/aide/ui/scm/b$b;->Zo:[I

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/aide/ui/scm/b$b$b;->v5:[I

    iput-object v2, p0, Lcom/aide/ui/scm/b$b;->VH:[I

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/aide/ui/scm/b$b$b;->VH:I

    iget-object v5, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/aide/ui/scm/b$b$b;->VH:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x3

    new-array v5, v2, [I

    iput-object v5, p0, Lcom/aide/ui/scm/b$b;->gn:[I

    iget-object v5, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/aide/ui/scm/b$b$b;->VH:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/aide/ui/scm/b$b;->tp:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/aide/ui/scm/b$b;->u7:[I

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/aide/ui/scm/b$b$b;->VH:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/aide/ui/scm/b$b;->EQ:I

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/aide/ui/scm/b$b$b;->VH:I

    iget-object v5, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/aide/ui/scm/b$b$b;->VH:I

    invoke-direct {p0, v3, v2, v3, v5}, Lcom/aide/ui/scm/b$b;->j6(IIII)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/scm/b$b;->gn:[I

    iput-object v2, p0, Lcom/aide/ui/scm/b$b;->u7:[I

    invoke-direct {p0}, Lcom/aide/ui/scm/b$b;->FH()V

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget-object v5, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v3, v5, v3

    iget v3, v3, Lcom/aide/ui/scm/b$b$b;->FH:I

    iget-object v5, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget-object v6, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v4, v6, v4

    iget v4, v4, Lcom/aide/ui/scm/b$b$b;->FH:I

    invoke-direct {p0, v2, v3, v5, v4}, Lcom/aide/ui/scm/b$b;->j6([ZI[ZI)Lcom/aide/ui/scm/b$b$a;

    move-result-object v0
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_7e

    return-object v0

    :catchall_7e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v3, :cond_86

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_86
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/scm/b$b;)Lcom/aide/ui/scm/b$b$a;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/scm/b$b;->j6()Lcom/aide/ui/scm/b$b$a;

    move-result-object p0

    return-object p0
.end method

.method private j6([ZI[ZI)Lcom/aide/ui/scm/b$b$a;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x144d74d16fede7b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xc0f7cadfed0d05cL  # -2.95570851513299E250

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_4f

    :cond_19
    const/4 v0, 0x0

    move v1, p4

    move-object v6, v0

    move v0, p2

    :goto_1d
    if-gez v0, :cond_23

    if-ltz v1, :cond_22

    goto :goto_23

    :cond_22
    return-object v6

    :cond_23
    :goto_23
    aget-boolean v2, p1, v0

    if-nez v2, :cond_2b

    aget-boolean v2, p3, v1

    if-eqz v2, :cond_4a

    :cond_2b
    move v7, v0

    :goto_2c
    aget-boolean v2, p1, v7

    if-eqz v2, :cond_33

    add-int/lit8 v7, v7, -0x1

    goto :goto_2c

    :cond_33
    move v8, v1

    :goto_34
    aget-boolean v2, p3, v8

    if-eqz v2, :cond_3b

    add-int/lit8 v8, v8, -0x1

    goto :goto_34

    :cond_3b
    :try_start_3b
    new-instance v9, Lcom/aide/ui/scm/b$b$a;

    sub-int v4, v0, v7

    sub-int v5, v1, v8

    move-object v1, v9

    move v2, v7

    move v3, v8

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/scm/b$b$a;-><init>(IIIILcom/aide/ui/scm/b$b$a;)V
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_4f

    move v0, v7

    move v1, v8

    move-object v6, v9

    :cond_4a
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :catchall_4f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v1, :cond_6a

    const-wide v2, -0xc0f7cadfed0d05cL  # -2.95570851513299E250

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6a
    goto :goto_6c

    :goto_6b
    throw v0

    :goto_6c
    goto :goto_6b
.end method

.method private j6(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x6990a6572e14428L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x38da26bc5925e20L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    :goto_21
    if-ge p1, p2, :cond_34

    if-ge p3, p4, :cond_34

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->Zo:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->VH:[I

    aget v1, v1, p3

    if-ne v0, v1, :cond_34

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_21

    :cond_34
    :goto_34
    if-le p2, p1, :cond_4b

    if-le p4, p3, :cond_4b

    iget-object v0, p0, Lcom/aide/ui/scm/b$b;->Zo:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->VH:[I

    add-int/lit8 v2, p4, -0x1

    aget v1, v1, v2

    if-ne v0, v1, :cond_4b

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_34

    :cond_4b
    const/4 v0, 0x1

    if-ne p1, p2, :cond_64

    :goto_4e
    if-ge p3, p4, :cond_9b

    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget-object v2, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/aide/ui/scm/b$b$b;->Zo:[I
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_a4

    aget v2, v2, p3

    add-int/2addr v2, v0

    aput-boolean v0, v1, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_4e

    :cond_64
    if-ne p3, p4, :cond_7d

    :goto_66
    if-ge p1, p2, :cond_9b

    :try_start_68
    iget-object v1, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget-object v3, p0, Lcom/aide/ui/scm/b$b;->we:[Lcom/aide/ui/scm/b$b$b;

    aget-object v2, v3, v2

    iget-object v2, v2, Lcom/aide/ui/scm/b$b$b;->Zo:[I
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_a4

    aget v2, v2, p1

    add-int/2addr v2, v0

    aput-boolean v0, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_66

    :cond_7d
    :try_start_7d
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/aide/ui/scm/b$b;->DW(IIII)I

    move-result v1

    iget v2, p0, Lcom/aide/ui/scm/b$b;->J0:I

    iget-object v3, p0, Lcom/aide/ui/scm/b$b;->gn:[I

    iget v4, p0, Lcom/aide/ui/scm/b$b;->tp:I

    add-int/2addr v4, v1

    aget v3, v3, v4

    iget-object v3, p0, Lcom/aide/ui/scm/b$b;->u7:[I

    iget v4, p0, Lcom/aide/ui/scm/b$b;->EQ:I

    add-int/2addr v4, v1

    aget v3, v3, v4

    if-eq v2, v0, :cond_9c

    sub-int v0, v3, v1

    invoke-direct {p0, p1, v3, p3, v0}, Lcom/aide/ui/scm/b$b;->j6(IIII)V

    invoke-direct {p0, v3, p2, v0, p4}, Lcom/aide/ui/scm/b$b;->j6(IIII)V

    :cond_9b
    return-void

    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty subsequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a4
    .catchall {:try_start_7d .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception v0

    move-object v8, v0

    sget-boolean v0, Lcom/aide/ui/scm/b$b;->DW:Z

    if-eqz v0, :cond_c8

    const-wide v1, -0x38da26bc5925e20L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v8

    move-object v3, p0

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c8
    goto :goto_ca

    :goto_c9
    throw v8

    :goto_ca
    goto :goto_c9
.end method
