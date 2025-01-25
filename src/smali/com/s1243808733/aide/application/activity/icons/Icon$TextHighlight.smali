.class public Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;
.super Ljava/lang/Object;
.source "Icon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/icons/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextHighlight"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/icons/Icon;

.field public title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/icons/Icon;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->this$0:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    invoke-direct {v0, p1}, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;-><init>(Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    return-void
.end method
