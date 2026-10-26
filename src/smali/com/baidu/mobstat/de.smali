.class public Lcom/baidu/mobstat/de;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/GridView;)I
    .locals 8

    .line 1518
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    .line 1520
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1531
    :goto_0
    return v1

    .line 1524
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1527
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1529
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 1531
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    int-to-double v4, v0

    int-to-double v6, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    :goto_1
    mul-int/2addr v0, v2

    if-lt v0, v1, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/widget/ListView;)I
    .locals 3

    const/4 v0, 0x0

    .line 1493
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1495
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1511
    :cond_0
    :goto_0
    return v0

    .line 1499
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1502
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1504
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_1
    mul-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1511
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1504
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 1350
    :cond_0
    return-object v1

    .line 1338
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    move-object v2, p0

    :goto_2
    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_3

    .line 1347
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1348
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1349
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1350
    invoke-static {v0}, Lcom/baidu/mobstat/de;->n(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 1350
    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1981
    const-string v1, ""

    if-nez p0, :cond_1

    const-string v0, ""

    .line 2014
    :cond_0
    :goto_0
    return-object v0

    .line 1985
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1986
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1988
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 1995
    :cond_2
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    .line 2003
    :cond_3
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_4

    const-string v0, ""

    goto :goto_0

    .line 2008
    :cond_4
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2010
    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, ""

    goto :goto_0

    .line 2014
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .line 445
    invoke-static {p0}, Lcom/baidu/mobstat/de;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    invoke-static {v0}, Lcom/baidu/mobstat/dk;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x1000

    .line 116
    const-string v1, ""

    if-nez p0, :cond_1

    const-string v0, ""

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 123
    instance-of v0, p0, Landroid/widget/EditText;

    if-nez v0, :cond_7

    move-object v0, p0

    .line 124
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 126
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_1
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 132
    check-cast p0, Landroid/widget/Switch;

    .line 135
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v1

    .line 138
    :goto_2
    if-eqz v1, :cond_2

    .line 142
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 158
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 160
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 161
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    .line 146
    :cond_4
    instance-of v0, p0, Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    .line 147
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 148
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 149
    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 151
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 252
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 252
    :cond_0
    if-ne p0, p1, :cond_1

    .line 257
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    .line 262
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_4

    .line 267
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_4
    invoke-static {v1}, Lcom/baidu/mobstat/de;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 272
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_5
    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    move v3, v2

    .line 276
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    .line 293
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1

    .line 277
    :cond_6
    if-ne v2, p0, :cond_8

    .line 298
    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_9

    move v2, v3

    goto :goto_2

    .line 292
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/de;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_2
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 352
    :goto_0
    return-object v0

    .line 311
    :cond_0
    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 320
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 323
    :cond_2
    check-cast v0, Landroid/view/View;

    .line 325
    const-string v2, "ListView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    :try_start_0
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 329
    check-cast v0, Landroid/widget/ListView;

    .line 330
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 335
    :cond_3
    const-string v2, "GridView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 337
    :try_start_1
    instance-of v2, v0, Landroid/widget/GridView;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 338
    check-cast v0, Landroid/widget/GridView;

    .line 339
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_4
    const-string v2, "RecyclerView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    :try_start_2
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 352
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 232
    const-string v0, ""

    if-nez p0, :cond_1

    const-string v0, ""

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method private static a(Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1255
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1258
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1261
    :goto_0
    return-object v0

    .line 1258
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1257
    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 1261
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1187
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1189
    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 6

    .line 918
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    .line 922
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 924
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 925
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 926
    const-string v3, "p"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 928
    const-string v4, "i"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 931
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1714
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    .line 1733
    :goto_0
    return-object v0

    .line 1720
    :cond_0
    const v0, -0x17aeb

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1721
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1722
    check-cast v0, Ljava/lang/String;

    .line 1725
    :goto_1
    invoke-static {p0, p1}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;Z)Ljava/util/Map;

    move-result-object v2

    .line 1727
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1728
    const-string v3, "title"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    :goto_2
    const-string v0, "content"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1733
    const-string v2, "content"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 1725
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 1731
    :cond_2
    const-string v0, "title"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1730
    const-string v3, "title"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;
    .locals 5

    .line 618
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-object v1

    .line 626
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_0

    :goto_2
    if-eqz p1, :cond_8

    .line 636
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 637
    const-string v0, "p"

    invoke-static {p1}, Lcom/baidu/mobstat/de;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    invoke-static {p1}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 643
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 644
    check-cast v0, Landroid/view/View;

    .line 645
    invoke-static {v0}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 648
    :goto_3
    invoke-static {p1, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 650
    invoke-static {p1, v2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 653
    :cond_2
    const-string v4, "i"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v0, "t"

    invoke-static {p1}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_8

    if-ne p1, v2, :cond_4

    move-object v0, v1

    .line 685
    :goto_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 687
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5
    if-ltz v2, :cond_0

    .line 688
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 626
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    .line 648
    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 665
    :cond_4
    :try_start_3
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_5

    move-object v0, v1

    goto :goto_4

    .line 670
    :cond_5
    invoke-static {p1}, Lcom/baidu/mobstat/de;->x(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v1

    goto :goto_4

    .line 675
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_7

    move-object v0, v1

    goto :goto_4

    .line 679
    :cond_7
    check-cast v0, Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object p1, v0

    goto/16 :goto_2

    .line 682
    :catch_1
    move-exception v0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_4

    .line 688
    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_4
.end method

.method private static a(Landroid/view/View;Ljava/util/LinkedHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    .line 1873
    :cond_0
    :goto_0
    return-void

    .line 1860
    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 1861
    check-cast v0, Landroid/widget/TextView;

    .line 1863
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1865
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1867
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1868
    check-cast p0, Landroid/view/ViewGroup;

    .line 1869
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 1872
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1873
    invoke-static {v2, p1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/util/LinkedHashMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 2055
    :cond_0
    :goto_0
    return v1

    .line 2028
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2032
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2037
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2038
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2042
    const/high16 v3, 0x10000

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 2049
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2050
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    .line 2055
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 2042
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/view/View;F)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return v0

    .line 1906
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1907
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int v3, v1, v2

    if-lez v3, :cond_0

    .line 1913
    invoke-static {p0}, Lcom/baidu/mobstat/de;->w(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1914
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 545
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1307
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/widget/GridView;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1673
    :cond_0
    :goto_0
    return v0

    .line 1663
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1664
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1668
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1670
    invoke-virtual {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    div-int v0, v2, v0

    .line 1673
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_0

    .line 1670
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static b(Landroid/widget/ListView;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return v0

    .line 1647
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1648
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1649
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 81
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .line 460
    invoke-static {p0}, Lcom/baidu/mobstat/de;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    invoke-static {v0}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 180
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 181
    const-string v0, "ListView"

    .line 187
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 190
    const-string v2, "android.widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.view"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    :try_start_0
    const-string v1, "android.support.v7.widget.RecyclerView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string v0, "RecyclerView"

    .line 203
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/de;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const-string v0, "Object"

    :cond_2
    return-object v0

    .line 182
    :cond_3
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    .line 183
    const-string v0, "WebView"

    goto :goto_0

    .line 182
    :cond_4
    const-string v0, ""

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1212
    const-string v0, ""

    if-nez p0, :cond_1

    const-string v0, ""

    .line 1219
    :cond_0
    :goto_0
    return-object v0

    .line 1216
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v1

    .line 1218
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1169
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1171
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/cp$a;->a:I

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 1175
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 7

    .line 941
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 960
    :cond_0
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    .line 945
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 947
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 948
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 949
    const-string v3, "p"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 951
    const-string v4, "i"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 952
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v3, "d"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 956
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 960
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1581
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 1636
    :goto_0
    return-object v0

    .line 1588
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1589
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1594
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 1596
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1597
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    move v4, v0

    move v5, v3

    .line 1623
    :goto_1
    add-int v3, v6, v5

    add-int v0, v7, v4

    if-lez v3, :cond_7

    :goto_2
    if-lez v0, :cond_1

    move v1, v0

    .line 1635
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0

    .line 1598
    :cond_2
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    .line 1602
    check-cast p1, Landroid/widget/ScrollView;

    .line 1603
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1604
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v3

    .line 1605
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    move v4, v0

    move v5, v3

    goto :goto_1

    .line 1607
    :cond_3
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 1610
    check-cast p1, Landroid/widget/ListView;

    .line 1611
    invoke-static {p1}, Lcom/baidu/mobstat/de;->b(Landroid/widget/ListView;)I

    move-result v0

    :goto_3
    move v4, v0

    move v5, v1

    goto :goto_1

    .line 1612
    :cond_4
    instance-of v0, p1, Landroid/widget/GridView;

    if-eqz v0, :cond_5

    .line 1614
    check-cast p1, Landroid/widget/GridView;

    .line 1615
    invoke-static {p1}, Lcom/baidu/mobstat/de;->b(Landroid/widget/GridView;)I

    move-result v0

    goto :goto_3

    .line 1616
    :cond_5
    invoke-static {p1}, Lcom/baidu/mobstat/de;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1621
    :try_start_0
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 1622
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1623
    :try_start_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v4, v3

    move v5, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    :goto_4
    move v4, v1

    move v5, v0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v3, v1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method public static b(Landroid/view/View;Z)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v10, 0x100

    const/4 v3, 0x0

    .line 1754
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v6

    .line 1850
    :goto_0
    return-object v0

    .line 1761
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1762
    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/util/LinkedHashMap;)V

    .line 1765
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1766
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v6

    goto :goto_0

    .line 1772
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1773
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    move v4, v3

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v5, ""

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1774
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_f

    .line 1780
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1781
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 1782
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1786
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1789
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1790
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1792
    const-string v2, "_"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    .line 1798
    const-string v2, "\u5e7f\u544a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_3
    const/4 v0, 0x1

    move v2, v1

    move v4, v0

    goto :goto_1

    .line 1810
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1811
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v4, :cond_6

    .line 1812
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_5

    .line 1813
    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1816
    :cond_5
    const-string v1, "content"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1819
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 1820
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_7

    .line 1824
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1825
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 1826
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1830
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1833
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1834
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1836
    const-string v1, "_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1830
    :cond_9
    const-string v0, ""

    goto :goto_5

    .line 1844
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1845
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1846
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_b

    .line 1847
    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1850
    :cond_b
    const-string v1, "title"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object v0, v6

    goto/16 :goto_0

    :cond_d
    move v2, v1

    goto/16 :goto_1

    :cond_e
    move-object v0, v5

    goto/16 :goto_3

    :cond_f
    move v1, v2

    goto/16 :goto_2
.end method

.method public static b(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    .line 722
    const-string v1, "ListView"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RecyclerView"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GridView"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 364
    const-string v2, ""

    if-nez p0, :cond_1

    const-string v2, ""

    .line 435
    :cond_0
    :goto_0
    return-object v2

    .line 368
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 375
    const-string v3, "android.widget"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.view"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    check-cast v0, Landroid/view/ViewGroup;

    .line 382
    :try_start_0
    const-string v1, "android.support.v4.view.ViewPager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    const-string v2, ""

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1

    .line 391
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v2, ""

    goto :goto_0

    .line 396
    :cond_3
    :try_start_1
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 399
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v6

    move v3, v4

    move v1, v4

    :goto_2
    if-ge v3, v6, :cond_5

    .line 402
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 403
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {v4}, Lcom/baidu/mobstat/de;->e(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 410
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lt v3, v7, :cond_6

    if-lt v1, v7, :cond_6

    .line 412
    :try_start_2
    new-instance v1, Lcom/baidu/mobstat/de$1;

    invoke-direct {v1}, Lcom/baidu/mobstat/de$1;-><init>()V

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    :goto_3
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 423
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    div-int v1, v3, v1

    .line 424
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    .line 426
    rem-int v0, v1, v0

    .line 428
    :goto_4
    :try_start_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v2, v0

    .line 435
    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public static c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1683
    const v0, -0x17ae9

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1684
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1685
    check-cast v0, Ljava/lang/String;

    .line 1689
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-object p1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 219
    const-string v0, ""

    .line 227
    :goto_0
    return-object v0

    .line 222
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v1, "android.widget"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/de;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/de;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 6

    .line 976
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 990
    :cond_0
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    .line 980
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 982
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 983
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 984
    const-string v3, "p"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 985
    invoke-static {v3}, Lcom/baidu/mobstat/de;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 987
    const-string v4, "i"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 988
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 990
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1967
    :cond_0
    :goto_0
    return v0

    .line 1962
    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1967
    invoke-static {p1}, Lcom/baidu/mobstat/de;->x(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Landroid/graphics/Bitmap;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-object v0

    .line 477
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 478
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 479
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 485
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v1

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v0

    :goto_2
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 488
    :cond_2
    :goto_3
    throw v3

    .line 485
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    .line 488
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    .line 485
    :catch_3
    move-exception v2

    goto :goto_4
.end method

.method public static d(Landroid/app/Activity;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1268
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 7

    .line 1006
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    :cond_0
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    .line 1010
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1012
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1013
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1014
    const-string v3, "p"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    invoke-static {v3}, Lcom/baidu/mobstat/de;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1017
    const-string v4, "i"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1018
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    const-string v3, "d"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1026
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Landroid/view/View;)Z
    .locals 1

    .line 505
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 512
    :goto_0
    return v0

    .line 510
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 512
    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public static e(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-object v0

    .line 522
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 524
    invoke-static {p0, v1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static e(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 1197
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1202
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1201
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static f(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x100

    .line 1422
    const-string v1, ""

    if-eqz p0, :cond_2

    .line 1423
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1425
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1429
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1433
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1434
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    .line 1425
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static f(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 588
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 594
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":id/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    const-string v1, ":id/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x4

    .line 598
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 605
    const-string v0, ""

    :cond_1
    return-object v0

    .line 588
    :catch_0
    move-exception v0

    .line 594
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .line 2067
    const-string v1, ""

    if-nez p0, :cond_1

    const-string v0, ""

    .line 2083
    :cond_0
    :goto_0
    return-object v0

    .line 2072
    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/de;->h(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 2073
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2079
    invoke-static {p0}, Lcom/baidu/mobstat/de;->i(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2081
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2083
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static g(Landroid/view/View;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 699
    const v0, -0x17700

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    instance-of v2, v0, Ljava/util/Map;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    move-object v0, v1

    .line 712
    :cond_1
    return-object v0

    .line 707
    :cond_2
    :try_start_0
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_0

    .line 712
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static h(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 2092
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x80

    const/4 v2, 0x0

    .line 819
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 820
    check-cast p0, Landroid/widget/TextView;

    .line 821
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 823
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    const-string v0, ""

    :cond_0
    return-object v0

    .line 825
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    check-cast p0, Landroid/view/ViewGroup;

    .line 828
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_4

    .line 830
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v5, v7, :cond_4

    .line 831
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 832
    invoke-static {v5}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 833
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    if-eqz v0, :cond_2

    .line 835
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 842
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v7, :cond_5

    .line 843
    invoke-virtual {v3, v2, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 845
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 849
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Landroid/view/View;)I
    .locals 2

    .line 861
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 865
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 4

    const/16 v3, 0x16

    const/4 v1, 0x0

    .line 2098
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 2122
    :cond_0
    :goto_0
    return-object v0

    .line 2106
    :cond_1
    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 2114
    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2121
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 2122
    invoke-static {p0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static j(Landroid/view/View;)F
    .locals 1

    .line 885
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x1000

    const/4 v1, 0x0

    .line 1094
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1095
    check-cast p0, Landroid/widget/TextView;

    .line 1096
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1098
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1124
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    const-string v0, ""

    :cond_0
    return-object v0

    .line 1100
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    check-cast p0, Landroid/view/ViewGroup;

    .line 1103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_4

    .line 1105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_4

    .line 1106
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1107
    invoke-static {v5}, Lcom/baidu/mobstat/de;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1108
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    if-eqz v0, :cond_2

    .line 1110
    const-string v0, "| "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1117
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v7, :cond_5

    .line 1118
    invoke-virtual {v3, v1, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 1120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1124
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 1152
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/de;->k(Landroid/view/View;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1158
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    const-string v0, ""

    :cond_0
    return-object v0

    .line 1152
    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    .line 1231
    const-string v0, ""

    if-nez p0, :cond_1

    const-string v0, ""

    .line 1243
    :cond_0
    :goto_0
    return-object v0

    .line 1235
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 1240
    :cond_2
    invoke-static {v2}, Lcom/baidu/mobstat/de;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static n(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v0, v1

    .line 1293
    :cond_0
    :goto_0
    return v0

    .line 1279
    :cond_1
    instance-of v2, p0, Landroid/widget/ListView;

    if-nez v2, :cond_0

    instance-of v2, p0, Landroid/widget/GridView;

    if-nez v2, :cond_0

    .line 1284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 1286
    const-string v3, "android.widget"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.view"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1289
    :try_start_0
    const-string v2, "android.support.v7.widget.RecyclerView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    .line 1293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1289
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static o(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-object v1

    .line 1318
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1319
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1324
    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1325
    invoke-static {v0}, Lcom/baidu/mobstat/de;->n(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static p(Landroid/view/View;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 1447
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q(Landroid/view/View;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 1459
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1479
    :cond_0
    :goto_0
    return v0

    .line 1470
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1472
    const-string v2, "android.widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.view"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1475
    :try_start_0
    const-string v1, "android.support.v7.widget.RecyclerView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    .line 1479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1475
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static s(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1703
    :cond_0
    :goto_0
    return v0

    .line 1702
    :cond_1
    const v1, -0x17ae9

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1703
    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static t(Landroid/view/View;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1710
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static u(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 1741
    const-string v1, ""

    if-nez p0, :cond_0

    const-string v0, ""

    .line 1747
    :goto_0
    return-object v0

    .line 1745
    :cond_0
    const v0, -0x17aec

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1746
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1747
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static v(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1933
    :cond_0
    :goto_0
    return v0

    .line 1932
    :cond_1
    const v1, -0x17aea

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1933
    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static w(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1887
    :cond_0
    :goto_0
    return-object v0

    .line 1885
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1886
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1887
    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method private static x(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1948
    :cond_0
    :goto_0
    return v0

    .line 1947
    :cond_1
    const-string v1, "com.android.internal.policy"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1948
    const-string v1, "DecorView"

    invoke-static {p0}, Lcom/baidu/mobstat/de;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
