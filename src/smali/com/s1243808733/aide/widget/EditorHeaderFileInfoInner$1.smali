.class Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner$1;
.super Ljava/lang/Object;
.source "EditorHeaderFileInfoInner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner$1;->this$0:Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 26
    invoke-static {}, Lcom/s1243808733/aide/AideMainActivity;->getActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/AideMainActivity;->openFileTabMenu(Landroid/view/View;)V

    return-void
.end method
