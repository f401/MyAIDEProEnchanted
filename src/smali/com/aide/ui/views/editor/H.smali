.class Lcom/aide/ui/views/editor/H;
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
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/H;

    const-wide v2, -0x617ac3500286c73bL

    const-wide v4, -0x15ffb7e178ecca81L    # -3.988111293692456E202

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/views/editor/OEditor$a;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x700126c7f2cda21L
    .end annotation

    const-wide v6, -0x2a757e1da0056958L    # -1.1873944242566611E104

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/H;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a757e1da0056958L    # -1.1873944242566611E104

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v1, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v1

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v0

    :cond_2
    if-eqz v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_4

    :goto_1
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    :goto_2
    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4, v1}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-ne v2, v4, :cond_4

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2, v0, v1}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/H;->tp:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
