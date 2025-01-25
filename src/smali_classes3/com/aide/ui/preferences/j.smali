.class Lcom/aide/ui/preferences/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/preferences/KeyBindingsView;->j6()V
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

.field final Hw:Lcom/aide/ui/preferences/KeyBindingsView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xed7acd957b04520L

    const-wide v2, 0x1d897bdc22cf41e8L

    const-class v4, Lcom/aide/ui/preferences/j;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/preferences/KeyBindingsView;Landroid/widget/ListView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/preferences/j;->Hw:Lcom/aide/ui/preferences/KeyBindingsView;

    iput-object p2, p0, Lcom/aide/ui/preferences/j;->FH:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x54112492b87bac03L
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
    sget-boolean v0, Lcom/aide/ui/preferences/j;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0x21256c4e3d12acdL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/preferences/j;->Hw:Lcom/aide/ui/preferences/KeyBindingsView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "custom_keybindings"

    invoke-virtual {v0, v1, v2}, Labcd/Ek;->DW(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/aide/ui/preferences/j;->FH:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/preferences/KeyBindingsView$b;

    iget-object v1, p0, Lcom/aide/ui/preferences/j;->Hw:Lcom/aide/ui/preferences/KeyBindingsView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0d0719

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/aide/ui/preferences/KeyBindingsView$b;->v5:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d071a

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/aide/ui/preferences/KeyBindingsView$b;->Hw:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/common/u;

    new-instance v5, Lcom/aide/ui/preferences/i;

    invoke-direct {v5, p0, v0}, Lcom/aide/ui/preferences/i;-><init>(Lcom/aide/ui/preferences/j;Lcom/aide/ui/preferences/KeyBindingsView$b;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/common/ab;)V
    :try_end_63
    .catchall {:try_start_0 .. :try_end_63} :catchall_64

    :cond_63
    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/j;->DW:Z

    if-eqz v1, :cond_7f

    const-wide v2, -0x21256c4e3d12acdL

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7f
    throw v0
.end method
