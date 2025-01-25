.class public Labcd/he;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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
.field private EQ:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x2ccf33553321f6dfL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Labcd/ne;
    .annotation runtime Labcd/ru;
        field = -0x20afaf118e870c2fL
    .end annotation
.end field

.field private Hw:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x1fc3799f5a6d818L
    .end annotation
.end field

.field private J0:I
    .annotation runtime Labcd/ru;
        field = -0xb6118495acb3427L
    .end annotation
.end field

.field private J8:I
    .annotation runtime Labcd/ru;
        field = -0x1585384a139e45c1L
    .end annotation
.end field

.field private VH:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = 0x18847550e03cec99L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = 0x32a9db9e38eacff1L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2ccdc05849f06e60L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x2cceb7ab904f7448L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2cce3c01ed3ef173L
    .end annotation
.end field

.field private v5:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = 0x151b0a56fcafc35L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private we:Ljava/lang/StringBuilder;
    .annotation runtime Labcd/ru;
        field = -0x292934e1f9013060L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/he;

    const-wide v1, 0x1a3918899125982bL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/ne;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v0, "fail"

    const-string v2, "title"

    const-string v3, "hint"

    :try_start_c
    sget-boolean v4, Labcd/he;->j6:Z

    if-eqz v4, :cond_19

    const-wide v4, -0xb7c697911148d88L

    const/4 v8, 0x0

    invoke-static {v4, v5, v8, v6, v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x7

    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "text"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "textOff"

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const-string v9, "textOn"

    const/4 v12, 0x2

    aput-object v9, v8, v12

    const/4 v9, 0x3

    aput-object v3, v8, v9

    const-string v13, "summary"

    const/4 v14, 0x4

    aput-object v13, v8, v14

    const/4 v13, 0x5

    aput-object v2, v8, v13

    const-string v15, "dialogTitle"

    const/16 v16, 0x6

    aput-object v15, v8, v16

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v1, Labcd/he;->v5:Ljava/util/Set;

    new-instance v4, Ljava/util/HashSet;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const-string v15, "section"

    aput-object v15, v8, v10

    const-string v15, "description"

    aput-object v15, v8, v11

    aput-object v2, v8, v12

    const-string v2, "task"

    aput-object v2, v8, v9

    const-string v2, "designer_task"

    aput-object v2, v8, v14

    aput-object v0, v8, v13

    const-string v2, "success"

    aput-object v2, v8, v16

    aput-object v3, v8, v5

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v1, Labcd/he;->Zo:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    new-array v4, v12, [Ljava/lang/String;

    aput-object v0, v4, v10

    aput-object v3, v4, v11

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Labcd/he;->VH:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Labcd/he;->EQ:Ljava/util/Map;

    iput-object v6, v1, Labcd/he;->Hw:Labcd/La;

    iput-object v7, v1, Labcd/he;->FH:Labcd/ne;
    :try_end_8f
    .catchall {:try_start_c .. :try_end_8f} :catchall_90

    return-void

    :catchall_90
    move-exception v0

    sget-boolean v2, Labcd/he;->DW:Z

    if-eqz v2, :cond_a3

    const-wide v3, -0xb7c697911148d88L

    const/4 v5, 0x0

    move-object v2, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a3
    throw v0
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x26ce0f10bb1cb270L
    .end annotation

    const-wide v0, -0x44d8e45776026bb4L  # -9.557261527761084E-24

    :try_start_5
    sget-boolean v2, Labcd/he;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_52

    :cond_c
    const-string v2, ""

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_51

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    :cond_35
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_4e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catchall {:try_start_f .. :try_end_4e} :catchall_52

    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_51
    return-object v2

    :catchall_52
    move-exception v2

    sget-boolean v3, Labcd/he;->DW:Z

    if-eqz v3, :cond_5a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v2

    :goto_5c
    goto :goto_5b
.end method

.method private DW(Labcd/Sa;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x8fe82446c907aecL
    .end annotation

    const-wide v0, 0x30a47c5f363bd18L

    :try_start_5
    sget-boolean v2, Labcd/he;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/he;->gn:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/he;->u7:Ljava/lang/String;

    iput v4, p0, Labcd/he;->tp:I

    iget-object v2, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/he;->DW(Labcd/Sa;I)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Labcd/he;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method private DW(Labcd/Sa;I)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1ebc22ef1c9e4588L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x96580cbe88a6e9cL

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_23

    invoke-virtual {p1, p2, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Labcd/he;->DW(Labcd/Sa;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v2, 0xcb

    if-ne v0, v2, :cond_1ac

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v0

    iget v2, p0, Labcd/he;->J0:I

    if-lt v0, v2, :cond_1ac

    invoke-virtual {p1, p2}, Labcd/Sa;->QX(I)I

    move-result v0

    iget v2, p0, Labcd/he;->J8:I

    if-gt v0, v2, :cond_1ac

    invoke-direct {p0, p1, p2}, Labcd/he;->Hw(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Labcd/he;->FH(Labcd/Sa;I)Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_1ad

    const-string v3, " "

    const-string v4, "@string/"

    const-string v5, "_"

    if-eqz v2, :cond_86

    :try_start_50
    iput v1, p0, Labcd/he;->tp:I

    invoke-direct {p0, p1, p2}, Labcd/he;->v5(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_83

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_83

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Labcd/he;->u7:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lesson "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/he;->j6(Ljava/lang/String;)V

    goto :goto_86

    :cond_83
    const/4 v2, 0x0

    iput-object v2, p0, Labcd/he;->u7:Ljava/lang/String;

    :cond_86
    :goto_86
    const-string v2, "task"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_b5

    iget v2, p0, Labcd/he;->tp:I

    add-int/2addr v2, v6

    iput v2, p0, Labcd/he;->tp:I

    iget-object v2, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Labcd/he;->VH:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9f

    :cond_b5
    iget-object v2, p0, Labcd/he;->Zo:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    invoke-direct {p0, p1, p2}, Labcd/he;->v5(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Labcd/he;->u7:Ljava/lang/String;

    if-eqz v7, :cond_190

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_190

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Labcd/he;->gn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Labcd/he;->u7:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Labcd/he;->tp:I

    if-lez v8, :cond_f9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Labcd/he;->tp:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_f9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_12b
    const-string v8, "_title"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_13d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v2, v1}, Labcd/he;->j6(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "\'"

    const-string v9, "\\\'"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_161
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "__"

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_161

    :cond_18a
    invoke-direct {p0, p1, p2, v4}, Labcd/he;->j6(Labcd/Sa;ILjava/lang/String;)V

    invoke-direct {p0, v7, v2, v6}, Labcd/he;->j6(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_190
    iget-object v1, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ac

    iget-object v1, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ac
    .catchall {:try_start_50 .. :try_end_1ac} :catchall_1ad

    :cond_1ac
    return-void

    :catchall_1ad
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_1c2

    const-wide v2, 0x96580cbe88a6e9cL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c2
    goto :goto_1c4

    :goto_1c3
    throw v0

    :goto_1c4
    goto :goto_1c3
.end method

.method private FH(Labcd/Sa;I)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb90a9b1412321a1L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x28ceaeac2df12197L  # -1.0411858238600638E112

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-object p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x28ceaeac2df12197L  # -1.0411858238600638E112

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method private Hw(Labcd/Sa;I)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x49013d7d5a79ee4L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3771432c7e11a2b8L  # -3.3470285058524415E41

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-object p1

    :catchall_20
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, -0x3771432c7e11a2b8L  # -3.3470285058524415E41

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method private j6(Labcd/Sa;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x3ae31b8914296713L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_15

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x38f3a073c9e27f61L  # 2.362486117505722E-34

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {p1, p2}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1f
    if-ltz v1, :cond_49

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0xcb

    if-ne v3, v4, :cond_46

    invoke-direct {p0, p1, v2}, Labcd/he;->Hw(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-direct {p0, p1, v2}, Labcd/he;->FH(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-direct {p0, p1, v2}, Labcd/he;->v5(Labcd/Sa;I)Ljava/lang/String;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_4b

    return-object p1

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_49
    const/4 p1, 0x0

    return-object p1

    :catchall_4b
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, 0x38f3a073c9e27f61L  # 2.362486117505722E-34

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x73f1231aac7450c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x6a971e578348708L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_8c

    :cond_c
    const/4 v0, 0x1

    const-string v1, ""

    :goto_f
    :try_start_f
    const-string v2, "!_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\'_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_30

    if-ne v3, v4, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    :cond_30
    if-eq v2, v4, :cond_41

    if-eq v3, v4, :cond_36

    if-le v3, v2, :cond_41

    :cond_36
    const-string v3, "_!"

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    goto :goto_4e

    :cond_41
    const-string v2, "_\'"

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_4e
    if-lt v2, v3, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :goto_5c
    return-object p1

    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "$s"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_89
    .catchall {:try_start_f .. :try_end_89} :catchall_8c

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :catchall_8c
    move-exception v0

    move-object v5, p1

    sget-boolean p1, Labcd/he;->DW:Z

    if-eqz p1, :cond_9d

    const-wide v2, 0x6a971e578348708L

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9d
    goto :goto_9f

    :goto_9e
    throw v0

    :goto_9f
    goto :goto_9e
.end method

.method private j6(Labcd/Sa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x63e04838936e5fL
    .end annotation

    const-wide v0, -0x27f4045d24f9e31L  # -3.423047560447069E296

    :try_start_5
    sget-boolean v2, Labcd/he;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/he;->j6(Labcd/Sa;I)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/he;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method private j6(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1b9b4fbae3184438L
    .end annotation

    const-string v0, "@string/"

    const-string v1, "android"

    :try_start_4
    sget-boolean v2, Labcd/he;->j6:Z

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v3, 0x17adb9e565496fbcL

    invoke-static {v3, v4, p0, p1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1b
    if-ltz v2, :cond_27

    invoke-virtual {p1, p2, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Labcd/he;->j6(Labcd/Sa;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_27
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_9a

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v2

    iget v3, p0, Labcd/he;->J0:I

    if-lt v2, v3, :cond_9a

    invoke-virtual {p1, p2}, Labcd/Sa;->QX(I)I

    move-result v2

    iget v3, p0, Labcd/he;->J8:I

    if-gt v2, v3, :cond_9a

    invoke-direct {p0, p1, p2}, Labcd/he;->Hw(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Labcd/he;->FH(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Labcd/he;->v5:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-direct {p0, p1, p2}, Labcd/he;->v5(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9a

    const-string v4, "key"

    invoke-direct {p0, p1, p2, v1, v4}, Labcd/he;->j6(Labcd/Sa;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_84

    :cond_80
    invoke-direct {p0, v3}, Labcd/he;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/he;->j6(Labcd/Sa;ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v3, v0}, Labcd/he;->j6(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_9a
    .catchall {:try_start_4 .. :try_end_9a} :catchall_9b

    :cond_9a
    return-void

    :catchall_9b
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_b0

    const-wide v2, 0x17adb9e565496fbcL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    goto :goto_b2

    :goto_b1
    throw v0

    :goto_b2
    goto :goto_b1
.end method

.method private j6(Labcd/Sa;ILjava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x3d4dbd8edc50cb0dL
    .end annotation

    const-string v0, "\""

    :try_start_2
    sget-boolean v1, Labcd/he;->j6:Z

    if-eqz v1, :cond_16

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x8f0fdc7e6bf0b4dL

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    iget-object v2, p0, Labcd/he;->Hw:Labcd/La;

    iget-object v3, v2, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v4

    invoke-virtual {p1, v1}, Labcd/Sa;->vy(I)I

    move-result v5

    invoke-virtual {p1, v1}, Labcd/Sa;->BT(I)I

    move-result v6

    invoke-virtual {p1, v1}, Labcd/Sa;->QX(I)I

    move-result v7

    invoke-virtual {p1, v1}, Labcd/Sa;->Ws(I)I

    move-result v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v3 .. v9}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_2 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_64

    const-wide v2, 0x8f0fdc7e6bf0b4dL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v0
.end method

.method private j6(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x596fb16d2474cbb9L
    .end annotation

    const-wide v0, 0x52b2b06a57b3667L  # 9.13509120551951E-284

    :try_start_5
    sget-boolean v2, Labcd/he;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    <!-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -->\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/he;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1bb9789d0fb2fdebL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x37568047e4efbfc5L  # 4.035936345514761E-42

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    <string name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</string>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_3a

    iget-object v1, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_3a
    iget-object v1, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    :goto_40
    return-void

    :catchall_41
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, 0x37568047e4efbfc5L  # 4.035936345514761E-42

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v0
.end method

.method private v5(Labcd/Sa;I)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2f7ff927f928a8bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1770580a1e3ffd1bL  # 8.745781846517717E-196

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_a2

    const-string v2, ""

    const/4 v3, 0x1

    :goto_1e
    :try_start_1e
    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_a1

    invoke-virtual {p1, v0, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->P8(I)I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_45

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Labcd/Sa;->lg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9d

    :cond_45
    invoke-virtual {p1, v4}, Labcd/Sa;->P8(I)I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_5d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Labcd/Sa;->lg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_5d
    invoke-virtual {p1, v4}, Labcd/Sa;->P8(I)I

    move-result v5

    const/16 v6, 0xcd

    if-ne v5, v6, :cond_83

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/he;->FH:Labcd/ne;

    invoke-virtual {v2}, Labcd/ne;->v5()Labcd/pa;

    move-result-object v2

    invoke-virtual {p1, v4}, Labcd/Sa;->P8(I)I

    move-result v4

    invoke-interface {v2, v4}, Labcd/pa;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9c
    .catchall {:try_start_1e .. :try_end_9c} :catchall_a2

    goto :goto_40

    :goto_9d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    :cond_a1
    return-object v2

    :catchall_a2
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_b7

    const-wide v2, 0x1770580a1e3ffd1bL  # 8.745781846517717E-196

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b7
    goto :goto_b9

    :goto_b8
    throw v0

    :goto_b9
    goto :goto_b8
.end method


# virtual methods
.method public j6(Labcd/Da;Labcd/Da;IIII)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    sget-boolean v6, Labcd/he;->j6:Z

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_3f

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v8, v6, v9

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v11, 0x2

    aput-object v10, v6, v11

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v11, 0x3

    aput-object v10, v6, v11

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v11, 0x4

    aput-object v10, v6, v11

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v11, 0x5

    aput-object v10, v6, v11

    const-wide v10, -0xe031fd5bbc90e39L  # -1.2033951074101391E241

    invoke-static {v10, v11, p0, v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3f
    iget-object v6, v0, Labcd/he;->Hw:Labcd/La;

    iget-object v6, v6, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v6}, Labcd/hb;->aM()V

    if-ne v2, v4, :cond_50

    if-ne v3, v5, :cond_50

    iput v9, v0, Labcd/he;->J0:I

    const v2, 0x7fffffff

    goto :goto_5a

    :cond_50
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Labcd/he;->J0:I

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_5a
    iput v2, v0, Labcd/he;->J8:I

    iget-object v2, v0, Labcd/he;->Hw:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    iget-object v3, v0, Labcd/he;->FH:Labcd/ne;

    invoke-virtual {v2, p1, v3}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, v0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v3, "course_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    const-string v3, "_en.xml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-direct {p0, v2}, Labcd/he;->DW(Labcd/Sa;)V

    goto :goto_88

    :cond_85
    invoke-direct {p0, v2}, Labcd/he;->j6(Labcd/Sa;)V

    :goto_88
    iget-object v1, v0, Labcd/he;->Hw:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v1, v2}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v1, v0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_118

    invoke-virtual {p2}, Labcd/Da;->j6()Z

    move-result v1

    if-nez v1, :cond_c1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<resources>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n</resources>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Labcd/he;->Hw:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v2, p2, v1}, Labcd/hb;->j6(Labcd/Da;Ljava/lang/String;)V

    goto :goto_118

    :cond_c1
    invoke-virtual {p2}, Labcd/Da;->we()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x1

    :goto_c6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_104

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "<resources>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_101

    add-int/lit8 v2, v2, 0xb

    add-int/lit8 v6, v2, 0x1

    iget-object v1, v0, Labcd/he;->Hw:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p2

    move v3, v5

    move v4, v6

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_104

    :cond_101
    add-int/lit8 v5, v5, 0x1

    goto :goto_c6

    :cond_104
    :goto_104
    if-nez v7, :cond_118

    iget-object v1, v0, Labcd/he;->Hw:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v2, v0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p2

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    :cond_118
    :goto_118
    iget-object v1, v0, Labcd/he;->Hw:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v1}, Labcd/hb;->XL()V

    return-void
.end method
