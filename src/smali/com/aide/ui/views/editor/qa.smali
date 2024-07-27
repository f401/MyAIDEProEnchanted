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
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/qa;

    const-wide v2, -0x617ac3500286c73bL

    const-wide v4, 0x24fec05badca76d8L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x706e67c4103d190L
    .end annotation

    const-wide v8, -0x1f8632ca020ccdL

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/qa;->u7:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x1f8632ca020ccdL

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v0, v2}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    iget-object v0, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    iget-object v0, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/g;->Mr()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/g;->Mr()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hm;

    invoke-virtual {v0, v3, v2}, Labcd/hm;->j6(II)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Labcd/hm;->Hw()I

    move-result v5

    if-ne v5, v3, :cond_1

    invoke-virtual {v0}, Labcd/hm;->FH()I

    move-result v5

    if-eq v5, v2, :cond_1

    iget-object v1, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Labcd/hm;->FH()I

    move-result v0

    invoke-virtual {v1, v0, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {v4, v0, v3}, Lcom/aide/ui/views/editor/g;->FH(II)C

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_6

    const/16 v6, 0x20

    if-eq v5, v6, :cond_6

    :cond_3
    if-eq v0, v2, :cond_7

    invoke-virtual {v4, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v2

    if-ne v0, v2, :cond_4

    move v0, v1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/aide/ui/views/editor/qa;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v1, v0, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/qa;->tp:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method
