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
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/s1243808733/aide/application/activity/icons/Icon;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field ex:Ljava/lang/Throwable;

.field final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;


# direct methods
.method private constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 603
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            ">;>;"
        }
    .end annotation

    .line 608
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 613
    :cond_f
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_12
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$smgetIconZip()Ljava/io/File;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_46

    .line 617
    new-instance v3, Lorg/xutils/http/RequestParams;

    const-string v4, "https://codeload.github.com/Templarian/MaterialDesign/zip/refs/heads/master"

    invoke-direct {v3, v4}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xutils/http/RequestParams;->setSaveFilePath(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_12e
    .catchall {:try_start_12 .. :try_end_2a} :catchall_12c

    .line 621
    :try_start_2a
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v4

    const-class v5, Ljava/io/File;

    invoke-interface {v4, v3, v5}, Lorg/xutils/HttpManager;->getSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_46

    :catchall_34
    move-exception v2

    .line 623
    :try_start_35
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 624
    iput-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_12e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_12c

    .line 686
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    return-object p1

    .line 630
    :cond_46
    :goto_46
    :try_start_46
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4b} :catch_12e
    .catchall {:try_start_46 .. :try_end_4b} :catchall_12c

    .line 631
    :try_start_4b
    invoke-static {v2}, Lcom/blankj/utilcode/util/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    .line 633
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v2

    sget-object v4, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_ALL:Ljava/lang/String;

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 638
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->ZIP_META_PATH:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 639
    const-class v5, [Lcom/s1243808733/aide/application/activity/icons/Meta;

    invoke-static {v4, v5}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/s1243808733/aide/application/activity/icons/Meta;

    .line 640
    new-array v6, v1, [Ljava/io/Closeable;

    aput-object v4, v6, v0

    invoke-static {v6}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 642
    array-length v4, v5
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_85} :catch_128
    .catchall {:try_start_4b .. :try_end_85} :catchall_126

    const/4 v6, 0x0

    :goto_86
    if-ge v6, v4, :cond_111

    aget-object v7, v5, v6

    .line 643
    :try_start_8a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->ZIP_SVG_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".svg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 644
    invoke-virtual {v3, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 645
    invoke-virtual {v3, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 647
    new-instance v10, Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {v10, v7}, Lcom/s1243808733/aide/application/activity/icons/Icon;-><init>(Lcom/s1243808733/aide/application/activity/icons/Meta;)V

    .line 648
    invoke-virtual {v10, v8}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setFilePath(Ljava/lang/String;)V

    .line 650
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/caverock/androidsvg/SVG;->getFromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v8

    .line 651
    invoke-virtual {v10, v8}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setSvg(Lcom/caverock/androidsvg/SVG;)V

    .line 653
    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v7}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getTags()Ljava/util/List;

    move-result-object v7

    .line 656
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 657
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 659
    :cond_d0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_106

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 662
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f5

    .line 663
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    goto :goto_102

    .line 665
    :cond_f5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 666
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v11

    .line 668
    :goto_102
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    .line 674
    :cond_106
    :goto_106
    new-array v7, v1, [Ljava/io/Closeable;

    aput-object v9, v7, v0

    invoke-static {v7}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_86

    .line 677
    :cond_111
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object p1

    sget-object v4, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_OTHER:Ljava/lang/String;

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_11a} :catch_128
    .catchall {:try_start_8a .. :try_end_11a} :catchall_126

    .line 686
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 689
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :catchall_126
    move-exception p1

    goto :goto_148

    :catch_128
    move-exception p1

    move-object v2, p1

    move-object p1, v3

    goto :goto_12f

    :catchall_12c
    move-exception v2

    goto :goto_146

    :catch_12e
    move-exception v2

    .line 682
    :goto_12f
    :try_start_12f
    const-string v3, "loadFail"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    iput-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;

    .line 684
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v2
    :try_end_13e
    .catchall {:try_start_12f .. :try_end_13e} :catchall_12c

    .line 686
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    return-object v2

    .line 689
    :goto_146
    move-object v3, p1

    move-object p1, v2

    .line 686
    :goto_148
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 687
    goto :goto_151

    :goto_150
    throw p1

    :goto_151
    goto :goto_150
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 603
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            ">;>;)V"
        }
    .end annotation

    .line 695
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_d

    .line 697
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {p1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    .line 701
    :cond_d
    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfputsData(Ljava/util/Map;)V

    .line 702
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fputadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/IconAdapter;)V

    .line 703
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    sget-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_ALL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->setAdapterData(Ljava/lang/String;)V

    .line 704
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetmGridView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/GridView;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 706
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetmProgressView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$1;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;)V

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
