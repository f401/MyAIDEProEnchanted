.class public Lcom/baidu/mobstat/bl;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/mobstat/bi;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/aq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/baidu/mobstat/bl;->a()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_39

    const-string v0, ""

    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_34

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    goto :goto_27

    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument b ( byte array ) is null! "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :goto_41
    throw p0

    :goto_42
    goto :goto_41
.end method

.method private a()V
    .registers 4

    new-instance v0, Lcom/baidu/mobstat/bj;

    invoke-static {}, Lcom/baidu/mobstat/bp;->a()[B

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/bp;->b()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/bj;-><init>([B[B)V

    iput-object v0, p0, Lcom/baidu/mobstat/bl;->a:Lcom/baidu/mobstat/bi;

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    if-eqz p2, :cond_30

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_a

    goto :goto_30

    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1b

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1b
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p2

    :goto_21
    if-ge v0, v2, :cond_2b

    aget-object v3, p2, v0

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2b
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_30
    :goto_30
    return v0
.end method

.method private static a([BLcom/baidu/mobstat/bi;)[B
    .registers 4

    invoke-static {}, Lcom/baidu/mobstat/bf;->a()Lcom/baidu/mobstat/bf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/bf;->a(ILcom/baidu/mobstat/bi;)V

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bf;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method private a([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .registers 6

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_19

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/bo;->a([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/bl;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_19
    return-object v1
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/aq;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ee

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_17

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_17

    :try_start_2d
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v6, :cond_45

    goto :goto_17

    :cond_45
    const-string v7, "galaxy_data"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_17

    :cond_52
    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mobstat/bm;->a([B)[B

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/baidu/mobstat/aq;

    invoke-direct {v8}, Lcom/baidu/mobstat/aq;-><init>()V

    const-string v10, "priority"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/baidu/mobstat/aq;->b:I

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v10, v8, Lcom/baidu/mobstat/aq;->a:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8c

    iput-boolean v11, v8, Lcom/baidu/mobstat/aq;->d:Z

    :cond_8c
    if-eqz p3, :cond_e6

    const-string v10, "galaxy_sf"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e6

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x40

    invoke-virtual {v3, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v10, "sigs"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v12, v10, [Ljava/lang/String;

    const/4 v13, 0x0

    :goto_b3
    if-ge v13, v10, :cond_be

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b3

    :cond_be
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bl;->a([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v12, v0}, Lcom/baidu/mobstat/bl;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bm;->a([B)[B

    move-result-object v0

    iget-object v6, v1, Lcom/baidu/mobstat/bl;->a:Lcom/baidu/mobstat/bi;

    invoke-static {v0, v6}, Lcom/baidu/mobstat/bl;->a([BLcom/baidu/mobstat/bi;)[B

    move-result-object v0

    invoke-static {v7}, Lcom/baidu/mobstat/bo;->a([B)[B

    move-result-object v6

    if-eqz v0, :cond_e6

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_e6

    iput-boolean v11, v8, Lcom/baidu/mobstat/aq;->c:Z

    :cond_e6
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_e9} :catch_eb

    goto/16 :goto_17

    :catch_eb
    move-exception v0

    goto/16 :goto_17

    :cond_ee
    new-instance v0, Lcom/baidu/mobstat/bl$1;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/bl$1;-><init>(Lcom/baidu/mobstat/bl;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public a(Landroid/content/Context;)Z
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.intent.action.GALAXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bl;->a(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object p1

    const-string v0, "CuidBuddyInfoManager"

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_39

    :cond_21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobstat/aq;

    iget-boolean v3, p1, Lcom/baidu/mobstat/aq;->c:Z

    iget-boolean p1, p1, Lcom/baidu/mobstat/aq;->c:Z

    if-nez p1, :cond_37

    :goto_2d
    if-ge v2, v1, :cond_37

    const-string p1, "galaxy config err, In the release version of the signature should be matched"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_37
    move v2, v3

    goto :goto_44

    :cond_39
    :goto_39
    const/4 p1, 0x0

    :goto_3a
    if-ge p1, v1, :cond_44

    const-string v3, "galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_3a

    :cond_44
    :goto_44
    return v2
.end method

.method b(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/aq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mobstat/bl;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/bl;->a(Landroid/content/Context;)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.intent.action.GALAXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bl;->a(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/bl;->b:Ljava/util/List;

    return-object p1
.end method
