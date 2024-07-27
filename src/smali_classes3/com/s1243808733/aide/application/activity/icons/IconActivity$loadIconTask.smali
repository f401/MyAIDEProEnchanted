.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;
.super Landroid/os/AsyncTask;
.source "IconActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/s1243808733/aide/application/activity/icons/Icon;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field ex:Ljava/lang/Throwable;

.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V
    .registers 2

    .line 721
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 608
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v1

    .line 689
    :goto_0
    return-object v1

    .line 611
    :cond_0
    check-cast v0, Ljava/util/zip/ZipFile;

    .line 613
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$1000036()Ljava/io/File;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 617
    new-instance v2, Lorg/xutils/http/RequestParams;

    const-string v3, "https://codeload.github.com/Templarian/MaterialDesign/zip/refs/heads/master"

    invoke-direct {v2, v3}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/http/RequestParams;->setSaveFilePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    :try_start_1
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    const-string v5, "java.io.File"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    :try_start_3
    invoke-interface {v3, v2, v5}, Lorg/xutils/HttpManager;->getSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 630
    :cond_1
    :try_start_4
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 631
    :try_start_5
    invoke-static {v1}, Lcom/blankj/utilcode/util/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    .line 633
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_ALL:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 638
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->ZIP_META_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 639
    :try_start_6
    const-string v0, "[Lcom.s1243808733.aide.application.activity.icons.Meta;"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    :try_start_7
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/application/activity/icons/Meta;

    .line 640
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    move v3, v4

    .line 674
    :goto_1
    array-length v1, v0

    if-lt v3, v1, :cond_2

    .line 677
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_OTHER:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 686
    new-array v0, v12, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 689
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v1

    goto/16 :goto_0

    .line 621
    :catch_0
    move-exception v1

    :try_start_8
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_1
    move-exception v1

    .line 623
    const/4 v2, 0x1

    :try_start_9
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 624
    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;

    .line 625
    const/4 v1, 0x0

    check-cast v1, Ljava/util/Map;

    .line 686
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 677
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 682
    :goto_2
    :try_start_a
    const-string v0, "loadFail"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;

    .line 684
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v1

    .line 686
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_3
    new-array v0, v12, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    throw v1

    .line 639
    :catch_3
    move-exception v0

    :try_start_b
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 677
    :catch_4
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .line 642
    :cond_2
    aget-object v1, v0, v3

    .line 643
    :try_start_c
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v9, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->ZIP_SVG_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, ".svg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 644
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 645
    invoke-virtual {v2, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 647
    new-instance v9, Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {v9, v1}, Lcom/s1243808733/aide/application/activity/icons/Icon;-><init>(Lcom/s1243808733/aide/application/activity/icons/Meta;)V

    .line 648
    invoke-virtual {v9, v5}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setFilePath(Ljava/lang/String;)V

    .line 650
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/SVG;->getFromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v5

    .line 651
    invoke-virtual {v9, v5}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setSvg(Lcom/caverock/androidsvg/SVG;)V

    .line 653
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getTags()Ljava/util/List;

    move-result-object v1

    .line 656
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 657
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v8, v1, v5

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 659
    :cond_4
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 668
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 659
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 660
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 663
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 668
    :goto_5
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 665
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 666
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v1, v5

    goto :goto_5

    .line 686
    :catchall_1
    move-exception v1

    move-object v2, v0

    goto/16 :goto_3
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 695
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 708
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$S1000003(Ljava/util/Map;)V

    .line 702
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-direct {v1, v2}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$S1000004(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/IconAdapter;)V

    .line 703
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    sget-object v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_ALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->setAdapterData(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000001(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000004(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 706
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000004(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$100000018;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$100000018;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method
