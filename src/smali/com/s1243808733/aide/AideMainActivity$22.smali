.class Lcom/s1243808733/aide/AideMainActivity$22;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->setMenuCode(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    .line 1284
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$22;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;Ljava/lang/String;)V
    .registers 3

    .line 1288
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->addToEditor(Ljava/lang/String;)V

    return-void
.end method
