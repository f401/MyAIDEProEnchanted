.class public Lcom/baidu/mobstat/de;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/GridView;)I
    .registers 7

    .line 1518
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v0

    .line 1520
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_b

    return v0

    .line 1524
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1527
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 1529
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p0

    if-eqz v2, :cond_33

    if-eqz p0, :cond_33

    .line 1531
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    goto :goto_34

    :cond_33
    const/4 p0, 0x1

    :goto_34
    mul-int v1, v1, p0

    if-lt v1, v0, :cond_39

    move v0, v1

    :cond_39
    return v0
.end method

.method public static a(Landroid/widget/ListView;)I
    .registers 4

    .line 1493
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_29

    .line 1495
    :try_start_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_c

    return v1

    .line 1499
    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1502
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 1504
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_26

    goto :goto_20

    :cond_1f
    const/4 p0, 0x1

    :goto_20
    mul-int v0, v0, p0

    if-lt v0, v1, :cond_2f

    move v1, v0

    goto :goto_2e

    :catch_26
    move-exception p0

    move v0, v1

    goto :goto_2a

    :catch_29
    move-exception p0

    .line 1511
    :goto_2a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    :goto_2e
    nop

    :cond_2f
    return v1
.end method

.method public static a(Landroid/app/Activity;)Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 69
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 71
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    if-nez p1, :cond_6

    goto :goto_32

    .line 1338
    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    move-exception p1

    move-object p1, v0

    :goto_d
    if-nez p1, :cond_10

    return-object v0

    :cond_10
    :goto_10
    if-eqz p0, :cond_32

    if-eq p0, p1, :cond_32

    .line 1347
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1348
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_32

    .line 1349
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1350
    invoke-static {v1}, Lcom/baidu/mobstat/de;->n(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_30

    move-object v0, p0

    goto :goto_32

    :cond_30
    move-object p0, v1

    goto :goto_10

    :cond_32
    :goto_32
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1981
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 1985
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1986
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1988
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_18

    return-object v0

    .line 1995
    :cond_18
    const/4 v2, 0x0

    :try_start_19
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_20

    :catch_1e
    move-exception p0

    const/4 p0, 0x0

    :goto_20
    if-nez p0, :cond_23

    return-object v0

    .line 2003
    :cond_23
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_28

    return-object v0

    .line 2008
    :cond_28
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2010
    const-string v1, "android"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    return-object v0

    .line 2014
    :cond_33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    move-object v0, p0

    :cond_3a
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 1

    .line 445
    invoke-static {p0}, Lcom/baidu/mobstat/de;->c(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    if-eqz p0, :cond_c

    .line 450
    :try_start_6
    invoke-static {p0}, Lcom/baidu/mobstat/dk;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    .line 456
    :catch_b
    move-exception p0

    :cond_c
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    .line 116
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 122
    :cond_5
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_36

    .line 123
    instance-of v1, p0, Landroid/widget/EditText;

    if-nez v1, :cond_1a

    .line 124
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 126
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1a
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_52

    .line 132
    check-cast p0, Landroid/widget/Switch;

    .line 135
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 136
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextOn()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2f

    .line 138
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextOff()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_2f
    if-eqz p0, :cond_52

    .line 142
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 146
    :cond_36
    instance-of v1, p0, Landroid/widget/Spinner;

    if-eqz v1, :cond_52

    .line 147
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 148
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 149
    check-cast v0, Ljava/lang/String;

    goto :goto_52

    .line 151
    :cond_49
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object p0

    .line 152
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 157
    :cond_52
    :goto_52
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 158
    array-length v1, p0

    const/16 v2, 0x1000

    if-le v1, v2, :cond_64

    .line 160
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 161
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :cond_64
    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 252
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    if-ne p0, p1, :cond_f

    .line 257
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 260
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 261
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1a

    goto :goto_66

    .line 265
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_25

    .line 267
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 270
    :cond_25
    invoke-static {v1}, Lcom/baidu/mobstat/de;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 272
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 275
    :cond_34
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 276
    :goto_37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_61

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_44

    goto :goto_5e

    :cond_44
    if-ne v3, p0, :cond_47

    goto :goto_61

    .line 287
    :cond_47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_4e

    goto :goto_5e

    .line 292
    :cond_4e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/de;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    add-int/lit8 v2, v2, 0x1

    :cond_5e
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 298
    :cond_61
    :goto_61
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 262
    :cond_66
    :goto_66
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    if-nez p0, :cond_c

    return-object v1

    .line 319
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 320
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_17

    goto :goto_67

    .line 323
    :cond_17
    check-cast v0, Landroid/view/View;

    .line 325
    const-string v2, "ListView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 328
    :try_start_21
    instance-of p1, v0, Landroid/widget/ListView;

    if-eqz p1, :cond_67

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 329
    check-cast v0, Landroid/widget/ListView;

    .line 330
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_36

    goto :goto_67

    .line 352
    :catchall_36
    move-exception p0

    goto :goto_67

    .line 335
    :cond_38
    const-string v2, "GridView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 337
    :try_start_40
    instance-of p1, v0, Landroid/widget/GridView;

    if-eqz p1, :cond_67

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 338
    check-cast v0, Landroid/widget/GridView;

    .line 339
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result p0
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_36

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_67

    .line 344
    :cond_55
    const-string v2, "RecyclerView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 346
    :try_start_5d
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 352
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_36

    :cond_67
    :goto_67
    return-object v1
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 232
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 236
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 238
    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_10
    move-object p0, v0

    :goto_11
    if-nez p0, :cond_14

    goto :goto_15

    :cond_14
    move-object v0, p0

    :goto_15
    return-object v0
.end method

.method private static a(Ljava/lang/Class;Z)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1255
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1256
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_18

    if-eqz p1, :cond_13

    .line 1258
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    .line 1257
    :cond_18
    const-string p0, ""

    goto :goto_26

    :cond_1b
    if-eqz p1, :cond_22

    .line 1261
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_26
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1187
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    .line 1189
    const-string p0, ""

    :cond_e
    return-object p0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 7

    .line 918
    if-eqz p0, :cond_51

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_51

    .line 922
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 924
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 925
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 926
    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 928
    const-string v4, "i"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 931
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4f} :catch_50

    goto :goto_53

    :catch_50
    move-exception p0

    :cond_51
    :goto_51
    const-string p0, ""

    :goto_53
    return-object p0
.end method

.method public static a(Landroid/view/View;Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 1720
    :cond_8
    const v1, -0x17aeb

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1721
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 1722
    check-cast v1, Ljava/lang/String;

    goto :goto_1a

    .line 1725
    :cond_18
    const-string v1, ""

    :goto_1a
    invoke-static {p0, p1}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;Z)Ljava/util/Map;

    move-result-object p0

    .line 1727
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "title"

    if-nez p1, :cond_2a

    .line 1728
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 1731
    :cond_2a
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1730
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    :goto_31
    const-string p1, "content"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1733
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;
    .registers 6

    .line 618
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_a3

    if-nez p1, :cond_b

    goto/16 :goto_a3

    .line 626
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_12

    :catch_10
    move-exception p0

    const/4 p0, 0x0

    :goto_12
    if-nez p0, :cond_15

    return-object v0

    :cond_15
    :goto_15
    if-eqz p1, :cond_8a

    .line 636
    :try_start_17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 637
    const-string v2, "p"

    invoke-static {p1}, Lcom/baidu/mobstat/de;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    invoke-static {p1}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 641
    nop

    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 643
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_41

    .line 644
    check-cast v2, Landroid/view/View;

    .line 645
    invoke-static {v2}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_40} :catch_84

    goto :goto_43

    .line 648
    :cond_41
    const-string v2, ""

    :goto_43
    :try_start_43
    invoke-static {p1, v2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 650
    invoke-static {p1, p0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 653
    :cond_51
    const-string v3, "i"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v2, "t"

    invoke-static {p1}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_8a

    if-ne p1, p0, :cond_6b

    goto :goto_8a

    .line 665
    :cond_6b
    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_70

    goto :goto_8a

    .line 670
    :cond_70
    invoke-static {p1}, Lcom/baidu/mobstat/de;->x(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_77

    goto :goto_8a

    .line 675
    :cond_77
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/16 v2, 0x3e8

    if-le p1, v2, :cond_80

    goto :goto_8a

    .line 679
    :cond_80
    move-object p1, v1

    check-cast p1, Landroid/view/View;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_83} :catch_84

    goto :goto_15

    .line 682
    :catch_84
    move-exception p0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 685
    :cond_8a
    :goto_8a
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 687
    :try_start_8f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_95
    if-ltz p1, :cond_a2

    .line 688
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9e} :catch_a1

    add-int/lit8 p1, p1, -0x1

    goto :goto_95

    :catch_a1
    move-exception p1

    :cond_a2
    return-object p0

    :cond_a3
    :goto_a3
    return-object v0
.end method

.method private static a(Landroid/view/View;Ljava/util/LinkedHashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 1860
    :cond_3
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 1861
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 1863
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_38

    .line 1865
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41200000  # 10.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 1867
    :cond_21
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_38

    .line 1868
    check-cast p0, Landroid/view/ViewGroup;

    .line 1869
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_38

    .line 1872
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1873
    invoke-static {v2, p1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/util/LinkedHashMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_38
    :goto_38
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2028
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    .line 2032
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_12

    return v0

    .line 2037
    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2038
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2042
    const/high16 v2, 0x10000

    :try_start_20
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_25

    goto :goto_27

    :catch_25
    move-exception p0

    const/4 p0, 0x0

    :goto_27
    if-eqz p0, :cond_47

    .line 2049
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2050
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_3e

    goto :goto_2d

    .line 2055
    :cond_3e
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    :cond_47
    return v0
.end method

.method public static a(Landroid/view/View;F)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1906
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1907
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int v3, v1, v2

    if-gtz v3, :cond_11

    return v0

    .line 1913
    :cond_11
    invoke-static {p0}, Lcom/baidu/mobstat/de;->w(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 1914
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int v3, v3, p0

    int-to-float p0, v3

    int-to-float v1, v1

    mul-float p1, p1, v1

    int-to-float v1, v2

    mul-float p1, p1, v1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 2

    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    .line 545
    :cond_5
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    move-exception p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1307
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Landroid/widget/GridView;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1663
    :cond_4
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_28

    .line 1664
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1668
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 1670
    invoke-virtual {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result p0

    div-int/2addr p0, v1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x1

    .line 1673
    :goto_1b
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int p0, p0, v0

    add-int v0, v1, p0

    :cond_28
    return v0
.end method

.method public static b(Landroid/widget/ListView;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1647
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1f

    .line 1648
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1649
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int p0, p0, v0

    add-int v0, v1, p0

    :cond_1f
    return v0
.end method

.method public static b(Landroid/app/Activity;)Landroid/view/View;
    .registers 1

    .line 81
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 1

    .line 460
    invoke-static {p0}, Lcom/baidu/mobstat/de;->c(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    if-eqz p0, :cond_b

    .line 462
    invoke-static {p0}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 465
    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    .line 180
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_7

    .line 181
    const-string v0, "ListView"

    goto :goto_10

    .line 182
    :cond_7
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_e

    .line 183
    const-string v0, "WebView"

    goto :goto_10

    .line 182
    :cond_e
    const-string v0, ""

    .line 187
    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 190
    const-string v2, "android.widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "android.view"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 193
    :try_start_2e
    const-string v1, "android.support.v7.widget.RecyclerView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_34} :catch_35

    goto :goto_37

    :catch_35
    move-exception v1

    const/4 v1, 0x0

    :goto_37
    if-eqz v1, :cond_45

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 198
    const-string v0, "RecyclerView"

    .line 203
    :cond_45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/de;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5b

    .line 210
    const-string v0, "Object"

    :cond_5b
    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1212
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 1216
    :cond_5
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v1

    .line 1218
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 1219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_27
    if-nez v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object v0, v1

    :goto_2b
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1169
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1171
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/cp$a;->a:I

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_1c

    .line 1175
    const-string v0, ""

    :cond_1c
    return-object v0
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 8

    .line 941
    if-eqz p0, :cond_71

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_71

    .line 945
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 947
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6b

    .line 948
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 949
    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 951
    const-string v4, "i"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v3, "d"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 956
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 960
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_6f} :catch_70

    goto :goto_73

    :catch_70
    move-exception p0

    :cond_71
    :goto_71
    const-string p0, ""

    :goto_73
    return-object p0
.end method

.method public static b(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1581
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p1, :cond_13

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 1588
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1589
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1594
    instance-of v3, p1, Landroid/webkit/WebView;

    if-eqz v3, :cond_28

    .line 1596
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1597
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    goto :goto_6c

    .line 1598
    :cond_28
    instance-of v3, p1, Landroid/widget/ScrollView;

    if-eqz v3, :cond_3d

    .line 1602
    check-cast p1, Landroid/widget/ScrollView;

    .line 1603
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_6a

    .line 1604
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v3

    .line 1605
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    goto :goto_6c

    .line 1607
    :cond_3d
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_48

    .line 1610
    check-cast p1, Landroid/widget/ListView;

    .line 1611
    invoke-static {p1}, Lcom/baidu/mobstat/de;->b(Landroid/widget/ListView;)I

    move-result p1

    goto :goto_6b

    .line 1612
    :cond_48
    instance-of v3, p1, Landroid/widget/GridView;

    if-eqz v3, :cond_53

    .line 1614
    check-cast p1, Landroid/widget/GridView;

    .line 1615
    invoke-static {p1}, Lcom/baidu/mobstat/de;->b(Landroid/widget/GridView;)I

    move-result p1

    goto :goto_6b

    .line 1616
    :cond_53
    invoke-static {p1}, Lcom/baidu/mobstat/de;->r(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1621
    :try_start_59
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 1622
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5f} :catch_66

    .line 1623
    :try_start_5f
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_64

    goto :goto_6c

    :catch_64
    move-exception p1

    goto :goto_68

    :catch_66
    move-exception p1

    const/4 v3, 0x0

    :goto_68
    const/4 p1, 0x0

    goto :goto_6c

    :cond_6a
    const/4 p1, 0x0

    .line 1611
    :goto_6b
    const/4 v3, 0x0

    .line 1623
    :goto_6c
    add-int/2addr v1, v3

    add-int/2addr v2, p1

    if-lez v1, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :goto_72
    if-lez v2, :cond_75

    move v0, v2

    .line 1635
    :cond_75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static b(Landroid/view/View;Z)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1754
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 1761
    :cond_8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1762
    invoke-static {p0, v1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/util/LinkedHashMap;)V

    .line 1765
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1766
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-nez v2, :cond_1c

    return-object v0

    .line 1772
    :cond_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1773
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "_"

    const-string v8, ""

    if-eqz v6, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1774
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v4, :cond_49

    move v4, v9

    .line 1780
    :cond_49
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_2c

    .line 1781
    instance-of v9, v6, Landroid/widget/TextView;

    if-eqz v9, :cond_2c

    .line 1782
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_61

    .line 1786
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1789
    :cond_61
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 1790
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_74

    .line 1792
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    :cond_74
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_81

    .line 1798
    const-string v6, "广告"

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    :cond_81
    const/4 v5, 0x1

    goto :goto_2c

    .line 1810
    :cond_83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1811
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v1, 0x100

    if-nez p1, :cond_a0

    if-eqz v5, :cond_a0

    .line 1812
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_9b

    .line 1813
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1816
    :cond_9b
    const-string p1, "content"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    :cond_a0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1819
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a9
    :goto_a9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1820
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v4, :cond_c2

    goto :goto_a9

    .line 1824
    :cond_c2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_a9

    .line 1825
    instance-of v5, v2, Landroid/widget/TextView;

    if-eqz v5, :cond_a9

    .line 1826
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_db

    .line 1830
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_dc

    :cond_db
    move-object v2, v8

    .line 1833
    :goto_dc
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a9

    .line 1834
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ef

    .line 1836
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    :cond_ef
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a9

    .line 1844
    :cond_f3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1845
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10c

    .line 1846
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_107

    .line 1847
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1850
    :cond_107
    const-string p1, "title"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10c
    return-object v0
.end method

.method public static b(Landroid/view/View;Ljava/lang/String;)Z
    .registers 4

    .line 722
    const-string v0, "ListView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    const-string v0, "RecyclerView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "GridView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_23

    .line 727
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_21

    return v1

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    return v1
.end method

.method public static c(Landroid/app/Activity;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 94
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 95
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static c(Landroid/view/View;)Ljava/lang/String;
    .registers 9

    .line 364
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 368
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 369
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_11

    goto/16 :goto_b5

    .line 373
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 375
    const-string v3, "android.widget"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    const-string v3, "android.view"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_b5

    .line 379
    :cond_2b
    check-cast v1, Landroid/view/ViewGroup;

    .line 382
    :try_start_2d
    const-string v2, "android.support.v4.view.ViewPager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_36

    :catch_34
    move-exception v2

    const/4 v2, 0x0

    :goto_36
    if-nez v2, :cond_39

    return-object v0

    .line 391
    :cond_39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_44

    return-object v0

    .line 396
    :cond_44
    :try_start_44
    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_52
    if-ge v5, v3, :cond_66

    .line 402
    invoke-virtual {v1, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 403
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {v7}, Lcom/baidu/mobstat/de;->e(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_63

    add-int/lit8 v6, v6, 0x1

    :cond_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 410
    :cond_66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_6a
    .catchall {:try_start_44 .. :try_end_6a} :catchall_b3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_a9

    if-lt v6, v5, :cond_a9

    .line 412
    :try_start_6f
    new-instance v3, Lcom/baidu/mobstat/de$1;

    invoke-direct {v3}, Lcom/baidu/mobstat/de$1;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_78
    .catchall {:try_start_6f .. :try_end_77} :catchall_b3

    goto :goto_79

    .line 435
    :catch_78
    move-exception v3

    .line 422
    :goto_79
    const/4 v3, 0x1

    :try_start_7a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 423
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    div-int/2addr p0, v2

    .line 424
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1
    :try_end_a0
    .catchall {:try_start_7a .. :try_end_a0} :catchall_b3

    if-eqz v1, :cond_a3

    .line 426
    rem-int/2addr p0, v1

    .line 428
    :cond_a3
    :try_start_a3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_b2

    .line 435
    :cond_a9
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_b1
    .catchall {:try_start_a3 .. :try_end_b1} :catchall_b3

    move-object v0, p0

    :goto_b2
    goto :goto_b5

    :catchall_b3
    move-exception p0

    goto :goto_b2

    :cond_b5
    :goto_b5
    return-object v0
.end method

.method public static c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_12

    .line 1683
    const v0, -0x17ae9

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1684
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 1685
    check-cast p0, Ljava/lang/String;

    goto :goto_14

    .line 1689
    :cond_12
    const-string p0, ""

    :goto_14
    if-eqz p1, :cond_1d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object p1, p0

    :goto_1e
    return-object p1
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 219
    const-string p0, ""

    return-object p0

    .line 222
    :cond_5
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v1, "android.widget"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "android.view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_23

    .line 227
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/de;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 224
    :cond_23
    :goto_23
    invoke-static {p0}, Lcom/baidu/mobstat/de;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 7

    .line 976
    if-eqz p0, :cond_55

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_55

    .line 980
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 982
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 983
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 984
    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 985
    invoke-static {v3}, Lcom/baidu/mobstat/de;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 987
    const-string v4, "i"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 988
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 990
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_53} :catch_54

    goto :goto_57

    :catch_54
    move-exception p0

    :cond_55
    :goto_55
    const-string p0, ""

    :goto_57
    return-object p0
.end method

.method public static c(Landroid/app/Activity;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    if-nez p1, :cond_6

    goto :goto_16

    .line 1962
    :cond_6
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_d

    return v0

    .line 1967
    :cond_d
    invoke-static {p1}, Lcom/baidu/mobstat/de;->x(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eq p0, p1, :cond_16

    const/4 v0, 0x1

    :cond_16
    :goto_16
    return v0
.end method

.method private static c(Landroid/graphics/Bitmap;)[B
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 477
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_24
    .catchall {:try_start_4 .. :try_end_9} :catchall_1b

    .line 478
    :try_start_9
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 479
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_19
    .catchall {:try_start_9 .. :try_end_14} :catchall_16

    move-object v0, p0

    goto :goto_28

    .line 485
    :catchall_16
    move-exception p0

    move-object v0, v1

    goto :goto_1c

    :catch_19
    move-exception p0

    goto :goto_26

    :catchall_1b
    move-exception p0

    :goto_1c
    if-eqz v0, :cond_23

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_23

    .line 488
    :catch_22
    move-exception v0

    :cond_23
    :goto_23
    throw p0

    :catch_24
    move-exception p0

    move-object v1, v0

    :goto_26
    if-eqz v1, :cond_2d

    .line 485
    :goto_28
    :try_start_28
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_2d

    .line 488
    :catch_2c
    move-exception p0

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public static d(Landroid/app/Activity;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 106
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1268
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 8

    .line 1006
    if-eqz p0, :cond_75

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_75

    .line 1010
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1012
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 1013
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1014
    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    invoke-static {v3}, Lcom/baidu/mobstat/de;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1017
    const-string v4, "i"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    const-string v3, "d"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1026
    :cond_6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_73} :catch_74

    goto :goto_77

    :catch_74
    move-exception p0

    :cond_75
    :goto_75
    const-string p0, ""

    :goto_77
    return-object p0
.end method

.method public static d(Landroid/view/View;)Z
    .registers 2

    .line 505
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 510
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 512
    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 4

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 522
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 524
    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_14

    return-object v1

    .line 530
    :cond_14
    iget p0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-le p0, v2, :cond_22

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gt p0, v2, :cond_21

    goto :goto_22

    :cond_21
    return-object v0

    :cond_22
    :goto_22
    return-object v1
.end method

.method public static e(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .line 1197
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_18

    .line 1201
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1a

    :cond_18
    :goto_18
    const-string p0, ""

    :goto_1a
    return-object p0
.end method

.method public static f(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    .line 1422
    const-string v0, ""

    if-eqz p0, :cond_f

    .line 1423
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1425
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    move-object p0, v0

    .line 1429
    :goto_10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    move-object v0, p0

    .line 1433
    :goto_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x100

    if-le p0, v1, :cond_25

    .line 1434
    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public static f(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 588
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_15

    :catch_13
    move-exception p0

    .line 594
    :cond_14
    const/4 p0, 0x0

    :goto_15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, ":id/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 595
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    add-int/lit8 v0, v0, 0x4

    .line 598
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 599
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_36
    if-nez p0, :cond_3a

    .line 605
    const-string p0, ""

    :cond_3a
    return-object p0
.end method

.method public static g(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    .line 2067
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 2072
    :cond_5
    invoke-static {p0}, Lcom/baidu/mobstat/de;->h(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 2073
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    return-object v1

    .line 2079
    :cond_10
    invoke-static {p0}, Lcom/baidu/mobstat/de;->i(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 2081
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 2083
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    move-object v0, p0

    :cond_21
    return-object v0
.end method

.method public static g(Landroid/view/View;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 699
    const v0, -0x17700

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 701
    instance-of v1, p0, Ljava/util/Map;

    if-nez v1, :cond_f

    goto :goto_1e

    .line 707
    :cond_f
    :try_start_f
    check-cast p0, Ljava/util/Map;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_11} :catch_12

    goto :goto_14

    :catch_12
    move-exception p0

    move-object p0, v0

    :goto_14
    if-eqz p0, :cond_1e

    .line 712
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_1e

    :cond_1d
    return-object p0

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private static h(Landroid/app/Activity;)Ljava/lang/String;
    .registers 1

    .line 2092
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/View;)Ljava/lang/String;
    .registers 8

    .line 819
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 820
    check-cast p0, Landroid/widget/TextView;

    .line 821
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_5d

    .line 823
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5e

    .line 825
    :cond_11
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5d

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    check-cast p0, Landroid/view/ViewGroup;

    .line 828
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_23
    const/16 v5, 0x80

    if-ge v3, v1, :cond_4b

    .line 830
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v5, :cond_4b

    .line 831
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 832
    invoke-static {v5}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 833
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_48

    if-eqz v4, :cond_44

    .line 835
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 842
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-le p0, v5, :cond_56

    .line 843
    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5e

    :cond_56
    if-eqz v4, :cond_5d

    .line 845
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5e

    .line 849
    :cond_5d
    const/4 p0, 0x0

    :goto_5e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 850
    const-string p0, ""

    :cond_66
    return-object p0
.end method

.method public static i(Landroid/view/View;)I
    .registers 2

    .line 861
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 865
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 867
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    int-to-float p0, p0

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private static i(Landroid/app/Activity;)Landroid/net/Uri;
    .registers 5

    .line 2098
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2106
    :cond_8
    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_13

    return-object v2

    .line 2112
    :cond_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_2a

    .line 2114
    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 2121
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_33

    .line 2122
    invoke-static {p0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_33
    return-object v1
.end method

.method public static j(Landroid/view/View;)F
    .registers 1

    .line 885
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result p0

    return p0
.end method

.method public static k(Landroid/view/View;)Ljava/lang/String;
    .registers 8

    .line 1094
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 1095
    check-cast p0, Landroid/widget/TextView;

    .line 1096
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_5f

    .line 1098
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_60

    .line 1100
    :cond_11
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5f

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    check-cast p0, Landroid/view/ViewGroup;

    .line 1103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_23
    if-ge v3, v1, :cond_4b

    .line 1105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_4b

    .line 1106
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1107
    invoke-static {v5}, Lcom/baidu/mobstat/de;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 1108
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_48

    if-eqz v4, :cond_44

    .line 1110
    const-string v4, "| "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :cond_44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1117
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v1, 0x1000

    if-le p0, v1, :cond_58

    .line 1118
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_60

    :cond_58
    if-eqz v4, :cond_5f

    .line 1120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_60

    .line 1124
    :cond_5f
    const/4 p0, 0x0

    :goto_60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1125
    const-string p0, ""

    :cond_68
    return-object p0
.end method

.method public static l(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    .line 1152
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/de;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p0

    const/4 p0, 0x0

    .line 1158
    :goto_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1159
    const-string p0, ""

    :cond_f
    return-object p0
.end method

.method public static m(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    .line 1231
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 1235
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_c

    return-object v0

    .line 1240
    :cond_c
    invoke-static {p0}, Lcom/baidu/mobstat/de;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 1243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2d
    if-nez v1, :cond_30

    goto :goto_31

    :cond_30
    move-object v0, v1

    :goto_31
    return-object v0
.end method

.method public static n(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1279
    :cond_4
    instance-of v1, p0, Landroid/widget/ListView;

    const/4 v2, 0x1

    if-nez v1, :cond_3d

    instance-of v1, p0, Landroid/widget/GridView;

    if-eqz v1, :cond_e

    goto :goto_3d

    .line 1284
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1286
    const-string v3, "android.widget"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "android.view"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1289
    :try_start_26
    const-string v1, "android.support.v7.widget.RecyclerView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_2d

    goto :goto_2f

    :catch_2d
    move-exception v1

    const/4 v1, 0x0

    :goto_2f
    if-eqz v1, :cond_3c

    .line 1293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    return v0

    :cond_3d
    :goto_3d
    return v2
.end method

.method public static o(Landroid/view/View;)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1318
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1319
    instance-of v1, p0, Landroid/view/View;

    if-nez v1, :cond_d

    return-object v0

    .line 1324
    :cond_d
    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_18

    .line 1325
    invoke-static {p0}, Lcom/baidu/mobstat/de;->n(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object v0, p0

    :cond_18
    return-object v0
.end method

.method public static p(Landroid/view/View;)I
    .registers 1

    if-eqz p0, :cond_7

    .line 1447
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static q(Landroid/view/View;)I
    .registers 1

    if-eqz p0, :cond_7

    .line 1459
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static r(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1470
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1472
    const-string v2, "android.widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "android.view"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 1475
    :try_start_1c
    const-string v1, "android.support.v7.widget.RecyclerView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_25

    :catch_23
    move-exception v1

    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_32

    .line 1479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method public static s(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1702
    :cond_4
    const v1, -0x17ae9

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1703
    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static t(Landroid/view/View;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1710
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 1741
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 1745
    :cond_5
    const v1, -0x17aec

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1746
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1747
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_15
    return-object v0
.end method

.method public static v(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1932
    :cond_4
    const v1, -0x17aea

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1933
    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private static w(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1885
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    .line 1886
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1887
    invoke-static {p0, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    :cond_12
    return-object v0
.end method

.method private static x(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1947
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/de;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.policy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1948
    const-string v1, "DecorView"

    invoke-static {p0}, Lcom/baidu/mobstat/de;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method
