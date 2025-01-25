.class Lcom/aide/ui/browsers/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/browsers/FileBrowser;->VH()V
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

.field final Hw:Lcom/aide/ui/browsers/FileBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x4e254192869da105L  # 2.865322281020565E68

    const-wide v2, 0xd84cb93f20571e8L  # 1.5227800050170692E-243

    const-class v4, Lcom/aide/ui/browsers/g;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/views/CustomKeysListView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/browsers/g;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    iput-object p2, p0, Lcom/aide/ui/browsers/g;->FH:Lcom/aide/ui/views/CustomKeysListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0xc1fbeaf6d49928bL
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
    sget-boolean v0, Lcom/aide/ui/browsers/g;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x44a0fd3efcaa55cL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/aide/ui/browsers/g;->FH:Lcom/aide/ui/views/CustomKeysListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/FileBrowser$b;

    iget-object v1, p0, Lcom/aide/ui/browsers/g;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    invoke-static {v1, v0}, Lcom/aide/ui/browsers/FileBrowser;->j6(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/browsers/FileBrowser$b;)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/g;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x44a0fd3efcaa55cL

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xdea5c4f1f36a6c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-wide v0, -0x853c2086fb4dd89L  # -2.914086952534151E268

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/g;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/browsers/FileBrowser;->j6(Lcom/aide/ui/browsers/FileBrowser;Lcom/aide/ui/browsers/FileBrowser$b;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/g;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method
