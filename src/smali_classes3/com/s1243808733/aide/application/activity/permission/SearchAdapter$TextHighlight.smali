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

.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

.field public title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V
    .registers 4

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    return-object v0
.end method
