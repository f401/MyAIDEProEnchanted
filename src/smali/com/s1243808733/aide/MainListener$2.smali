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
    .registers 2
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
    .registers 4

    .line 355
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$2;->val$items:[Ljava/lang/String;

    aget-object v0, p1, p2

    .line 356
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_11

    .line 357
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->showDialog(Landroid/app/Activity;)V

    goto :goto_1d

    .line 359
    :cond_11
    new-instance p1, Labcd/gj;

    invoke-direct {p1}, Labcd/gj;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Labcd/gj;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method
