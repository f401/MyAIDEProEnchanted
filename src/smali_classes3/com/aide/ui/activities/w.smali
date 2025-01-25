.class Lcom/aide/ui/activities/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/GotoBrowserActivity;->j6(ZLjava/util/List;Ljava/lang/String;)V
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
.field final FH:Landroid/widget/ListView;

.field final Hw:Lcom/aide/ui/activities/GotoBrowserActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x94440bad118f03dL  # -8.737246563262376E263

    const-wide v2, 0x2b1796b94b42cce0L

    const-class v4, Lcom/aide/ui/activities/w;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/GotoBrowserActivity;Landroid/widget/ListView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/w;->Hw:Lcom/aide/ui/activities/GotoBrowserActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/w;->FH:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x3696634952a70977L
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
    sget-boolean v0, Lcom/aide/ui/activities/w;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x2214da7384805074L  # 1.67000359112203E-144

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/aide/ui/activities/w;->Hw:Lcom/aide/ui/activities/GotoBrowserActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/GotoBrowserActivity;->FH(Lcom/aide/ui/activities/GotoBrowserActivity;)Lcom/aide/common/sa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/sa;->Hw()V

    iget-object v0, p0, Lcom/aide/ui/activities/w;->FH:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Xj;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/w;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, 0x2214da7384805074L  # 1.67000359112203E-144

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method
