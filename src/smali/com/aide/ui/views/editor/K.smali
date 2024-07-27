.class Lcom/aide/ui/views/editor/K;
.super Lcom/aide/ui/views/editor/ta;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/OEditor;->KD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final gn:Lcom/aide/ui/views/editor/OEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/K;

    const-wide v2, -0x617ac3500286c73bL

    const-wide v4, -0x15fffc17363c1780L    # -3.92284714561438E202

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/ta;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x3dc719e3b9c30c11L
    .end annotation

    const-wide v8, 0x85485d5c59f5ec3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/K;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x85485d5c59f5ec3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v1, Lcom/aide/ui/views/editor/OEditor$b;->Hw:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v1

    iget-object v0, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    iget-object v0, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v0

    iget-object v3, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    new-instance v5, Labcd/hm;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v5, v2, v1, v3, v0}, Labcd/hm;-><init>(IIII)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v5, v0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/K;->VH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-eq v0, v4, :cond_8

    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    :goto_2
    iget-object v5, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v5

    if-ge v0, v5, :cond_6

    iget-object v5, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v5

    invoke-interface {v5, v0, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-ne v6, v4, :cond_6

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-ge v0, v4, :cond_8

    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    new-instance v5, Labcd/hm;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v5, v2, v1, v3, v0}, Labcd/hm;-><init>(IIII)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v5, v0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
