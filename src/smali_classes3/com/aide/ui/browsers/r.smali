.class Lcom/aide/ui/browsers/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/browsers/SearchBrowser;->Hw()V
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

.field final Hw:Lcom/aide/ui/browsers/SearchBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x61ed86d6886fb123L  # 5.313525099372391E163

    const-wide v2, -0x8705d11c4b0ebdL

    const-class v4, Lcom/aide/ui/browsers/r;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/browsers/SearchBrowser;Lcom/aide/ui/views/CustomKeysListView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/browsers/r;->Hw:Lcom/aide/ui/browsers/SearchBrowser;

    iput-object p2, p0, Lcom/aide/ui/browsers/r;->FH:Lcom/aide/ui/views/CustomKeysListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x4568c771ad9ffc47L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/r;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0x1d8c95d103b7a90fL  # -1.7888341820912448E166

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/aide/ui/browsers/r;->FH:Lcom/aide/ui/views/CustomKeysListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/SearchBrowser$b;

    if-nez v0, :cond_24

    return-void

    :cond_24
    iget-object v1, p0, Lcom/aide/ui/browsers/r;->Hw:Lcom/aide/ui/browsers/SearchBrowser;

    invoke-static {v1}, Lcom/aide/ui/browsers/SearchBrowser;->DW(Lcom/aide/ui/browsers/SearchBrowser;)Lcom/aide/ui/MainActivity;

    move-result-object v1

    iget-object v0, v0, Lcom/aide/ui/browsers/SearchBrowser$b;->Zo:Labcd/Tl;

    invoke-virtual {v1, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    iget-object v0, p0, Lcom/aide/ui/browsers/r;->Hw:Lcom/aide/ui/browsers/SearchBrowser;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/r;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, -0x1d8c95d103b7a90fL  # -1.7888341820912448E166

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    throw v0
.end method
