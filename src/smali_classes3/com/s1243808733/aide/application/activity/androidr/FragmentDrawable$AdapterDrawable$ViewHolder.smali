.class Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;
.super Ljava/lang/Object;
.source "FragmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;)V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;)Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;

    return-object v0
.end method
