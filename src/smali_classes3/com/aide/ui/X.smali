.class Lcom/aide/ui/X;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
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
.field final FH:Landroid/view/View;

.field final Hw:Lcom/aide/ui/Z;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x818ea629444fba9L

    const-wide v2, 0x66013e68df765dcL

    const-class v4, Lcom/aide/ui/X;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/Z;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    iput-object p2, p0, Lcom/aide/ui/X;->FH:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1485e99bd23b4773L
    .end annotation

    const-wide v0, -0x51e70d7a71eb5db9L  # -1.2540812775864772E-86

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/X;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    invoke-static {v4}, Lcom/aide/ui/Z;->DW(Lcom/aide/ui/Z;)Lcom/aide/ui/MainActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/X;->FH:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v2, v3}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    invoke-static {v2}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    invoke-static {v3}, Lcom/aide/ui/Z;->FH(Lcom/aide/ui/Z;)I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    invoke-static {v4}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;)Landroid/widget/PopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    invoke-static {v2}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;)Landroid/widget/PopupMenu;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;Landroid/view/Menu;)Z

    iget-object v2, p0, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    invoke-static {v2}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;)Landroid/widget/PopupMenu;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/W;

    invoke-direct {v3, p0}, Lcom/aide/ui/W;-><init>(Lcom/aide/ui/X;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v2, p0, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    invoke-static {v2}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_60

    return-void

    :catchall_60
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/X;->DW:Z

    if-eqz v3, :cond_68

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_68
    throw v2
.end method
