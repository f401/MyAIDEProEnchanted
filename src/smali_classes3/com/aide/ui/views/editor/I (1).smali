.class Lcom/aide/ui/views/editor/I;
.super Lcom/aide/ui/views/editor/OEditor$a;


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
.field private static tp:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final EQ:Lcom/aide/ui/views/editor/OEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x617ac3500286c73bL

    const-wide v2, -0x15ffce9e0d9a8f14L  # -3.966356574130485E202

    const-class v4, Lcom/aide/ui/views/editor/I;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/views/editor/OEditor$a;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xabed06d241ffe9L
    .end annotation

    const-wide v0, -0x29e1e1a66cfd4affL  # -6.907686259060716E106

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/I;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-ne v2, v4, :cond_62

    iget-object v2, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_3a

    return-void

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    :goto_3d
    iget-object v4, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-ge v2, v4, :cond_5c

    iget-object v4, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_5c

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_5c
    iget-object v4, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    return-void

    :cond_62
    iget-object v4, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-eq v2, v4, :cond_c1

    iget-object v4, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    :goto_7c
    iget-object v5, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v5

    if-ge v2, v5, :cond_a2

    iget-object v5, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-ne v6, v4, :cond_a2

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_9f

    goto :goto_a2

    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_a2
    :goto_a2
    iget-object v4, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-ge v2, v4, :cond_c1

    iget-object v4, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_c1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    :cond_c1
    iget-object v4, p0, Lcom/aide/ui/views/editor/I;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_c6
    .catchall {:try_start_5 .. :try_end_c6} :catchall_c7

    return-void

    :catchall_c7
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/I;->tp:Z

    if-eqz v3, :cond_cf

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_cf
    goto :goto_d1

    :goto_d0
    throw v2

    :goto_d1
    goto :goto_d0
.end method
