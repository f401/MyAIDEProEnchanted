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
    .registers 5

    const-wide v0, -0x617ac3500286c73bL

    const-wide v2, -0x15fffc17363c1780L  # -3.92284714561438E202

    const-class v4, Lcom/aide/ui/views/editor/K;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3dc719e3b9c30c11L
    .end annotation

    const-wide v0, 0x85485d5c59f5ec3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/K;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->Hw:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v6

    if-ne v4, v6, :cond_83

    iget-object v4, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v5, v4, :cond_4e

    return-void

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    :goto_51
    iget-object v6, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v6

    if-ge v4, v6, :cond_70

    iget-object v6, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_70

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_70
    iget-object v6, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v6

    new-instance v7, Labcd/hm;

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v7, v3, v2, v5, v4}, Labcd/hm;-><init>(IIII)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6, v7, v2}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V

    return-void

    :cond_83
    iget-object v6, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v6

    if-eq v4, v6, :cond_e2

    iget-object v6, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    :goto_9d
    iget-object v7, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v7

    if-ge v4, v7, :cond_c3

    iget-object v7, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-ne v8, v6, :cond_c3

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_c0

    goto :goto_c3

    :cond_c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    :cond_c3
    :goto_c3
    iget-object v6, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v6

    if-ge v4, v6, :cond_e2

    iget-object v6, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_e2

    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    :cond_e2
    iget-object v6, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v6

    new-instance v7, Labcd/hm;

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v7, v3, v2, v5, v4}, Labcd/hm;-><init>(IIII)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/K;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6, v7, v2}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_f4
    .catchall {:try_start_5 .. :try_end_f4} :catchall_f5

    :cond_f4
    return-void

    :catchall_f5
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/K;->VH:Z

    if-eqz v3, :cond_fd

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_fd
    goto :goto_ff

    :goto_fe
    throw v2

    :goto_ff
    goto :goto_fe
.end method
