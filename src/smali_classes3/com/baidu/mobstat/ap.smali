.class public Lcom/baidu/mobstat/ap;
.super Lcom/baidu/mobstat/am;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ap$f;,
        Lcom/baidu/mobstat/ap$g;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/baidu/mobstat/ap$g;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "upc"

    const-wide/32 v2, 0x895440

    invoke-direct {p0, v0, v2, v3}, Lcom/baidu/mobstat/am;-><init>(Ljava/lang/String;J)V

    new-instance v0, Lcom/baidu/mobstat/ap$g;

    invoke-direct {v0}, Lcom/baidu/mobstat/ap$g;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ap$g;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/ap$d$a;",
            ">;I",
            "Lcom/baidu/mobstat/ap$f;",
            ")",
            "Lcom/baidu/mobstat/ap$a;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/baidu/mobstat/ap$d$a;

    invoke-static {v6}, Lcom/baidu/mobstat/ap$d$a;->b(Lcom/baidu/mobstat/ap$d$a;)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/baidu/mobstat/ap$d$a;->a()V

    invoke-static {v6}, Lcom/baidu/mobstat/ap$d$a;->b(Lcom/baidu/mobstat/ap$d$a;)Lcom/baidu/mobstat/ap$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;)Ljava/lang/String;
    .registers 8

    const-string v0, "content://%s/dat/v1/i%d/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Lcom/baidu/mobstat/ap$a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;)Ljava/lang/String;
    .registers 7

    const-string v0, "content://%s/dic/v1/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/baidu/mobstat/ap$a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "content://%s/clo/v1/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/UriMatcher;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dat/v1/*/*"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dic/v1/*"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clo/v1/*"

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(ILcom/baidu/mobstat/ap$a;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x41

    invoke-virtual {v4, v2, v5, p1, v6}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)V

    iget-object v2, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;I)Z
    .registers 7

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    invoke-virtual {v3, v1, p1, p2}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    invoke-virtual {v1, v2, p1, p2}, Lcom/baidu/mobstat/ap$g;->b(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/baidu/mobstat/ap$a;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/baidu/mobstat/ap$c;Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mobstat/ap$c;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/ap$a;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v7, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v5, Landroid/content/UriMatcher;

    invoke-direct {v5, v4}, Landroid/content/UriMatcher;-><init>(I)V

    invoke-direct {p0, v5}, Lcom/baidu/mobstat/ap;->a(Landroid/content/UriMatcher;)V

    invoke-virtual {v1}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentResolver;->getOutgoingPersistedUriPermissions()Ljava/util/List;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriPermission;

    invoke-virtual {v0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    if-eq v1, v7, :cond_6

    if-eq v1, v3, :cond_6

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/content/UriPermission;->isWritePermission()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v0}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    :goto_2
    invoke-direct {p0, v9, v0}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;I)Z

    goto :goto_1

    :cond_7
    if-ne v1, v7, :cond_a

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    :goto_3
    if-ltz v1, :cond_8

    invoke-virtual {p1}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v0

    if-lt v1, v0, :cond_9

    :cond_8
    invoke-direct {p0, v9, v7}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;I)Z

    goto :goto_1

    :catch_0
    move-exception v0

    move v1, v4

    goto :goto_3

    :cond_9
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/ap$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v9, v7}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;I)Z

    goto :goto_1

    :cond_a
    if-ne v1, v3, :cond_c

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/ap$a;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ap$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v7

    :goto_4
    if-nez v0, :cond_5

    invoke-direct {p0, v9, v7}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;I)Z

    goto/16 :goto_1

    :cond_c
    if-ne v1, v2, :cond_5

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v9, v7}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;I)Z

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v8

    move v2, v6

    :goto_5
    if-ge v2, v8, :cond_f

    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v7

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v6

    :goto_6
    if-ge v1, v2, :cond_11

    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ap$a;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {p0, v3, v0, v4}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;I)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v7

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v7

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v7

    goto/16 :goto_0

    :cond_13
    move v0, v6

    goto/16 :goto_0

    :cond_14
    move v0, v6

    goto/16 :goto_4

    :cond_15
    move v0, v3

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move v8, v7

    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    move v0, v6

    :goto_2
    return v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x5

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z
    .registers 15

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move v8, v7

    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_3

    if-eqz p5, :cond_0

    :try_start_0
    iget v0, p5, Lcom/baidu/mobstat/ap$f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Lcom/baidu/mobstat/ap$f;->a:I

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    move v0, v6

    :goto_2
    return v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x5

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    iget v0, p5, Lcom/baidu/mobstat/ap$f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Lcom/baidu/mobstat/ap$f;->b:I

    :cond_2
    move v0, v7

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;I)Z
    .registers 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move v8, v7

    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    move v0, v6

    :goto_2
    return v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x5

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move v8, v7

    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    move v0, v6

    :goto_2
    return v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x5

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic a(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/baidu/mobstat/ap;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 8

    const/16 v6, 0x10

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a string of even length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-eq v3, v5, :cond_1

    if-ne v4, v5, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input is not hexadecimal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cesium"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "content://%s/clo/v1/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "yes"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;)Z

    move-result v1

    iget-object v2, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;
    .registers 11

    const/4 v7, 0x1

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/am$e;->b()Lcom/baidu/mobstat/am$e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/baidu/mobstat/ap$e;->a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/ap$e;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/am$e;->b()Lcom/baidu/mobstat/am$e;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/baidu/mobstat/ap$c;

    iget-object v3, v1, Lcom/baidu/mobstat/ap$e;->a:[B

    invoke-direct {v2, p0, v3}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;[B)V

    iget-byte v3, v1, Lcom/baidu/mobstat/ap$e;->b:B

    invoke-static {v3, v0}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    iget-byte v3, v1, Lcom/baidu/mobstat/ap$e;->b:B

    invoke-static {v3, v7}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    iget-object v3, v1, Lcom/baidu/mobstat/ap$e;->c:[B

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/baidu/mobstat/ap$e;->c:[B

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-byte v5, v3, v1

    invoke-static {v5, v0}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    invoke-static {v5, v7}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/baidu/mobstat/ap$b;

    invoke-direct {v1}, Lcom/baidu/mobstat/ap$b;-><init>()V

    :goto_2
    invoke-virtual {v2}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/mobstat/ap$b;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/baidu/mobstat/ap$b;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/baidu/mobstat/ap;->a(Lcom/baidu/mobstat/ap$c;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/baidu/mobstat/am$e;->a()Lcom/baidu/mobstat/am$e;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/baidu/mobstat/ap;->a(ILcom/baidu/mobstat/ap$a;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ap$a;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap;->a(Lcom/baidu/mobstat/ap$a;)Z

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap;->e(Ljava/lang/String;)Z

    invoke-static {}, Lcom/baidu/mobstat/am$e;->a()Lcom/baidu/mobstat/am$e;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/baidu/mobstat/am$f;)Lcom/baidu/mobstat/am$g;
    .registers 23

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/am$g;->b()Lcom/baidu/mobstat/am$g;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_1
    if-gez v6, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/am$g;->b()Lcom/baidu/mobstat/am$g;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/baidu/mobstat/ap$f;

    invoke-direct {v7}, Lcom/baidu/mobstat/ap$f;-><init>()V

    new-instance v8, Lcom/baidu/mobstat/ap$c;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;)V

    new-instance v15, Lcom/baidu/mobstat/ap$d;

    invoke-direct {v15}, Lcom/baidu/mobstat/ap$d;-><init>()V

    new-instance v16, Lcom/baidu/mobstat/ap$d;

    invoke-direct/range {v16 .. v16}, Lcom/baidu/mobstat/ap$d;-><init>()V

    const/4 v2, 0x0

    :goto_2
    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    invoke-static {v2}, Lcom/baidu/mobstat/ap$a;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v15, v3}, Lcom/baidu/mobstat/ap$d;->a(Lcom/baidu/mobstat/ap$a;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/ap$d;->a(Lcom/baidu/mobstat/ap$a;)V

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_4
    const/16 v2, 0x20

    if-ge v4, v2, :cond_6

    invoke-virtual {v15}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    invoke-static {}, Lcom/baidu/mobstat/am$g;->b()Lcom/baidu/mobstat/am$g;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {v8, v2}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Lcom/baidu/mobstat/ap$c;->b()[B

    move-result-object v17

    const/4 v2, 0x3

    new-array v0, v2, [B

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    aput-byte v3, v18, v2

    const/4 v2, 0x1

    const-string v3, "O"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    aput-byte v3, v18, v2

    const/4 v2, 0x2

    const-string v3, "V"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    aput-byte v3, v18, v2

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_5
    move/from16 v0, v19

    if-ge v14, v0, :cond_11

    aget-byte v8, v18, v14

    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v5

    const/16 v4, 0x20

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    invoke-static {v8, v2}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v11

    const/16 v10, 0x21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/baidu/mobstat/ap$c;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;)V

    invoke-virtual {v2, v5}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    invoke-virtual {v2, v11}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    invoke-virtual {v2}, Lcom/baidu/mobstat/ap$c;->b()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    :goto_6
    if-nez v3, :cond_10

    new-instance v8, Lcom/baidu/mobstat/ap$c;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;)V

    const/16 v4, 0x20

    :goto_7
    const/16 v2, 0x22

    if-ge v4, v2, :cond_a

    invoke-virtual {v15}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    :cond_7
    if-nez v2, :cond_9

    invoke-static {}, Lcom/baidu/mobstat/am$g;->b()Lcom/baidu/mobstat/am$g;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_5

    :cond_9
    invoke-virtual {v8, v2}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v8}, Lcom/baidu/mobstat/ap$c;->b()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    move-object v8, v3

    :goto_8
    if-eqz v2, :cond_f

    new-instance v9, Lcom/baidu/mobstat/ap$c;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;)V

    const/16 v4, 0x22

    :goto_9
    const/16 v2, 0x5e

    if-ge v4, v2, :cond_c

    invoke-virtual {v15}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    :cond_b
    if-nez v2, :cond_d

    :cond_c
    invoke-virtual {v9}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v2

    if-lez v2, :cond_f

    invoke-virtual {v9}, Lcom/baidu/mobstat/ap$c;->b()[B

    move-result-object v5

    :goto_a
    const/4 v2, 0x0

    const-string v7, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x1

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x1

    :goto_b
    new-instance v2, Lcom/baidu/mobstat/ap$e;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    move-object/from16 v3, v17

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/ap$e;-><init>([BB[BZLjava/lang/String;)V

    if-nez v2, :cond_e

    invoke-static {}, Lcom/baidu/mobstat/am$g;->b()Lcom/baidu/mobstat/am$g;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v9, v2}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    invoke-virtual {v2}, Lcom/baidu/mobstat/ap$e;->a()Lcom/baidu/mobstat/bw$a;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/am$g;->a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$g;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    move-object v8, v3

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :cond_12
    move v6, v2

    goto :goto_b
.end method

.method public a(Lcom/baidu/mobstat/am$c;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mobstat/ap;->a:Lcom/baidu/mobstat/am$a;

    iget-object v0, v0, Lcom/baidu/mobstat/am$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    return-void
.end method
