.class Lcom/aide/ui/browsers/FileBrowser$a;
.super Lcom/aide/common/x;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/browsers/FileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aide/common/x<",
        "Lcom/aide/ui/browsers/FileBrowser$b;",
        ">;"
    }
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
.field final Zo:Lcom/aide/ui/browsers/FileBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/FileBrowser$a;

    const-wide v1, 0x373d966bdc352a5cL  # 1.326753122033769E-42

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/browsers/FileBrowser;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1ac60405c5b78b0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x175694ce17530cd0L  # -1.4844345288383783E196

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser$a;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/browsers/FileBrowser$a;->Zo:Lcom/aide/ui/browsers/FileBrowser;

    invoke-direct {p0}, Lcom/aide/common/x;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/FileBrowser$a;->v5:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/browsers/g;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$a;->Hw:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x3b270b320f2bf03cL  # 9.53066442120439E-24

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/browsers/FileBrowser$a;-><init>(Lcom/aide/ui/browsers/FileBrowser;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser$a;->v5:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x3b270b320f2bf03cL  # 9.53066442120439E-24

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->getView(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView_SOURCE(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1f73ec9abd0ee6ffL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$a;->Hw:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xc976f390e1a6010L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    if-nez p2, :cond_29

    iget-object v0, p0, Lcom/aide/ui/browsers/FileBrowser$a;->Zo:Lcom/aide/ui/browsers/FileBrowser;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_2a

    :cond_29
    move-object v0, p2

    :goto_2a
    invoke-virtual {p0, p1}, Lcom/aide/common/x;->j6(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/browsers/FileBrowser$b;

    const v2, 0x7f0800a7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0800a6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v1, v1, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    return-object v0

    :catchall_4d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser$a;->v5:Z

    if-eqz v1, :cond_63

    const-wide v2, 0xc976f390e1a6010L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->OnNotifyDataSetChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataSetChanged_()V
    .registers 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
