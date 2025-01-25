.class Lcom/aide/ui/views/editor/J;
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

    const-wide v2, -0x15ffe55aa20a5369L  # -3.9446018581044595E202

    const-class v4, Lcom/aide/ui/views/editor/J;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/ta;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4d29acfaeced9eccL
    .end annotation

    const-wide v0, 0x753a77e05250ee0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/J;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->Hw:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v5

    if-nez v4, :cond_44

    if-nez v5, :cond_38

    return-void

    :cond_38
    add-int/lit8 v5, v5, -0x1

    iget-object v4, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    :cond_44
    if-eqz v4, :cond_8d

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_8d

    :goto_4a
    if-lez v4, :cond_5f

    iget-object v6, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_5f

    add-int/lit8 v4, v4, -0x1

    goto :goto_4a

    :cond_5f
    if-eqz v4, :cond_8d

    iget-object v6, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    :goto_6f
    if-lez v4, :cond_8d

    iget-object v7, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v7, v8, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-ne v6, v8, :cond_8d

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_8a

    goto :goto_8d

    :cond_8a
    add-int/lit8 v4, v4, -0x1

    goto :goto_6f

    :cond_8d
    :goto_8d
    iget-object v6, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v6

    new-instance v7, Labcd/hm;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v7, v5, v4, v3, v2}, Labcd/hm;-><init>(IIII)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/J;->gn:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6, v7, v2}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_9f
    .catchall {:try_start_5 .. :try_end_9f} :catchall_a0

    :cond_9f
    return-void

    :catchall_a0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/J;->VH:Z

    if-eqz v3, :cond_a8

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_a8
    goto :goto_aa

    :goto_a9
    throw v2

    :goto_aa
    goto :goto_a9
.end method
