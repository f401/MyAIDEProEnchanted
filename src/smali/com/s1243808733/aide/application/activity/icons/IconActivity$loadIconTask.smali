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

.field final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;


# direct methods
.method private constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 603
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 14
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

    const/4 v1, 0x0

    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 608
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v1

    .line 689
    :goto_0
    return-object v1

    .line 613
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$smgetIconZip()Ljava/io/File;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 617
    new-instance v2, Lorg/xutils/http/RequestParams;

    const-string v3, "https://codeload.github.com/Templarian/MaterialDesign/zip/refs/heads/master"

    invoke-direct {v2, v3}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/http/RequestParams;->setSaveFilePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    :try_start_1
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v3

    const-class v5, Ljava/io/File;

    invoke-interface {v3, v2, v5}, Lorg/xutils/HttpManager;->getSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    :cond_1
    :try_start_2
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 631
    :try_start_3
    invoke-static {v0}, Lcom/blankj/utilcode/util/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    .line 633
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

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

    .line 639
    const-class v0, [Lcom/s1243808733/aide/application/activity/icons/Meta;

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/application/activity/icons/Meta;

    .line 640
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 642
    array-length v8, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_5

    aget-object v1, v0, v3

    .line 643
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->ZIP_SVG_PATH:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".svg"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 644
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 645
    invoke-virtual {v2, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 647
    new-instance v10, Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {v10, v1}, Lcom/s1243808733/aide/application/activity/icons/Icon;-><init>(Lcom/s1243808733/aide/application/activity/icons/Meta;)V

    .line 648
    invoke-virtual {v10, v5}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setFilePath(Ljava/lang/String;)V

    .line 650
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/SVG;->getFromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v5

    .line 651
    invoke-virtual {v10, v5}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setSvg(Lcom/caverock/androidsvg/SVG;)V

    .line 653
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getTags()Ljava/util/List;

    move-result-object v1

    .line 656
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 657
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v9, v1, v5

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 621
    :catchall_0
    move-exception v0

    .line 623
    const/4 v2, 0x1

    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 624
    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 686
    new-array v0, v13, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 659
    :cond_3
    :try_start_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 662
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 663
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 668
    :goto_3
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    .line 689
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 682
    :goto_4
    :try_start_7
    const-string v2, "loadFail"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;

    .line 684
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    .line 686
    new-array v2, v13, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    move-object v1, v0

    goto/16 :goto_0

    .line 665
    :cond_4
    :try_start_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 666
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v5

    goto :goto_3

    .line 677
    :cond_5
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_OTHER:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 686
    new-array v0, v13, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 689
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 686
    :goto_5
    new-array v1, v13, [Ljava/io/Closeable;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 687
    throw v0

    .line 689
    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 603
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 3
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

    .line 695
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 697
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 708
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfputsData(Ljava/util/Map;)V

    .line 702
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-direct {v1, v2}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fputadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/IconAdapter;)V

    .line 703
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    sget-object v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_ALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->setAdapterData(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetmGridView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 706
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetmProgressView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$1;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method
