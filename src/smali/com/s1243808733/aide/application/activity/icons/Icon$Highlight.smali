.class public Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;
.super Ljava/lang/Object;
.source "Icon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/icons/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Highlight"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field final this$0:Lcom/s1243808733/aide/application/activity/icons/Icon;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/icons/Icon;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->this$0:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    .line 68
    iput p1, p0, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->end:I

    return-void
.end method
