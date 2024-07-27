.class public Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;
.super Ljava/lang/Object;
.source "BaseRItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Highlight"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V
    .registers 3

    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    iput v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    iput v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    return-object v0
.end method
