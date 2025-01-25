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

.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    .line 18
    iput p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    return-void
.end method
