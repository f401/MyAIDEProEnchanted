.class public Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
.super Ljava/lang/Object;
.source "BaseRItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;
    }
.end annotation


# instance fields
.field public hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    .line 12
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    return-void
.end method
