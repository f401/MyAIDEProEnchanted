.class Lcom/androlua/LuaEditor$100000002$100000000;
.super Landroid/widget/EditText;


# instance fields
.field private final this$0:Lcom/androlua/LuaEditor$100000002;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor$100000002;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaEditor$100000002$100000000;->this$0:Lcom/androlua/LuaEditor$100000002;

    return-void
.end method

.method static access$0(Lcom/androlua/LuaEditor$100000002$100000000;)Lcom/androlua/LuaEditor$100000002;
    .registers 2

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002$100000000;->this$0:Lcom/androlua/LuaEditor$100000002;

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

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002$100000000;->this$0:Lcom/androlua/LuaEditor$100000002;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androlua/LuaEditor$100000002;->access$S1000005(Lcom/androlua/LuaEditor$100000002;I)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002$100000000;->this$0:Lcom/androlua/LuaEditor$100000002;

    invoke-static {v0}, Lcom/androlua/LuaEditor$100000002;->access$1000010(Lcom/androlua/LuaEditor$100000002;)V

    :cond_11
    return-void
.end method
