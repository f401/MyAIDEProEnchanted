.class public Labcd/FBBB;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static log(Landroid/view/View;Lcom/aide/ui/browsers/FileBrowser$b;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-boolean v1, p1, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p1, p1, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "FH:%s\nv5:%s\nHw:%s\nVH:%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Labcd/FBBB;->log(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
