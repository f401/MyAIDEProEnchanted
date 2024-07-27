.class public Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;
.super Ljava/lang/Object;
.source "BaseRFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mListView:Landroid/widget/ListView;

.field public mSearchView:Landroid/widget/EditText;

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;)Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    return-object v0
.end method
