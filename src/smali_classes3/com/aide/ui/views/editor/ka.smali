.class Lcom/aide/ui/views/editor/ka;
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

    const-wide v2, 0x24fdcc5f6eff94b8L

    const-class v4, Lcom/aide/ui/views/editor/ka;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/editor/ka;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/views/editor/OEditor$a;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xe0e1df9bf2c46ddL
    .end annotation

    const-wide v0, -0x2d6c6da3fcbb885L  # -8.054646995855023E294

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/ka;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/ka;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ka;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/ka;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/views/editor/ka;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-eq v2, v4, :cond_33

    iget-object v4, p0, Lcom/aide/ui/views/editor/ka;->EQ:Lcom/aide/ui/views/editor/OEditor;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    goto :goto_49

    :cond_33
    iget-object v2, p0, Lcom/aide/ui/views/editor/ka;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v3, v2, :cond_49

    iget-object v2, p0, Lcom/aide/ui/views/editor/ka;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4a

    :cond_49
    :goto_49
    return-void

    :catchall_4a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/ka;->tp:Z

    if-eqz v3, :cond_52

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_52
    throw v2
.end method
