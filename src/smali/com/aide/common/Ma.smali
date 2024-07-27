.class Lcom/aide/common/Ma;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/Wa;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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

.field final Hw:Landroid/app/Activity;

.field final Zo:Lcom/aide/common/Wa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/Ma;

    const-wide v2, 0x1ba4715548387498L

    const-wide v4, 0x3b9e1a4178b86369L    # 1.5936163375912554E-21

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/Wa;Landroid/widget/ListView;Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/common/Ma;->Zo:Lcom/aide/common/Wa;

    iput-object p2, p0, Lcom/aide/common/Ma;->FH:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/aide/common/Ma;->Hw:Landroid/app/Activity;

    iput-object p4, p0, Lcom/aide/common/Ma;->v5:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x4c2dcff980db2fa9L
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
    sget-boolean v0, Lcom/aide/common/Ma;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v0, 0x400942296b7a5dbfL    # 3.157305564567394

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/Wa$b;

    invoke-static {v0}, Lcom/aide/common/Wa$b;->j6(Lcom/aide/common/Wa$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aide/common/Ma;->Zo:Lcom/aide/common/Wa;

    invoke-static {v1}, Lcom/aide/common/Wa;->DW(Lcom/aide/common/Wa;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aide/common/Ma;->Zo:Lcom/aide/common/Wa;

    invoke-static {v1}, Lcom/aide/common/Wa;->FH(Lcom/aide/common/Wa;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/aide/common/Ma;->Zo:Lcom/aide/common/Wa;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aide/common/Wa;->j6(Lcom/aide/common/Wa;Z)Z

    iget-object v1, p0, Lcom/aide/common/Ma;->FH:Landroid/widget/ListView;

    new-instance v2, Lcom/aide/common/Wa$a;

    iget-object v3, p0, Lcom/aide/common/Ma;->Zo:Lcom/aide/common/Wa;

    iget-object v4, p0, Lcom/aide/common/Ma;->Hw:Landroid/app/Activity;

    iget-object v5, p0, Lcom/aide/common/Ma;->Zo:Lcom/aide/common/Wa;

    invoke-static {v5}, Lcom/aide/common/Wa;->DW(Lcom/aide/common/Wa;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/aide/common/Wa$a;-><init>(Lcom/aide/common/Wa;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/aide/common/Wa$b;->DW(Lcom/aide/common/Wa$b;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/aide/common/Wa$b;->DW(Lcom/aide/common/Wa$b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/aide/common/Ma;->v5:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Lcom/aide/common/Ma;->Zo:Lcom/aide/common/Wa;

    invoke-static {v1}, Lcom/aide/common/Wa;->j6(Lcom/aide/common/Wa;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aide/common/Ma;->Zo:Lcom/aide/common/Wa;

    invoke-static {v1}, Lcom/aide/common/Wa;->j6(Lcom/aide/common/Wa;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/Ma;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, 0x400942296b7a5dbfL    # 3.157305564567394

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method
