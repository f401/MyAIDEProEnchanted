.class public Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;
.super Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
.source "TwoLineItem.java"


# instance fields
.field public hig_subName:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

.field public subname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;-><init>()V

    .line 4
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_subName:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_subName:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    return-void
.end method
