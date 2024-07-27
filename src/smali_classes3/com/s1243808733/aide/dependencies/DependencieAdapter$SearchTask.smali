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
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/s1243808733/aide/dependencies/Dependencie;",
        ">;>;"
    }
.end annotation


# instance fields
.field cancel:Z

.field private final this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieAdapter;)V
    .registers 2

    .line 128
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->cancel:Z

    return-void
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 98
    const/4 v0, 0x0

    aget-object v0, p1, v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getBackuplist()Ljava/util/List;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getBackuplist()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 109
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 114
    goto :goto_0

    .line 103
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/dependencies/Dependencie;

    .line 104
    iget-boolean v4, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->cancel:Z

    if-eqz v4, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/Dependencie;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 107
    if-ltz v4, :cond_1

    .line 108
    iget-object v5, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    iget-object v5, v5, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->highlightMap:Ljava/util/Map;

    new-instance v6, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;

    iget-object v7, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    invoke-direct {v6, v7, v4, v8}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;-><init>(Lcom/s1243808733/aide/dependencies/DependencieAdapter;II)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 119
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 120
    iget-boolean v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->cancel:Z

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setList(Ljava/util/List;)V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->this$0:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
