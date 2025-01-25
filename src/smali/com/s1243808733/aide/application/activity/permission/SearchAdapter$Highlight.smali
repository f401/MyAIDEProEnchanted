.class public Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;
.super Ljava/lang/Object;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Highlight"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field final this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    .line 165
    iput p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    return-void
.end method
