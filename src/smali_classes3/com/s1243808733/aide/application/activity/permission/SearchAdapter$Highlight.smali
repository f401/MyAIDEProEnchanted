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

.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V
    .registers 3

    const/4 v0, -0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    iput v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    iput v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    return-object v0
.end method
