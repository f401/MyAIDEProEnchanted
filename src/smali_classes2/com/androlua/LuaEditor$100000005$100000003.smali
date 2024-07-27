.class Lcom/androlua/LuaEditor$100000005$100000003;
.super Landroid/widget/EditText;


# instance fields
.field private final this$0:Lcom/androlua/LuaEditor$100000005;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor$100000005;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaEditor$100000005$100000003;->this$0:Lcom/androlua/LuaEditor$100000005;

    return-void
.end method

.method static access$0(Lcom/androlua/LuaEditor$100000005$100000003;)Lcom/androlua/LuaEditor$100000005;
    .registers 2

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005$100000003;->this$0:Lcom/androlua/LuaEditor$100000005;

    return-object v0
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005$100000003;->this$0:Lcom/androlua/LuaEditor$100000005;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androlua/LuaEditor$100000005;->access$S1000015(Lcom/androlua/LuaEditor$100000005;I)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005$100000003;->this$0:Lcom/androlua/LuaEditor$100000005;

    invoke-static {v0}, Lcom/androlua/LuaEditor$100000005;->access$1000022(Lcom/androlua/LuaEditor$100000005;)V

    :cond_0
    return-void
.end method
