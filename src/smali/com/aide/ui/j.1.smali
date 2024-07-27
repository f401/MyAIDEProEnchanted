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
            "Ljava/util/List",
            "<",
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
    .registers 4

    const-wide v2, 0x18aea3fc0f53a649L    # 8.596259399597165E-190

    const-class v0, Lcom/aide/ui/j;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/AIDEEditor;)V
    .registers 8

    const-wide v4, 0x6b62a16b6bba6d00L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6b62a16b6bba6d00L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/j;)Lcom/aide/ui/AIDEEditor;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    return-object v0
.end method

.method private DW(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2f92bc0ff957c420L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x12c8663470476735L    # -1.3017359827014975E218

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12c8663470476735L    # -1.3017359827014975E218

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->aM()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->j3()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, p2

    sget-boolean v0, Lcom/aide/ui/j;->DW:Z

    if-eqz v0, :cond_4

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private DW(Z)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xde984ecf0c57becL
    .end annotation

    const-wide v4, -0x161614115e98efb7L    # -1.5873367803612738E202

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x161614115e98efb7L    # -1.5873367803612738E202

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/j;->EQ:Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->cb()V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/j;->we()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Xj;->Hw(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private DW(C)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x14f20936ed401270L
    .end annotation

    const-wide v4, 0xe17f940e26a279L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, 0xe17f940e26a279L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private EQ()I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x293c0f1913d69e31L
    .end annotation

    const-wide v4, 0x130f432b382b0e90L    # 7.084923218181834E-217

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x130f432b382b0e90L    # 7.084923218181834E-217

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/j;->v5:I

    :goto_0
    iget-object v1, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v2, p0, Lcom/aide/ui/j;->Hw:I

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/CodeEditText;->j6(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    iget-object v1, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v2, p0, Lcom/aide/ui/j;->Hw:I

    invoke-virtual {v1, v2, v0}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/aide/ui/j;->FH(C)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return v0
.end method

.method static synthetic FH(Lcom/aide/ui/j;)I
    .registers 2

    iget v0, p0, Lcom/aide/ui/j;->Hw:I

    return v0
.end method

.method private FH(C)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x217cd9963bc9455fL
    .end annotation

    const-wide v4, 0x7f906456d3725c4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, 0x7f906456d3725c4L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method static synthetic Hw(Lcom/aide/ui/j;)I
    .registers 2

    iget v0, p0, Lcom/aide/ui/j;->v5:I

    return v0
.end method

.method private J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x392939b13aca3ae9L
    .end annotation

    const-wide v2, 0x3bafd6deb189dcc4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3bafd6deb189dcc4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/j;->tp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/j;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aide/ui/j;->j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/aide/ui/j;->j6(Landroid/widget/ListView;Ljava/lang/String;)Z

    invoke-virtual {v1}, Landroid/widget/ListView;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private gn()Z
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x142ec8c86a0749d7L
    .end annotation

    const-wide v6, 0x1b4478c5abf7ce50L

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x1b4478c5abf7ce50L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v3

    if-ne v3, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v4, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v2, v3}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xbfd0d03341d6b9cL
    .end annotation

    const-wide v2, 0x620cde8cefaee1dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x620cde8cefaee1dL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/CompletionListView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xf86d49de4b29c4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-wide v2, -0x33f4e223e0057dffL    # -2.1276738570585457E58

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x33f4e223e0057dffL    # -2.1276738570585457E58

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/j;->DW(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->Hw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v1, v4

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v4, v6, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/j;->DW:Z

    if-eqz v0, :cond_6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method private j6(IILjava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xca5f2671c4e409fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    const-wide v8, -0x1a567a9d9fdf4170L    # -5.29499605164431E181

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1a567a9d9fdf4170L    # -5.29499605164431E181

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/aide/ui/j;->Hw:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/aide/ui/j;->v5:I

    if-ne v0, p2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/aide/ui/j;->Hw:I

    iput p2, p0, Lcom/aide/ui/j;->v5:I

    iput-object p3, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v0

    if-gt p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/j;->EQ:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/aide/ui/j;->u7()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iget-boolean v0, p0, Lcom/aide/ui/j;->EQ:Z

    invoke-direct {p0, p3, v0}, Lcom/aide/ui/j;->j6(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/j;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
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
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x34037b6673cca259L
    .end annotation

    const-wide v8, -0x3dc56a42f30f5558L    # -1.1418134449666663E11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3dc56a42f30f5558L    # -1.1418134449666663E11

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const-string v0, "|"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v1, p0, Lcom/aide/ui/j;->Hw:I

    iget v2, p0, Lcom/aide/ui/j;->v5:I

    iget v3, p0, Lcom/aide/ui/j;->Hw:I

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText;->j6(IIIILjava/lang/String;)V

    if-lez v6, :cond_1

    iget v0, p0, Lcom/aide/ui/j;->v5:I

    add-int/2addr v0, v6

    iget-object v1, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v2, p0, Lcom/aide/ui/j;->Hw:I

    iget v3, p0, Lcom/aide/ui/j;->Hw:I

    invoke-virtual {v1, v2, v0, v3, v0}, Lcom/aide/ui/AIDEEditor;->j6(IIII)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->rN()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    move-object v5, p1

    goto :goto_1
.end method

.method private j6(Ljava/util/List;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xb436d8c4cf8be77L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;Z)V"
        }
    .end annotation

    const-wide v2, 0xde85e31d0f09e30L    # 1.142016669642667E-241

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0xde85e31d0f09e30L    # 1.142016669642667E-241

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "openPopup"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/ui/j;->j6()V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0007

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aide/ui/j;->j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;

    move-result-object v4

    invoke-direct {p0}, Lcom/aide/ui/j;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/aide/ui/j;->j6(Landroid/widget/ListView;Ljava/lang/String;)Z

    move-result v0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aide/ui/views/CompletionListView;->setKeyStrokeDetector(Lcom/aide/common/KeyStrokeDetector;)V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeHandler()Lcom/aide/common/KeyStrokeDetector$a;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aide/ui/views/CompletionListView;->setKeyStrokeHandler(Lcom/aide/common/KeyStrokeDetector$a;)V

    new-instance v0, Lcom/aide/ui/e;

    invoke-direct {v0, p0}, Lcom/aide/ui/e;-><init>(Lcom/aide/ui/j;)V

    invoke-virtual {v4, v0}, Lcom/aide/ui/views/CustomKeysListView;->setOnKeyEventListener(Lcom/aide/ui/views/CustomKeysListView$a;)V

    new-instance v0, Lcom/s1243808733/aide/completion/MyOnItemClickListener;

    invoke-direct {v0, p0, v4}, Lcom/s1243808733/aide/completion/MyOnItemClickListener;-><init>(Lcom/aide/ui/j;Lcom/aide/ui/views/CompletionListView;)V

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/aide/ui/g;

    invoke-direct {v0, p0, v4}, Lcom/aide/ui/g;-><init>(Lcom/aide/ui/j;Lcom/aide/ui/views/CompletionListView;)V

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/aide/common/g;->j6(Landroid/content/Context;Landroid/graphics/Rect;)V

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    const/high16 v8, 0x43fa0000    # 500.0f

    mul-float/2addr v8, v0

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    int-to-float v6, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    const/high16 v8, 0x43af0000    # 350.0f

    mul-float/2addr v8, v0

    div-int/lit8 v9, v7, 0x2

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    int-to-float v7, v7

    const/high16 v9, 0x437a0000    # 250.0f

    mul-float/2addr v9, v0

    sub-float/2addr v7, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, 0x42b40000    # 90.0f

    mul-float/2addr v0, v8

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v7, v0

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v8, p0, Lcom/aide/ui/j;->Hw:I

    invoke-virtual {v0, v8, v7}, Lcom/aide/ui/views/CodeEditText;->j6(II)V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v8, p0, Lcom/aide/ui/j;->Hw:I

    iget v9, p0, Lcom/aide/ui/j;->v5:I

    iget v10, p0, Lcom/aide/ui/j;->v5:I

    invoke-virtual {v0, v8, v9, v10}, Lcom/aide/ui/views/CodeEditText;->DW(III)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v9, v0, v6

    iget v10, v5, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_2

    iget v0, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v5

    new-instance v9, Landroid/graphics/Rect;

    add-int/2addr v6, v0

    add-int/2addr v7, v8

    invoke-direct {v9, v0, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v1, v9}, Lcom/aide/ui/MainActivity;->j6(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->gW()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/j;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setFocusable(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private j6(C)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x6001a1a5bef72d7L
    .end annotation

    const-wide v6, 0xe8e769034b0d8L    # 2.024330008019017E-308

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/j;->j6:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v4, 0xe8e769034b0d8L    # 2.024330008019017E-308

    invoke-static {v4, v5, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v2, 0x3c

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/aide/ui/j;->gn:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".htm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v2, 0x2d

    if-ne p1, v2, :cond_4

    iget-boolean v2, p0, Lcom/aide/ui/j;->gn:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/aide/ui/j;->gn:Z

    if-nez v2, :cond_1

    :cond_5
    const/16 v2, 0x2e

    if-ne p1, v2, :cond_6

    iget-boolean v2, p0, Lcom/aide/ui/j;->u7:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v0
.end method

.method private j6(Landroid/widget/ListView;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x14f05e921f17a060L
    .end annotation

    const-wide v2, 0xc1e1604d3fa1cd3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc1e1604d3fa1cd3L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p2, p0, Lcom/aide/ui/j;->VH:Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    invoke-static {v0, p2}, Lcom/s1243808733/aide/completion/CompletionAdapter;->acceptSourceEntity(Lcom/aide/engine/SourceEntity;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/j;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    :goto_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/aide/ui/j$a;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/j$a;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/aide/ui/j$a;

    iget-object v1, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v5}, Lcom/aide/ui/j$a;-><init>(Lcom/aide/ui/j;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    return v4

    :cond_6
    move v4, v1

    goto :goto_1
.end method

.method static synthetic j6(Lcom/aide/ui/j;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/j;->tp:Z

    return v0
.end method

.method private j6_(Landroid/widget/ListView;Ljava/lang/String;)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x14f05e921f17a060L
    .end annotation

    const-wide v2, 0xc1e1604d3fa1cd3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc1e1604d3fa1cd3L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p2, p0, Lcom/aide/ui/j;->VH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/j;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    :goto_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/aide/ui/j$a;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/j$a;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/aide/ui/j$a;

    iget-object v1, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v5}, Lcom/aide/ui/j$a;-><init>(Lcom/aide/ui/j;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    return v4

    :cond_6
    move v4, v1

    goto :goto_1
.end method

.method private tp()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x8ed4cfbd33291a8L
    .end annotation

    const-wide v4, -0x12eec7187d0e220dL    # -2.374803047919809E217

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12eec7187d0e220dL    # -2.374803047919809E217

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    iget v1, p0, Lcom/aide/ui/j;->Hw:I

    iget v2, p0, Lcom/aide/ui/j;->v5:I

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/ui/views/CodeEditText;->j6(III)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private u7()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1b7a54ebc9e42f48L
    .end annotation

    const-wide v4, -0xe3a0833894dbcddL    # -1.1443960817548044E240

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe3a0833894dbcddL    # -1.1443960817548044E240

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/j;->tp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/aide/ui/j;->j6(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/aide/ui/j;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic v5(Lcom/aide/ui/j;)I
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result v0

    return v0
.end method

.method private we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x878e335c6d72b4bL
    .end annotation

    const-wide v2, 0x5b9475b25211a674L    # 1.452240253214607E133

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5b9475b25211a674L    # 1.452240253214607E133

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/d;

    invoke-direct {v1, p0}, Lcom/aide/ui/d;-><init>(Lcom/aide/ui/j;)V

    invoke-virtual {v0, v1}, Labcd/Xj;->j6(Lcom/aide/engine/service/o;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x608f974c175b8edL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x608f974c175b8edL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->DW()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/j;->gn:Z

    invoke-static {}, Lcom/aide/ui/aa;->j6()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/j;->u7:Z

    invoke-static {}, Lcom/aide/ui/aa;->FH()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/j;->tp:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Z
    .registers 5

    const-wide v2, 0x8908a3b90ecc6fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8908a3b90ecc6fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/j;->j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->hasFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()Z
    .registers 5

    const-wide v2, -0x1a9c8c346f50fa23L    # -2.522428908021073E180

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a9c8c346f50fa23L    # -2.522428908021073E180

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public VH()V
    .registers 5

    const-wide v2, 0x163bc0ebd496fb75L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x163bc0ebd496fb75L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/j;->gn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->EQ()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/j;->Zo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Zo()V
    .registers 5

    const-wide v2, -0xafdeefeaef3e4a4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xafdeefeaef3e4a4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/j;->u7()Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/j;->DW(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x1adb5709ccb7bd3dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1adb5709ccb7bd3dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->FH()V

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->gn()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(CII)V
    .registers 14

    const-wide v8, -0x855baf1a66ddc5fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x855baf1a66ddc5fL

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/aide/ui/j;->j6(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0, p2, p3}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/aide/ui/j;->DW(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/j;->DW(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/j;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(II)V
    .registers 10

    const-wide v2, 0x13d4c1775a8db6efL    # 3.853372890117322E-213

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x13d4c1775a8db6efL    # 3.853372890117322E-213

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/aide/ui/j;->EQ()I

    move-result v0

    iget v1, p0, Lcom/aide/ui/j;->Hw:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/aide/ui/j;->v5:I

    if-lt p2, v1, :cond_1

    if-le p2, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;

    invoke-virtual {p0}, Lcom/aide/ui/j;->j6()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/aide/ui/j;->J0()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/j;->DW:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v2, 0x51011dfe8a72a7e7L    # 1.6236808800910178E82

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x51011dfe8a72a7e7L    # 1.6236808800910178E82

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/j;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/j;->FH:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->U2()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/j;->j6(Landroid/view/View;)Lcom/aide/ui/views/CompletionListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v2, -0x2665d71f4372ce2cL    # -4.323253020405569E123

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2665d71f4372ce2cL    # -4.323253020405569E123

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/j;->Zo:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
