.class Lcom/aide/ui/browsers/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Lcom/aide/ui/views/CustomKeysListView;

.field final Hw:Lcom/aide/ui/browsers/FileBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 6

    :try_start_0
    const-string v0, "com.aide.ui.browsers.j"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-wide v2, 0x4e254192869da105L    # 2.865322281020565E68

    const-wide v4, 0xd84f7e3499e8f9dL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/views/CustomKeysListView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/browsers/j;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    iput-object p2, p0, Lcom/aide/ui/browsers/j;->FH:Lcom/aide/ui/views/CustomKeysListView;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4677567ecf34b9d9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener;->onFileBrowserItemClick(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onItemClick_SOURCE(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x4677567ecf34b9d9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/j;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v0, -0xe2137624a4abd91L    # -3.2072791496188193E240

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/browsers/j;->FH:Lcom/aide/ui/views/CustomKeysListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/FileBrowser$b;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, v0, Lcom/aide/ui/browsers/FileBrowser$b;->Zo:Labcd/Jl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aide/ui/browsers/j;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    iput-object p2, v1, Lcom/aide/ui/browsers/FileBrowser;->Zo:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Browser command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/aide/ui/browsers/FileBrowser$b;->Zo:Labcd/Jl;

    invoke-interface {v2}, Labcd/Jl;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/aide/ui/browsers/FileBrowser$b;->Zo:Labcd/Jl;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Labcd/Jl;->j6(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/aide/ui/browsers/FileBrowser$b;->Zo:Labcd/Jl;

    invoke-interface {v0}, Labcd/Jl;->run()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/j;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, -0xe2137624a4abd91L    # -3.2072791496188193E240

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_1
    iget-boolean v1, v0, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/aide/ui/browsers/j;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    invoke-static {v1}, Lcom/aide/ui/browsers/FileBrowser;->DW(Lcom/aide/ui/browsers/FileBrowser;)Lcom/aide/ui/MainActivity;

    move-result-object v1

    iget-object v0, v0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/aide/ui/MainActivity;->Hw(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/aide/ui/browsers/FileBrowser$b;->DW()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/mk;->j6(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/aide/ui/browsers/j;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    invoke-static {v0}, Lcom/aide/ui/browsers/FileBrowser;->FH(Lcom/aide/ui/browsers/FileBrowser;)Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_7
    iget-object v0, v0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/aide/ui/browsers/j;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    invoke-static {v1, v0}, Lcom/aide/ui/browsers/FileBrowser;->j6(Lcom/aide/ui/browsers/FileBrowser;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/aide/ui/browsers/j;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    invoke-static {v0}, Lcom/aide/ui/browsers/FileBrowser;->FH(Lcom/aide/ui/browsers/FileBrowser;)Lcom/aide/ui/views/CustomKeysListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
