.class Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$1;
.super Ljava/lang/Object;
.source "EditorHeaderDirectoryName.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$1;->this$0:Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    .line 23
    iget-object p1, p0, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$1;->this$0:Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;

    invoke-virtual {p1}, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
