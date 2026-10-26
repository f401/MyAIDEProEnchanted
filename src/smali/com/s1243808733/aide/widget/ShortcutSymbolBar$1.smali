.class Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;
.super Ljava/lang/Object;
.source "ShortcutSymbolBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->loadSymbol([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

.field final val$symbol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/ShortcutSymbolBar;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    iput-object p2, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->val$symbol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    iget-object v0, v0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    iput-object v2, v0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    iget-object v0, v0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iget-object v2, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->val$symbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 118
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 119
    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/s1243808733/aide/AideMainActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 123
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
