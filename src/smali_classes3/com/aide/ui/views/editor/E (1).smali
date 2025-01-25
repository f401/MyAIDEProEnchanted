.class Lcom/aide/ui/views/editor/E;
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

    const-wide v2, -0x15ff73abb96f7b54L

    const-class v4, Lcom/aide/ui/views/editor/E;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/views/editor/OEditor$a;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x8a9eea813f07cffL
    .end annotation

    const-wide v0, 0x5495a2c8a3d180L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/E;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->Mr()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

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

    invoke-virtual {v5}, Labcd/hm;->DW()I

    move-result v6

    if-ne v6, v3, :cond_39

    invoke-virtual {v5}, Labcd/hm;->j6()I

    move-result v6

    if-eq v6, v2, :cond_39

    iget-object v2, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Labcd/hm;->j6()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    return-void

    :cond_61
    iget-object v2, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/E;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_7a
    .catchall {:try_start_5 .. :try_end_7a} :catchall_7b

    return-void

    :catchall_7b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/E;->tp:Z

    if-eqz v3, :cond_83

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v2

    :goto_85
    goto :goto_84
.end method
