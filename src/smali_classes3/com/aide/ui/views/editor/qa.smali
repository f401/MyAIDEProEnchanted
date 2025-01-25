.class Lcom/aide/ui/views/editor/qa;
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

    const-wide v2, 0x24fec05badca76d8L

    const-class v4, Lcom/aide/ui/views/editor/qa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/views/editor/OEditor$a;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x706e67c4103d190L
    .end annotation

    const-wide v0, -0x1f8632ca020ccdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/qa;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/g;->Mr()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_61

    iget-object v4, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/g;->Mr()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/hm;

    invoke-virtual {v5, v3, v2}, Labcd/hm;->j6(II)Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-virtual {v5}, Labcd/hm;->Hw()I

    move-result v6

    if-ne v6, v3, :cond_39

    invoke-virtual {v5}, Labcd/hm;->FH()I

    move-result v6

    if-eq v6, v2, :cond_39

    iget-object v2, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Labcd/hm;->FH()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    return-void

    :cond_61
    iget-object v4, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_69
    invoke-virtual {v4, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v7

    if-ge v6, v7, :cond_7f

    invoke-virtual {v4, v6, v3}, Lcom/aide/ui/views/editor/g;->FH(II)C

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_7c

    const/16 v8, 0x20

    if-eq v7, v8, :cond_7c

    goto :goto_7f

    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    :cond_7f
    :goto_7f
    if-eq v6, v2, :cond_89

    invoke-virtual {v4, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v2

    if-ne v6, v2, :cond_88

    goto :goto_89

    :cond_88
    move v5, v6

    :cond_89
    :goto_89
    iget-object v2, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2, v5, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_8e
    .catchall {:try_start_5 .. :try_end_8e} :catchall_8f

    return-void

    :catchall_8f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/qa;->tp:Z

    if-eqz v3, :cond_97

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_97
    goto :goto_99

    :goto_98
    throw v2

    :goto_99
    goto :goto_98
.end method
