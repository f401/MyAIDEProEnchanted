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
    .registers 5

    const-wide v0, -0x617ac3500286c73bL

    const-wide v2, -0x15ffb7e178ecca81L  # -3.988111293692456E202

    const-class v4, Lcom/aide/ui/views/editor/H;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x700126c7f2cda21L
    .end annotation

    const-wide v0, -0x2a757e1da0056958L  # -1.1873944242566611E104

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/H;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    if-nez v2, :cond_30

    if-nez v3, :cond_24

    return-void

    :cond_24
    add-int/lit8 v3, v3, -0x1

    iget-object v2, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    :cond_30
    if-eqz v2, :cond_79

    add-int/lit8 v2, v2, -0x1

    if-eqz v2, :cond_79

    :goto_36
    if-lez v2, :cond_4b

    iget-object v4, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4b

    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    :cond_4b
    if-eqz v2, :cond_79

    iget-object v4, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    :goto_5b
    if-lez v2, :cond_79

    iget-object v5, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-ne v4, v6, :cond_79

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_76

    goto :goto_79

    :cond_76
    add-int/lit8 v2, v2, -0x1

    goto :goto_5b

    :cond_79
    :goto_79
    iget-object v4, p0, Lcom/aide/ui/views/editor/H;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_7e
    .catchall {:try_start_5 .. :try_end_7e} :catchall_7f

    return-void

    :catchall_7f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/H;->tp:Z

    if-eqz v3, :cond_87

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_87
    goto :goto_89

    :goto_88
    throw v2

    :goto_89
    goto :goto_88
.end method
