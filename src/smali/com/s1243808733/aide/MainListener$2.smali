.class Lcom/s1243808733/aide/MainListener$2;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener;->onAddToProject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$2;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$2;->val$items:[Ljava/lang/String;

    aget-object v1, v0, p2

    .line 356
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 357
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->showDialog(Landroid/app/Activity;)V

    .line 359
    :goto_0
    return-void

    :cond_0
    new-instance v0, Labcd/gj;

    invoke-direct {v0}, Labcd/gj;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Labcd/gj;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
