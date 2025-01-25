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
    .registers 3
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
    .registers 7

    .line 113
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    iget-object v0, v0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v0, :cond_10

    .line 114
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, v0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 116
    :cond_10
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    iget-object v0, v0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iget-object v1, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;->val$symbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 118
    array-length v1, v0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_30

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 119
    :try_start_26
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/s1243808733/aide/AideMainActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_30

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :catchall_30
    move-exception v0

    .line 123
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, p1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :cond_39
    return-void
.end method
