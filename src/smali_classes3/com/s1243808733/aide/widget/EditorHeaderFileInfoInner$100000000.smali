.class Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner$100000000;
.super Ljava/lang/Object;
.source "EditorHeaderFileInfoInner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner$100000000;->this$0:Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner$100000000;)Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner$100000000;->this$0:Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 26
    invoke-static {}, Lcom/s1243808733/aide/AideMainActivity;->getActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/AideMainActivity;->openFileTabMenu(Landroid/view/View;)V

    return-void
.end method
