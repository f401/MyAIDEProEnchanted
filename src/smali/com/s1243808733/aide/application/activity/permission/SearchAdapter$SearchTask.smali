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
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/s1243808733/aide/application/activity/permission/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field cancel:Z

.field final this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel:Z

    .line 68
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 64
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_8c

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_8c

    .line 77
    :cond_11
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :goto_1c
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->-$$Nest$fgetbackuplist(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8b

    .line 81
    iget-boolean v2, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel:Z

    if-eqz v2, :cond_2d

    return-object v1

    .line 82
    :cond_2d
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->-$$Nest$fgetbackuplist(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/application/activity/permission/Permission;

    .line 83
    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 86
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v3, :cond_59

    if-ltz v4, :cond_88

    .line 88
    :cond_59
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v5, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;

    iget-object v6, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-direct {v5, v6}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    .line 91
    iget-object v6, v5, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iput v3, v6, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    .line 92
    iget-object v6, v5, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    iput v3, v6, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    .line 94
    iget-object v3, v5, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iput v4, v3, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    .line 95
    iget-object v3, v5, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    .line 96
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    iget-object v3, v3, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_8b
    return-object v1

    .line 74
    :cond_8c
    :goto_8c
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->-$$Nest$fgetbackuplist(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 64
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 107
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel:Z

    if-eqz v0, :cond_8

    return-void

    .line 108
    :cond_8
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setCurrentList(Ljava/util/List;)V

    .line 109
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method
