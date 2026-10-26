.class Lcom/androlua/LuaEditor$100000002$100000001;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final this$0:Lcom/androlua/LuaEditor$100000002;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor$100000002;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaEditor$100000002$100000001;->this$0:Lcom/androlua/LuaEditor$100000002;

    return-void
.end method

.method static access$0(Lcom/androlua/LuaEditor$100000002$100000001;)Lcom/androlua/LuaEditor$100000002;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002$100000001;->this$0:Lcom/androlua/LuaEditor$100000002;

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002$100000001;->this$0:Lcom/androlua/LuaEditor$100000002;

    invoke-static {v0}, Lcom/androlua/LuaEditor$100000002;->access$1000010(Lcom/androlua/LuaEditor$100000002;)V

    const/4 v0, 0x1

    return v0
.end method
