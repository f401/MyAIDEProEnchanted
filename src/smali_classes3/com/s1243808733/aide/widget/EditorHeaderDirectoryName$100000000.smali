.class Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$100000000;
.super Ljava/lang/Object;
.source "EditorHeaderDirectoryName.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$100000000;->this$0:Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$100000000;)Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$100000000;->this$0:Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$100000000;->this$0:Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;

    invoke-virtual {v0}, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    .line 24
    const/4 v0, 0x1

    return v0
.end method
