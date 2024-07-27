.class Lcom/s1243808733/aide/MainListener$100000006;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$100000006;->val$items:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000006;->val$items:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 356
    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000006;->val$items:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 357
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->showDialog(Landroid/app/Activity;)V

    .line 359
    :goto_0
    return-void

    :cond_0
    new-instance v1, Labcd/gj;

    invoke-direct {v1}, Labcd/gj;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Labcd/gj;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
