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
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/Set",
            "<",
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
            "Ljava/util/Set",
            "<",
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
            "Ljava/util/Set",
            "<",
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
    .registers 4

    const-wide v2, 0x1a3918899125982bL

    const-class v0, Labcd/he;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/ne;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb7c697911148d88L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "text"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "textOff"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "textOn"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hint"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "summary"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "dialogTitle"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Labcd/he;->v5:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "section"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "task"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "designer_task"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "fail"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "success"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "hint"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Labcd/he;->Zo:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "fail"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hint"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Labcd/he;->VH:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/he;->EQ:Ljava/util/Map;

    iput-object p1, p0, Labcd/he;->Hw:Labcd/La;

    iput-object p2, p0, Labcd/he;->FH:Labcd/ne;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0xb7c697911148d88L

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x26ce0f10bb1cb270L
    .end annotation

    const-wide v4, -0x44d8e45776026bb4L    # -9.557261527761084E-24

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x44d8e45776026bb4L    # -9.557261527761084E-24

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-object v0
.end method

.method private DW(Labcd/Sa;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x8fe82446c907aecL
    .end annotation

    const-wide v4, 0x30a47c5f363bd18L

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30a47c5f363bd18L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/he;->gn:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/he;->u7:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Labcd/he;->tp:I

    iget-object v0, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/he;->DW(Labcd/Sa;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Labcd/Sa;I)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1ebc22ef1c9e4588L
    .end annotation

    const-wide v2, 0x96580cbe88a6e9cL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/he;->j6:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x96580cbe88a6e9cL

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Labcd/he;->DW(Labcd/Sa;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_a

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v0

    iget v1, p0, Labcd/he;->J0:I

    if-lt v0, v1, :cond_a

    invoke-virtual {p1, p2}, Labcd/Sa;->QX(I)I

    move-result v0

    iget v1, p0, Labcd/he;->J8:I

    if-gt v0, v1, :cond_a

    invoke-direct {p0, p1, p2}, Labcd/he;->Hw(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Labcd/he;->FH(Labcd/Sa;I)Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Labcd/he;->tp:I

    invoke-direct {p0, p1, p2}, Labcd/he;->v5(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "@string/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    const-string v6, "_"

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "-"

    const-string v6, "_"

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/he;->u7:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lesson "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/he;->j6(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v0, "task"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Labcd/he;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/he;->tp:I

    iget-object v0, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Labcd/he;->VH:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Labcd/he;->EQ:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Labcd/he;->u7:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Labcd/he;->Zo:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Labcd/he;->v5(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Labcd/he;->u7:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "@string/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Labcd/he;->gn:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/he;->u7:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Labcd/he;->tp:I

    if-lez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/he;->tp:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v4, "_title"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x6

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v6}, Labcd/he;->j6(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v7, "\\\'"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@string/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    const-string v9, "__"

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v9, "_"

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_8
    invoke-direct {p0, p1, p2, v1}, Labcd/he;->j6(Labcd/Sa;ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v4, v7, v0}, Labcd/he;->j6(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    iget-object v0, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Labcd/he;->EQ:Ljava/util/Map;

    iget-object v0, p0, Labcd/he;->EQ:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    return-void

    :cond_b
    move-object v4, v0

    goto/16 :goto_3
.end method

.method private FH(Labcd/Sa;I)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb90a9b1412321a1L
    .end annotation

    const-wide v2, -0x28ceaeac2df12197L    # -1.0411858238600638E112

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x28ceaeac2df12197L    # -1.0411858238600638E112

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->aM(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private Hw(Labcd/Sa;I)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x49013d7d5a79ee4L
    .end annotation

    const-wide v2, -0x3771432c7e11a2b8L    # -3.3470285058524415E41

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x3771432c7e11a2b8L    # -3.3470285058524415E41

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->aM(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Labcd/Sa;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x3ae31b8914296713L
    .end annotation

    const-wide v8, 0x38f3a073c9e27f61L    # 2.362486117505722E-34

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x38f3a073c9e27f61L    # 2.362486117505722E-34

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v1, v0}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0xcb

    if-ne v3, v4, :cond_1

    invoke-direct {p0, p1, v2}, Labcd/he;->Hw(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v2}, Labcd/he;->FH(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v2}, Labcd/he;->v5(Labcd/Sa;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-wide v2, 0x6a971e578348708L

    const/4 v7, -0x1

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6a971e578348708L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, ""

    const/4 v1, 0x1

    :goto_0
    :try_start_1
    const-string v4, "!_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "\'_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v7, :cond_1

    if-ne v5, v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    if-eq v4, v7, :cond_3

    if-eq v5, v7, :cond_2

    if-le v5, v4, :cond_3

    :cond_2
    const-string v5, "_!"

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    move v6, v5

    :goto_2
    if-lt v4, v6, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v4, "_\'"

    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v6, v4, 0x2

    move v4, v5

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "$s"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, p1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_5

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method private j6(Labcd/Sa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x63e04838936e5fL
    .end annotation

    const-wide v2, -0x27f4045d24f9e31L    # -3.423047560447069E296

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27f4045d24f9e31L    # -3.423047560447069E296

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/he;->j6(Labcd/Sa;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1b9b4fbae3184438L
    .end annotation

    const-wide v2, 0x17adb9e565496fbcL

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x17adb9e565496fbcL

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/he;->j6(Labcd/Sa;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v0

    iget v1, p0, Labcd/he;->J0:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p1, p2}, Labcd/Sa;->QX(I)I

    move-result v0

    iget v1, p0, Labcd/he;->J8:I

    if-gt v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Labcd/he;->Hw(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Labcd/he;->FH(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Labcd/he;->v5:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "android"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Labcd/he;->v5(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "@string/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android"

    const-string v5, "key"

    invoke-direct {p0, p1, p2, v4, v5}, Labcd/he;->j6(Labcd/Sa;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@string/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Labcd/he;->j6(Labcd/Sa;ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v0, v1, v4}, Labcd/he;->j6(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, v1}, Labcd/he;->DW(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private j6(Labcd/Sa;ILjava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x3d4dbd8edc50cb0dL
    .end annotation

    const-wide v8, 0x8f0fdc7e6bf0b4dL

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x8f0fdc7e6bf0b4dL

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v5

    iget-object v0, p0, Labcd/he;->Hw:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1, v5}, Labcd/Sa;->vy(I)I

    move-result v2

    invoke-virtual {p1, v5}, Labcd/Sa;->BT(I)I

    move-result v3

    invoke-virtual {p1, v5}, Labcd/Sa;->QX(I)I

    move-result v4

    invoke-virtual {p1, v5}, Labcd/Sa;->Ws(I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x596fb16d2474cbb9L
    .end annotation

    const-wide v4, 0x52b2b06a57b3667L    # 9.13509120551951E-284

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x52b2b06a57b3667L    # 9.13509120551951E-284

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    <!-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -->\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/he;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1bb9789d0fb2fdebL
    .end annotation

    const-wide v8, 0x37568047e4efbfc5L    # 4.035936345514761E-42

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x37568047e4efbfc5L    # 4.035936345514761E-42

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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

    if-eqz p3, :cond_1

    iget-object v1, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_2

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private v5(Labcd/Sa;I)Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2f7ff927f928a8bL
    .end annotation

    const-wide v2, 0x1770580a1e3ffd1bL    # 8.745781846517717E-196

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1770580a1e3ffd1bL    # 8.745781846517717E-196

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const-string v0, ""

    :goto_0
    :try_start_1
    invoke-virtual {p1, v4}, Labcd/Sa;->we(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    invoke-virtual {p1, v4, v1}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {p1, v5}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Labcd/Sa;->lg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x14

    if-ne v6, v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Labcd/Sa;->lg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0xcd

    if-ne v6, v7, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v5, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/he;->FH:Labcd/ne;

    invoke-virtual {v0}, Labcd/ne;->v5()Labcd/pa;

    move-result-object v0

    invoke-virtual {p1, v5}, Labcd/Sa;->P8(I)I

    move-result v5

    invoke-interface {v0, v5}, Labcd/pa;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/he;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    return-object v0
.end method


# virtual methods
.method public j6(Labcd/Da;Labcd/Da;IIII)V
    .registers 15

    const/4 v1, 0x0

    const/4 v7, 0x1

    sget-boolean v0, Labcd/he;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0xe031fd5bbc90e39L    # -1.2033951074101391E241

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v7

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v0, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v0, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v0, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v0, v4

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/he;->Hw:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    if-ne p3, p5, :cond_2

    if-ne p4, p6, :cond_2

    iput v7, p0, Labcd/he;->J0:I

    const v0, 0x7fffffff

    iput v0, p0, Labcd/he;->J8:I

    :goto_0
    iget-object v0, p0, Labcd/he;->Hw:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v2, p0, Labcd/he;->FH:Labcd/ne;

    invoke-virtual {v0, p1, v2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "course_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "_en.xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Labcd/he;->DW(Labcd/Sa;)V

    :goto_1
    iget-object v2, p0, Labcd/he;->Hw:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v2, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Labcd/Da;->j6()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<resources>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n</resources>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/he;->Hw:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v1, p2, v0}, Labcd/hb;->j6(Labcd/Da;Ljava/lang/String;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Labcd/he;->Hw:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->XL()V

    return-void

    :cond_2
    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Labcd/he;->J0:I

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Labcd/he;->J8:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Labcd/he;->j6(Labcd/Sa;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Labcd/Da;->we()Ljava/util/List;

    move-result-object v3

    move v2, v7

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "<resources>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    add-int/lit8 v0, v0, 0xb

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Labcd/he;->Hw:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move v4, v2

    move v5, v3

    invoke-interface/range {v0 .. v6}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    move v0, v7

    :goto_4
    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/he;->Hw:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    iget-object v1, p0, Labcd/he;->we:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    invoke-interface/range {v0 .. v6}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4
.end method
