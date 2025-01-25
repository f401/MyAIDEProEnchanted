.class public Lcom/s1243808733/aide/completion/MyOnItemClickListener;
.super Ljava/lang/Object;
.source "MyOnItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final FH:Lcom/aide/ui/views/CompletionListView;

.field final Hw:Lcom/aide/ui/j;

.field private im:Landroid/view/inputmethod/InputMethodManager;

.field private newInstance:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/aide/ui/j;Lcom/aide/ui/views/CompletionListView;)V
    .registers 6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/s1243808733/aide/completion/MyOnItemClickListener;->Hw:Lcom/aide/ui/j;

    .line 24
    iput-object p2, p0, Lcom/s1243808733/aide/completion/MyOnItemClickListener;->FH:Lcom/aide/ui/views/CompletionListView;

    .line 26
    const-string v0, "com.aide.ui.f"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/s1243808733/aide/completion/MyOnItemClickListener;->newInstance:Landroid/widget/AdapterView$OnItemClickListener;

    .line 28
    invoke-virtual {p2}, Lcom/aide/ui/views/CompletionListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/s1243808733/aide/completion/MyOnItemClickListener;->im:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/s1243808733/aide/completion/MyOnItemClickListener;->newInstance:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 34
    iget-object p1, p0, Lcom/s1243808733/aide/completion/MyOnItemClickListener;->im:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOConsole()Lcom/aide/ui/views/editor/OConsole;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method
