.class Lcom/aide/ui/views/editor/S;
.super Lcom/aide/ui/views/editor/a;


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
.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Zo:Lcom/aide/ui/views/editor/OEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x617ac3500286c73bL

    const-wide v2, -0x15ffb47ffa181458L  # -3.991346127320733E202

    const-class v4, Lcom/aide/ui/views/editor/S;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/S;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/a;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xd999ab81b6883b0L
    .end annotation

    const-wide v0, 0xc58a9d987c58abbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/S;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/S;->Zo:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/S;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/aide/ui/views/editor/S;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/S;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedColumn()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/S;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getFirstSelectedLine()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/S;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->BT()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/S;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->BT()V
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_42

    :cond_41
    return-void

    :catchall_42
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/S;->v5:Z

    if-eqz v3, :cond_4a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4a
    throw v2
.end method
