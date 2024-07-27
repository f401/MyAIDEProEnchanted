.class Lcom/s1243808733/util/CrashUtils$CrashActiviy$100000001;
.super Ljava/lang/Object;
.source "CrashUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/CrashUtils$CrashActiviy;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/CrashUtils$CrashActiviy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/CrashUtils$CrashActiviy$100000001;->this$0:Lcom/s1243808733/util/CrashUtils$CrashActiviy;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/CrashUtils$CrashActiviy$100000001;)Lcom/s1243808733/util/CrashUtils$CrashActiviy;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/CrashUtils$CrashActiviy$100000001;->this$0:Lcom/s1243808733/util/CrashUtils$CrashActiviy;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/s1243808733/util/CrashUtils$CrashActiviy$100000001;->this$0:Lcom/s1243808733/util/CrashUtils$CrashActiviy;

    invoke-static {v0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->access$L1000005(Lcom/s1243808733/util/CrashUtils$CrashActiviy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    .line 198
    const/4 v0, 0x0

    return v0
.end method
