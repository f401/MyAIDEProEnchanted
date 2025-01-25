.class public Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;
.super Ljava/lang/Object;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextHighlight"
.end annotation


# instance fields
.field public subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

.field final this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

.field public title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V
    .registers 3

    .line 168
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    invoke-direct {v0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    .line 170
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    invoke-direct {v0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    return-void
.end method
