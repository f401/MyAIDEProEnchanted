.class Lcom/aide/ui/views/editor/ba;
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

    const-wide v2, 0x24fda3b565616fe1L  # 1.670292641174018E-130

    const-class v4, Lcom/aide/ui/views/editor/ba;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/editor/ba;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/views/editor/OEditor$a;-><init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x731936ef4e738d8L
    .end annotation

    const-wide v0, -0x34a6b3c7f13be20L  # -5.384055695843099E292

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/ba;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/ba;->EQ:Lcom/aide/ui/views/editor/OEditor;

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->j6:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ba;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/ba;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v3

    if-nez v3, :cond_31

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/aide/ui/views/editor/ba;->EQ:Lcom/aide/ui/views/editor/OEditor;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_4c

    :cond_31
    if-eqz v2, :cond_3b

    iget-object v4, p0, Lcom/aide/ui/views/editor/ba;->EQ:Lcom/aide/ui/views/editor/OEditor;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    goto :goto_4c

    :cond_3b
    if-eqz v3, :cond_4c

    iget-object v2, p0, Lcom/aide/ui/views/editor/ba;->EQ:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v4, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4d

    :cond_4c
    :goto_4c
    return-void

    :catchall_4d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/ba;->tp:Z

    if-eqz v3, :cond_55

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_55
    throw v2
.end method
