.class Lcom/s1243808733/util/CrashUtils$CrashActiviy$2;
.super Ljava/lang/Object;
.source "CrashUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/CrashUtils$CrashActiviy;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/CrashUtils$CrashActiviy;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/CrashUtils$CrashActiviy;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/s1243808733/util/CrashUtils$CrashActiviy$2;->this$0:Lcom/s1243808733/util/CrashUtils$CrashActiviy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 2

    .line 206
    iget-object p1, p0, Lcom/s1243808733/util/CrashUtils$CrashActiviy$2;->this$0:Lcom/s1243808733/util/CrashUtils$CrashActiviy;

    invoke-static {p1}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->-$$Nest$mreset(Lcom/s1243808733/util/CrashUtils$CrashActiviy;)V

    const/4 p1, 0x0

    return p1
.end method
