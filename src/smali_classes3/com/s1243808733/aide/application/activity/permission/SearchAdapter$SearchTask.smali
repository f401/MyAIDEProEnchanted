.class Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;
.super Landroid/os/AsyncTask;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/s1243808733/aide/application/activity/permission/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field cancel:Z

.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    return-object v0
.end method


# virtual methods
.method cancel()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel:Z

    .line 68
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel(Z)Z

    return-void
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 72
    aget-object v1, p1, v0

    .line 73
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->access$L1000000(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)Ljava/util/List;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 77
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->access$L1000000(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move-object v0, v2

    .line 99
    goto :goto_0

    .line 81
    :cond_2
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel:Z

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->access$L1000000(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    .line 83
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 86
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 87
    if-gez v4, :cond_4

    if-ltz v5, :cond_5

    .line 88
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v6, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;

    iget-object v7, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-direct {v6, v7}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    .line 91
    iget-object v7, v6, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iput v4, v7, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    .line 92
    iget-object v7, v6, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    iput v4, v7, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    .line 94
    iget-object v4, v6, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iput v5, v4, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    .line 95
    iget-object v4, v6, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v4, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    .line 96
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    iget-object v4, v4, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 106
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 107
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setCurrentList(Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
