.class Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;
.super Ljava/lang/Object;
.source "FragmentColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public subtitle:Lcom/s1243808733/view/ColorBackgroundTextView;

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;)Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;

    return-object v0
.end method
