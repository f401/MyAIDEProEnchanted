.class Lcom/s1243808733/aide/widget/ShortcutSymbolBar$100000000;
.super Ljava/lang/Object;
.source "ShortcutSymbolBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

.field private final val$symbol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/ShortcutSymbolBar;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$100000000;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    iput-object p2, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$100000000;->val$symbol:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/widget/ShortcutSymbolBar$100000000;)Lcom/s1243808733/aide/widget/ShortcutSymbolBar;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$100000000;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$100000000;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    iget-object v0, v0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$100000000;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    iput-object v2, v0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$100000000;->this$0:Lcom/s1243808733/aide/widget/ShortcutSymbolBar;

    iget-object v0, v0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iget-object v2, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$100000000;->val$symbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_1

    move v0, v1

    .line 119
    :goto_0
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v3, :cond_2

    .line 123
    :cond_1
    :goto_1
    return-void

    .line 118
    :cond_2
    aget-object v3, v2, v0

    .line 119
    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/s1243808733/aide/AideMainActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_1
.end method
