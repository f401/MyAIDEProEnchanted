.class Lcom/aide/ui/browsers/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/browsers/ErrorBrowser;->v5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

.field final Hw:Lcom/aide/ui/browsers/ErrorBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x319804b2924393adL  # -5.1723520868399924E69

    const-wide v2, -0x37d99353e3e7ee4dL  # -3.815331170339754E39

    const-class v4, Lcom/aide/ui/browsers/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/browsers/ErrorBrowser;Lcom/aide/ui/views/CustomKeysListView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/browsers/e;->Hw:Lcom/aide/ui/browsers/ErrorBrowser;

    iput-object p2, p0, Lcom/aide/ui/browsers/e;->FH:Lcom/aide/ui/views/CustomKeysListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x1fd31d94de797efL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/e;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0xcc20747096a03f0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/aide/ui/browsers/e;->FH:Lcom/aide/ui/views/CustomKeysListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/ErrorBrowser$b;

    const/4 v1, 0x1

    if-nez v0, :cond_25

    return v1

    :cond_25
    iget-boolean v2, v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->Hw:Z

    if-nez v2, :cond_45

    iget-boolean v2, v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->FH:Z

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/aide/ui/browsers/e;->Hw:Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-static {v2}, Lcom/aide/ui/browsers/ErrorBrowser;->DW(Lcom/aide/ui/browsers/ErrorBrowser;)Lcom/aide/ui/MainActivity;

    move-result-object v2

    iget-object v0, v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->gn:Labcd/Tl;

    invoke-virtual {v2, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    iget-object v0, p0, Lcom/aide/ui/browsers/e;->Hw:Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-static {v0}, Lcom/aide/ui/browsers/ErrorBrowser;->DW(Lcom/aide/ui/browsers/ErrorBrowser;)Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->yS()V
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_46

    :cond_45
    return v1

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/e;->DW:Z

    if-eqz v1, :cond_61

    const-wide v2, -0xcc20747096a03f0L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v0
.end method
