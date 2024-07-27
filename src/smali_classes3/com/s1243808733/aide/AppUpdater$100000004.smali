.class Lcom/s1243808733/aide/AppUpdater$100000004;
.super Ljava/lang/Object;
.source "AppUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AppUpdater;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AppUpdater;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AppUpdater$100000004;->this$0:Lcom/s1243808733/aide/AppUpdater;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AppUpdater$100000004;)Lcom/s1243808733/aide/AppUpdater;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AppUpdater$100000004;->this$0:Lcom/s1243808733/aide/AppUpdater;

    return-object v0
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 132
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
