.class Lcom/androlua/LuaEditor$100000005$100000004;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final this$0:Lcom/androlua/LuaEditor$100000005;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor$100000005;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaEditor$100000005$100000004;->this$0:Lcom/androlua/LuaEditor$100000005;

    return-void
.end method

.method static access$0(Lcom/androlua/LuaEditor$100000005$100000004;)Lcom/androlua/LuaEditor$100000005;
    .registers 2

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005$100000004;->this$0:Lcom/androlua/LuaEditor$100000005;

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005$100000004;->this$0:Lcom/androlua/LuaEditor$100000005;

    invoke-static {v0}, Lcom/androlua/LuaEditor$100000005;->access$1000022(Lcom/androlua/LuaEditor$100000005;)V

    const/4 v0, 0x1

    return v0
.end method
