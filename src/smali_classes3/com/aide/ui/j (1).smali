.class public Lcom/aide/ui/j;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/j$a;
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
.field private EQ:Z
    .annotation runtime Labcd/ru;
        field = -0x4e735a94f87afb78L
    .end annotation
.end field

.field private FH:Lcom/aide/ui/AIDEEditor;
    .annotation runtime Labcd/ru;
        field = -0x274f98a8f6b970a8L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x2561225ec1a4a0b0L
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x4259ac859fa57997L
    .end annotation
.end field

.field private Zo:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x319c6842ae06a900L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = -0x7803354e3a2d5b3L
    .end annotation
.end field

.field private tp:Z
    .annotation runtime Labcd/ru;
        field = -0x2dfe8615b7c52869L
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = 0x2195f72046c22f98L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0x11735829c452680L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/j;

    const-wide v1, 0x18aea3fc0f53a649L  # 8.596259399597165E-190

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/AIDEEditor;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x6b62a16b6bba6d00L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/j;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/j;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/j;)Lcom/aide/ui/AIDEEditor;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    return-object p0
.end method

.method private DW(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2f92bc0ff957c420L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x12c8663470476735L  # -1.3017359827014975E218

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->aM()Z

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->j3()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_44

    :cond_40
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_44
    :goto_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4a

    :cond_49
    return-object v0

    :catchall_4a
    move-exception v0

    move-object v6, p2

    sget-boolean p2, Lcom/aide/ui/j;->DW:Z

    if-eqz p2, :cond_5b

    const-wide v2, -0x12c8663470476735L  # -1.3017359827014975E218

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    goto :goto_5d

    :goto_5c
    throw v0

    :goto_5d
    goto :goto_5c
.end method

.method private DW(Z)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xde984ecf0c57becL
    .end annotation

    const-wide v0, -0x161614115e98efb7L  # -1.5873367803612738E202

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/j;->EQ:Z

    if-nez p1, :cond_17

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->cb()V

    :cond_17
    invoke-direct {p0}, Lcom/aide/ui/j;->we()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Labcd/Xj;->Hw(Ljava/lang/String;II)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_43

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method private DW(C)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x14f20936ed401270L
    .end annotation

    const-wide v0, 0xe17f940e26a279L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_18

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private EQ()I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x293c0f1913d69e31L
    .end annotation

    const-wide v0, 0x130f432b382b0e90L  # 7.084923218181834E-217

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/j;->v5:I

    :goto_e
    iget-object v3, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v4, p0, Lcom/aide/ui/j;->Hw:I

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/CodeEditText;->j6(I)I

    move-result v3

    if-lt v3, v2, :cond_29

    iget-object v3, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v4, p0, Lcom/aide/ui/j;->Hw:I

    invoke-virtual {v3, v4, v2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/aide/ui/j;->FH(C)Z

    move-result v3
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    if-eqz v3, :cond_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_29
    return v2

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method

.method static synthetic FH(Lcom/aide/ui/j;)I
    .registers 1

    iget p0, p0, Lcom/aide/ui/j;->Hw:I

    return p0
.end method

.method private FH(C)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x217cd9963bc9455fL
    .end annotation

    const-wide v0, 0x7f906456d3725c4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_20

    if-nez v0, :cond_1e

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    :goto_1f
    return p1

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method static synthetic Hw(Lcom/aide/ui/j;)I
    .registers 1

    iget p0, p0, Lcom/aide/ui/j;->v5:I

    return p0
.end method

.method private J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x392939b13aca3ae9L
    .end annotation

    const-wide v0, 0x3bafd6deb189dcc4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/j;->tp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/j;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aide/ui/j;->j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/aide/ui/j;->j6(Landroid/widget/ListView;Ljava/lang/String;)Z

    invoke-virtual {v3}, Landroid/widget/ListView;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    :cond_30
    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method private gn()Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x142ec8c86a0749d7L
    .end annotation

    const-wide v0, 0x1b4478c5abf7ce50L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1d

    return v4

    :cond_1d
    iget-object v6, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    sub-int/2addr v3, v5

    invoke-virtual {v6, v2, v3}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_31

    if-eqz v0, :cond_2b

    return v5

    :cond_2b
    const/16 v0, 0x2e

    if-ne v2, v0, :cond_30

    return v5

    :cond_30
    return v4

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method private j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xbfd0d03341d6b9cL
    .end annotation

    const-wide v0, 0x620cde8cefaee1dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080027

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/CompletionListView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xf86d49de4b29c4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x33f4e223e0057dffL  # -2.1276738570585457E58

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/j;->DW(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_75

    const-string v2, ""

    if-nez v1, :cond_19

    return-object v2

    :cond_19
    :try_start_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2c

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->Hw()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2c
    :goto_2c
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v1}, Lcom/aide/engine/SourceEntity;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v3, v5, :cond_41

    return-object v2

    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v5}, Lcom/aide/engine/SourceEntity;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_70
    .catchall {:try_start_19 .. :try_end_70} :catchall_75

    if-nez v5, :cond_5c

    return-object v2

    :cond_73
    move-object v2, v1

    goto :goto_2c

    :catchall_75
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_86

    const-wide v2, -0x33f4e223e0057dffL  # -2.1276738570585457E58

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    goto :goto_88

    :goto_87
    throw v0

    :goto_88
    goto :goto_87
.end method

.method private j6(IILjava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xca5f2671c4e409fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1a567a9d9fdf4170L  # -5.29499605164431E181

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/aide/ui/j;->Hw:I

    if-ne v0, p1, :cond_27

    iget v0, p0, Lcom/aide/ui/j;->v5:I

    if-ne v0, p2, :cond_27

    return-void

    :cond_27
    iput p1, p0, Lcom/aide/ui/j;->Hw:I

    iput p2, p0, Lcom/aide/ui/j;->v5:I

    iput-object p3, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v0

    if-ne p1, v0, :cond_58

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v1

    if-lt v0, v1, :cond_58

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v0

    if-gt p2, v0, :cond_58

    iget-boolean v0, p0, Lcom/aide/ui/j;->EQ:Z

    if-nez v0, :cond_53

    invoke-direct {p0}, Lcom/aide/ui/j;->u7()Z

    move-result v0

    if-nez v0, :cond_58

    :cond_53
    iget-boolean v0, p0, Lcom/aide/ui/j;->EQ:Z

    invoke-direct {p0, p3, v0}, Lcom/aide/ui/j;->j6(Ljava/util/List;Z)V
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_59

    :cond_58
    return-void

    :catchall_59
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_73

    const-wide v2, -0x1a567a9d9fdf4170L  # -5.29499605164431E181

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_73
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/j;IILjava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/j;->j6(IILjava/util/List;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/j;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/j;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x34037b6673cca259L
    .end annotation

    const-wide v0, -0x3dc56a42f30f5558L  # -1.1418134449666663E11

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/16 v2, 0x7c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v3, "|"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    iget-object v5, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v8, p0, Lcom/aide/ui/j;->Hw:I

    iget v7, p0, Lcom/aide/ui/j;->v5:I

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result v9

    move v6, v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/aide/ui/views/CodeEditText;->j6(IIIILjava/lang/String;)V

    if-lez v2, :cond_3f

    iget v3, p0, Lcom/aide/ui/j;->v5:I

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v4, p0, Lcom/aide/ui/j;->Hw:I

    invoke-virtual {v2, v4, v3, v4, v3}, Lcom/aide/ui/AIDEEditor;->j6(IIII)V

    goto :goto_44

    :cond_3f
    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->rN()V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    :goto_44
    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method private j6(Ljava/util/List;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xb436d8c4cf8be77L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0xde85e31d0f09e30L  # 1.142016669642667E-241

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-string v0, "openPopup"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/ui/j;->j6()V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/j;->j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;

    move-result-object v1

    invoke-direct {p0}, Lcom/aide/ui/j;->tp()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/aide/ui/j;->j6(Landroid/widget/ListView;Ljava/lang/String;)Z

    move-result v2

    if-eqz p2, :cond_3c

    if-eqz v2, :cond_3c

    return-void

    :cond_3c
    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/CompletionListView;->setKeyStrokeDetector(Lcom/aide/common/KeyStrokeDetector;)V

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeHandler()Lcom/aide/common/KeyStrokeDetector$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/CompletionListView;->setKeyStrokeHandler(Lcom/aide/common/KeyStrokeDetector$a;)V

    new-instance v2, Lcom/aide/ui/e;

    invoke-direct {v2, p0}, Lcom/aide/ui/e;-><init>(Lcom/aide/ui/j;)V

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/CustomKeysListView;->setOnKeyEventListener(Lcom/aide/ui/views/CustomKeysListView$a;)V

    new-instance v2, Lcom/s1243808733/aide/completion/MyOnItemClickListener;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/aide/completion/MyOnItemClickListener;-><init>(Lcom/aide/ui/j;Lcom/aide/ui/views/CompletionListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/aide/ui/g;

    invoke-direct {v2, p0, v1}, Lcom/aide/ui/g;-><init>(Lcom/aide/ui/j;Lcom/aide/ui/views/CompletionListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/aide/common/g;->j6(Landroid/content/Context;Landroid/graphics/Rect;)V

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    const/high16 v6, 0x43fa0000  # 500.0f

    mul-float v6, v6, v2

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    int-to-float v4, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    const/high16 v6, 0x43af0000  # 350.0f

    mul-float v6, v6, v2

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v5, v5

    const/high16 v7, 0x437a0000  # 250.0f

    mul-float v7, v7, v2

    sub-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x42b40000  # 90.0f

    mul-float v2, v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iget-object v5, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v6, p0, Lcom/aide/ui/j;->Hw:I

    invoke-virtual {v5, v6, v2}, Lcom/aide/ui/views/CodeEditText;->j6(II)V

    iget-object v5, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v6, p0, Lcom/aide/ui/j;->Hw:I

    iget v7, p0, Lcom/aide/ui/j;->v5:I

    invoke-virtual {v5, v6, v7, v7}, Lcom/aide/ui/views/CodeEditText;->DW(III)Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int v7, v6, v4

    iget v8, v3, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_e5

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v6, v3, v4

    :cond_e5
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    new-instance v7, Landroid/graphics/Rect;

    add-int/2addr v4, v6

    add-int/2addr v2, v5

    invoke-direct {v7, v6, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v7}, Lcom/aide/ui/MainActivity;->j6(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_107

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->gW()Z

    move-result v0

    if-nez v0, :cond_107

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_10b

    :cond_107
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFocusable(Z)V
    :try_end_10b
    .catchall {:try_start_0 .. :try_end_10b} :catchall_10c

    :goto_10b
    return-void

    :catchall_10c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_121

    const-wide v2, 0xde85e31d0f09e30L  # 1.142016669642667E-241

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_121
    throw v0
.end method

.method private j6(C)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x6001a1a5bef72d7L
    .end annotation

    const-wide v0, 0xe8e769034b0d8L  # 2.024330008019017E-308

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_53

    iget-boolean v2, p0, Lcom/aide/ui/j;->gn:Z

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, ".xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, ".html"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, ".htm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_52

    :cond_51
    const/4 v3, 0x1

    :cond_52
    return v3

    :cond_53
    const/16 v2, 0x2d

    if-ne p1, v2, :cond_6c

    iget-boolean v2, p0, Lcom/aide/ui/j;->gn:Z

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".css"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6c
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-eqz v2, :cond_76

    iget-boolean v2, p0, Lcom/aide/ui/j;->gn:Z

    if-nez v2, :cond_7e

    :cond_76
    const/16 v2, 0x2e

    if-ne p1, v2, :cond_7f

    iget-boolean p1, p0, Lcom/aide/ui/j;->u7:Z
    :try_end_7c
    .catchall {:try_start_5 .. :try_end_7c} :catchall_80

    if-eqz p1, :cond_7f

    :cond_7e
    const/4 v3, 0x1

    :cond_7f
    return v3

    :catchall_80
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_8d

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8d
    throw v2
.end method

.method private j6(Landroid/widget/ListView;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x14f05e921f17a060L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xc1e1604d3fa1cd3L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p2, p0, Lcom/aide/ui/j;->VH:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SourceEntity;

    invoke-static {v2, p2}, Lcom/s1243808733/aide/completion/CompletionAdapter;->acceptSourceEntity(Lcom/aide/engine/SourceEntity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3b

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/aide/ui/j$a;

    if-eqz v2, :cond_61

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/j$a;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_51

    :cond_61
    new-instance v2, Lcom/aide/ui/j$a;

    iget-object v3, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/aide/ui/j$a;-><init>(Lcom/aide/ui/j;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_6f
    .catchall {:try_start_0 .. :try_end_6f} :catchall_70

    :cond_6f
    return v1

    :catchall_70
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_81

    const-wide v2, 0xc1e1604d3fa1cd3L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_81
    goto :goto_83

    :goto_82
    throw v0

    :goto_83
    goto :goto_82
.end method

.method static synthetic j6(Lcom/aide/ui/j;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/j;->tp:Z

    return p0
.end method

.method private j6_(Landroid/widget/ListView;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x14f05e921f17a060L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xc1e1604d3fa1cd3L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p2, p0, Lcom/aide/ui/j;->VH:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_3b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/aide/ui/j$a;

    if-eqz v2, :cond_6d

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/j$a;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_5d

    :cond_6d
    new-instance v2, Lcom/aide/ui/j$a;

    iget-object v3, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/aide/ui/j$a;-><init>(Lcom/aide/ui/j;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_7b
    .catchall {:try_start_0 .. :try_end_7b} :catchall_7c

    :cond_7b
    return v0

    :catchall_7c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_8d

    const-wide v2, 0xc1e1604d3fa1cd3L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8d
    goto :goto_8f

    :goto_8e
    throw v0

    :goto_8f
    goto :goto_8e
.end method

.method private tp()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x8ed4cfbd33291a8L
    .end annotation

    const-wide v0, -0x12eec7187d0e220dL  # -2.374803047919809E217

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v3, p0, Lcom/aide/ui/j;->Hw:I

    iget v4, p0, Lcom/aide/ui/j;->v5:I

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/aide/ui/views/CodeEditText;->j6(III)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method private u7()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b7a54ebc9e42f48L
    .end annotation

    const-wide v0, -0xe3a0833894dbcddL  # -1.1443960817548044E240

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/j;->tp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcom/aide/ui/j;->j6(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v4, v2, :cond_25

    invoke-direct {p0, v3}, Lcom/aide/ui/j;->j6(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_27

    const/4 v0, 0x1

    return v0

    :cond_25
    const/4 v0, 0x0

    return v0

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method static synthetic v5(Lcom/aide/ui/j;)I
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result p0

    return p0
.end method

.method private we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x878e335c6d72b4bL
    .end annotation

    const-wide v0, 0x5b9475b25211a674L  # 1.452240253214607E133

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/d;

    invoke-direct {v3, p0}, Lcom/aide/ui/d;-><init>(Lcom/aide/ui/j;)V

    invoke-virtual {v2, v3}, Labcd/Xj;->j6(Lcom/aide/engine/service/o;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0x608f974c175b8edL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->DW()Z

    move-result v2

    iput-boolean v2, p0, Lcom/aide/ui/j;->gn:Z

    invoke-static {}, Lcom/aide/ui/aa;->j6()Z

    move-result v2

    iput-boolean v2, p0, Lcom/aide/ui/j;->u7:Z

    invoke-static {}, Lcom/aide/ui/aa;->FH()Z

    move-result v2

    iput-boolean v2, p0, Lcom/aide/ui/j;->tp:Z
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, 0x8908a3b90ecc6fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/j;->j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2c

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public Hw()Z
    .registers 5

    const-wide v0, -0x1a9c8c346f50fa23L  # -2.522428908021073E180

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, 0x163bc0ebd496fb75L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/j;->gn()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->EQ()V

    goto :goto_1b

    :cond_18
    invoke-virtual {p0}, Lcom/aide/ui/j;->Zo()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    :goto_1b
    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public Zo()V
    .registers 5

    const-wide v0, -0xafdeefeaef3e4a4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0}, Lcom/aide/ui/j;->u7()Z

    goto :goto_1a

    :cond_16
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/aide/ui/j;->DW(Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :goto_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x1adb5709ccb7bd3dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->FH()V

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->gn()V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public j6(CII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x855baf1a66ddc5fL

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-direct {p0, p1}, Lcom/aide/ui/j;->j6(C)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0, p2, p3}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/aide/ui/j;->DW(C)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/j;->DW(Z)V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    :cond_38
    return-void

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, -0x855baf1a66ddc5fL

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v0
.end method

.method public j6(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x13d4c1775a8db6efL  # 3.853372890117322E-213

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result v0

    iget v2, p0, Lcom/aide/ui/j;->Hw:I

    if-ne p1, v2, :cond_30

    iget v2, p0, Lcom/aide/ui/j;->v5:I

    if-lt p2, v2, :cond_30

    if-le p2, v0, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-direct {p0}, Lcom/aide/ui/j;->J0()V

    goto :goto_38

    :cond_30
    :goto_30
    iput-object v1, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    invoke-virtual {p0}, Lcom/aide/ui/j;->j6()V

    goto :goto_38

    :cond_36
    iput-object v1, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    :goto_38
    return-void

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x13d4c1775a8db6efL  # 3.853372890117322E-213

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, 0x51011dfe8a72a7e7L  # 1.6236808800910178E82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-nez p1, :cond_2f

    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/j;->j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    :cond_2f
    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_3d

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0x2665d71f4372ce2cL  # -4.323253020405569E123

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method
