.class Lcom/aide/ui/activities/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/CommitActivity;->onCreate(Landroid/os/Bundle;)V
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

.field final Hw:Lcom/aide/ui/activities/CommitActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xad487b9f6de2b7L

    const-wide v2, -0xb1eb83aced7bf28L

    const-class v4, Lcom/aide/ui/activities/i;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/CommitActivity;Landroid/widget/ListView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/i;->Hw:Lcom/aide/ui/activities/CommitActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/i;->FH:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x7f4dcf3721697c1L
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
    sget-boolean v0, Lcom/aide/ui/activities/i;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x7ae2f1cc48e5a38L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/aide/ui/activities/i;->FH:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lcom/aide/ui/activities/i;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v0, p3}, Lcom/aide/ui/activities/CommitActivity;->j6(Lcom/aide/ui/activities/CommitActivity;I)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/i;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, 0x7ae2f1cc48e5a38L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method
