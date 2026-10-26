.class Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChooseDir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/util/ChooseDir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public text1:Landroid/widget/TextView;

.field final this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;Landroid/view/View;)V
    .locals 1

    .line 266
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    return-void
.end method
