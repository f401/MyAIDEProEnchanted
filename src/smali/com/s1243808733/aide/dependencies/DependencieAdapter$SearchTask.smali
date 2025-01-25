.class Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;
.super Landroid/os/AsyncTask;
.source "DependencieAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/dependencies/DependencieAdapter;
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
        "Lcom/s1243808733/aide/dependencies/Dependencie;",
        ">;>;"
    }
.end annotation


# instance fields
.field cancel:Z

.field final this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieAdapter;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->cancel:Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 88
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    aget-object p1, p1, v0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    .line 100
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getBackuplist()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 102
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getBackuplist()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/dependencies/Dependencie;

    .line 104
    iget-boolean v3, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->cancel:Z

    if-eqz v3, :cond_3a

    return-object v0

    .line 105
    :cond_3a
    invoke-virtual {v2}, Lcom/s1243808733/aide/dependencies/Dependencie;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_29

    .line 108
    iget-object v4, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    iget-object v4, v4, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->highlightMap:Ljava/util/Map;

    new-instance v5, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;

    iget-object v6, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v5, v6, v3, v7}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;-><init>(Lcom/s1243808733/aide/dependencies/DependencieAdapter;II)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_61
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 88
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 120
    iget-boolean v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->cancel:Z

    if-eqz v0, :cond_8

    return-void

    .line 121
    :cond_8
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setList(Ljava/util/List;)V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_19

    .line 123
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->notifyDataSetInvalidated()V

    goto :goto_1e

    .line 125
    :cond_19
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->notifyDataSetChanged()V

    :goto_1e
    return-void
.end method
