.class public Lcom/baidu/mobstat/ap;
.super Lcom/baidu/mobstat/am;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ap$a;,
        Lcom/baidu/mobstat/ap$b;,
        Lcom/baidu/mobstat/ap$c;,
        Lcom/baidu/mobstat/ap$d;,
        Lcom/baidu/mobstat/ap$d$a;,
        Lcom/baidu/mobstat/ap$e;,
        Lcom/baidu/mobstat/ap$f;,
        Lcom/baidu/mobstat/ap$g;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/baidu/mobstat/ap$g;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "upc"

    const-wide/32 v1, 0x895440

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/mobstat/am;-><init>(Ljava/lang/String;J)V

    new-instance v0, Lcom/baidu/mobstat/ap$g;

    invoke-direct {v0}, Lcom/baidu/mobstat/ap$g;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ap$g;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/ap$d$a;",
            ">;I",
            "Lcom/baidu/mobstat/ap$f;",
            ")",
            "Lcom/baidu/mobstat/ap$a;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ap$d$a;

    invoke-static {v0}, Lcom/baidu/mobstat/ap$d$a;->b(Lcom/baidu/mobstat/ap$d$a;)Lcom/baidu/mobstat/ap$a;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/baidu/mobstat/ap$d$a;->a()V

    invoke-static {v0}, Lcom/baidu/mobstat/ap$d$a;->b(Lcom/baidu/mobstat/ap$d$a;)Lcom/baidu/mobstat/ap$a;

    move-result-object p1

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-virtual {p3}, Lcom/baidu/mobstat/ap$a;->a()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "content://%s/dat/v1/i%d/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p2}, Lcom/baidu/mobstat/ap$a;->a()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "content://%s/dic/v1/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "content://%s/clo/v1/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    if-ge v0, v1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/net/Uri;)Z
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_e
    iget-object v3, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x41

    invoke-virtual {v3, v0, v4, p1, v5}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_20

    return v3

    :catch_20
    move-exception p1

    return v2
.end method

.method private a(Landroid/net/Uri;I)Z
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_e
    iget-object v3, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    invoke-virtual {v3, v0, p1, p2}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/mobstat/ap$g;->b(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_1a

    const/4 p1, 0x1

    return p1

    :catch_1a
    move-exception p1

    return v2
.end method

.method private a(Lcom/baidu/mobstat/ap$a;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/baidu/mobstat/ap$c;Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mobstat/ap$c;",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/ap$a;",
            ">;)Z"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Landroid/content/UriMatcher;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/ap;->a(Landroid/content/UriMatcher;)V

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_27

    :cond_23
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getOutgoingPersistedUriPermissions()Ljava/util/List;

    move-result-object v4

    :cond_27
    const/4 v0, 0x1

    if-eqz v4, :cond_150

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_32

    goto/16 :goto_150

    :cond_32
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/UriPermission;

    invoke-virtual {v5}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v0, :cond_56

    if-eq v7, v10, :cond_56

    if-ne v7, v9, :cond_68

    :cond_56
    invoke-virtual {v5}, Landroid/content/UriPermission;->isWritePermission()Z

    move-result v11

    if-eqz v11, :cond_68

    invoke-virtual {v5}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_64

    :cond_63
    const/4 v9, 0x2

    :goto_64
    invoke-direct {p0, v6, v9}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;I)Z

    goto :goto_36

    :cond_68
    if-ne v7, v0, :cond_9d

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_70
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7f

    :catch_7d
    move-exception v5

    const/4 v5, -0x1

    :goto_7f
    if-ltz v5, :cond_db

    invoke-virtual {p1}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v7

    if-lt v5, v7, :cond_88

    goto :goto_db

    :cond_88
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mobstat/ap$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_db

    :cond_9d
    if-ne v7, v10, :cond_c1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_db

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mobstat/ap$a;

    invoke-virtual {v8}, Lcom/baidu/mobstat/ap$a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a9

    goto/16 :goto_36

    :cond_c1
    if-ne v7, v9, :cond_36

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_36

    const-string v7, "yes"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    :cond_db
    :goto_db
    invoke-direct {p0, v6, v0}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;I)Z

    goto/16 :goto_36

    :cond_e0
    invoke-virtual {p1}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v1

    const/4 v9, 0x0

    :goto_e5
    if-ge v9, v1, :cond_102

    iget-object v3, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v9}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z

    move-result v3

    if-nez v3, :cond_ff

    return v0

    :cond_ff
    add-int/lit8 v9, v9, 0x1

    goto :goto_e5

    :cond_102
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_107
    if-ge v1, p1, :cond_123

    iget-object v3, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mobstat/ap$a;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;I)Z

    move-result v3

    if-nez v3, :cond_120

    return v0

    :cond_120
    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    :cond_123
    iget-object p1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_134

    return v0

    :cond_134
    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14f

    iget-object p2, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {p0, p2, p1, v1}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_14f

    return v0

    :cond_14f
    return v2

    :cond_150
    :goto_150
    return v0
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 11

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_a
    const/4 v0, 0x2

    if-ge v7, v0, :cond_25

    :try_start_d
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;III)I

    move-result p1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_26

    :catchall_1a
    move-exception v0

    const-wide/16 v0, 0x5

    :try_start_1d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v0

    :goto_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_25
    const/4 p1, -0x1

    :goto_26
    if-nez p1, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    return v6
.end method

.method private a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z
    .registers 13

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_a
    const/4 v0, 0x2

    const/4 v6, 0x1

    if-ge p3, v0, :cond_2d

    if-eqz p5, :cond_15

    :try_start_10
    iget v0, p5, Lcom/baidu/mobstat/ap$f;->a:I

    add-int/2addr v0, v6

    iput v0, p5, Lcom/baidu/mobstat/ap$f;->a:I

    :cond_15
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;III)I

    move-result p1
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_22

    goto :goto_2e

    :catchall_22
    move-exception v0

    const-wide/16 v0, 0x5

    :try_start_25
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-exception v0

    :goto_2a
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_2d
    const/4 p1, -0x1

    :goto_2e
    if-nez p1, :cond_31

    return v6

    :cond_31
    if-eqz p5, :cond_38

    iget p1, p5, Lcom/baidu/mobstat/ap$f;->b:I

    add-int/2addr p1, v6

    iput p1, p5, Lcom/baidu/mobstat/ap$f;->b:I

    :cond_38
    return p2
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;I)Z
    .registers 11

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_a
    const/4 v0, 0x2

    if-ge v6, v0, :cond_25

    :try_start_d
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;III)I

    move-result p1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_26

    :catchall_1a
    move-exception v0

    const-wide/16 v0, 0x5

    :try_start_1d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v0

    :goto_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_25
    const/4 p1, -0x1

    :goto_26
    if-nez p1, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    return p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_a
    const/4 v0, 0x2

    if-ge v6, v0, :cond_25

    :try_start_d
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->e:Lcom/baidu/mobstat/ap$g;

    iget-object v1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/ap$g;->a(Landroid/content/Context;Landroid/net/Uri;III)I

    move-result p1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_26

    :catchall_1a
    move-exception v0

    const-wide/16 v0, 0x5

    :try_start_1d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v0

    :goto_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_25
    const/4 p1, -0x1

    :goto_26
    if-nez p1, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    return p2
.end method

.method static synthetic a(Ljava/lang/String;)[B
    .registers 1

    invoke-static {p0}, Lcom/baidu/mobstat/ap;->b(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_3f

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_37

    if-eq v3, v5, :cond_37

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input is not hexadecimal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    return-object v1

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a string of even length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw p0

    :goto_49
    goto :goto_48
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cesium"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, "yes"

    aput-object v1, v0, p1

    const-string p1, "content://%s/clo/v1/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_f

    return v1

    :cond_f
    iget-object v0, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;)Z

    move-result v0

    iget-object v2, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->a(Landroid/net/Uri;)Z

    move-result p1

    if-eqz v0, :cond_38

    if-eqz p1, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;
    .registers 9

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_b

    invoke-static {}, Lcom/baidu/mobstat/am$e;->b()Lcom/baidu/mobstat/am$e;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-static {p2}, Lcom/baidu/mobstat/ap$e;->a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/ap$e;

    move-result-object p1

    if-nez p1, :cond_16

    invoke-static {}, Lcom/baidu/mobstat/am$e;->b()Lcom/baidu/mobstat/am$e;

    move-result-object p1

    return-object p1

    :cond_16
    new-instance p2, Lcom/baidu/mobstat/ap$c;

    iget-object v0, p1, Lcom/baidu/mobstat/ap$e;->a:[B

    invoke-direct {p2, p0, v0}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;[B)V

    iget-byte v0, p1, Lcom/baidu/mobstat/ap$e;->b:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    iget-byte v0, p1, Lcom/baidu/mobstat/ap$e;->b:B

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    iget-object v0, p1, Lcom/baidu/mobstat/ap$e;->c:[B

    if-eqz v0, :cond_4e

    iget-object p1, p1, Lcom/baidu/mobstat/ap$e;->c:[B

    array-length v0, p1

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v0, :cond_4e

    aget-byte v4, p1, v3

    invoke-static {v4, v1}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    invoke-static {v4, v2}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_4e
    new-instance p1, Lcom/baidu/mobstat/ap$b;

    invoke-direct {p1}, Lcom/baidu/mobstat/ap$b;-><init>()V

    :goto_53
    invoke-virtual {p2}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v0

    if-ge v1, v0, :cond_63

    invoke-virtual {p2, v1}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/ap$b;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_63
    invoke-virtual {p1}, Lcom/baidu/mobstat/ap$b;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/baidu/mobstat/ap;->a(Lcom/baidu/mobstat/ap$c;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static {}, Lcom/baidu/mobstat/am$e;->a()Lcom/baidu/mobstat/am$e;

    move-result-object p1

    return-object p1

    :cond_72
    invoke-virtual {p2}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_77
    if-ltz v0, :cond_83

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ap;->a(ILcom/baidu/mobstat/ap$a;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_77

    :cond_83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_87
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/mobstat/ap$a;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/ap;->a(Lcom/baidu/mobstat/ap$a;)Z

    goto :goto_87

    :cond_97
    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ap;->e(Ljava/lang/String;)Z

    invoke-static {}, Lcom/baidu/mobstat/am$e;->a()Lcom/baidu/mobstat/am$e;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/baidu/mobstat/am$f;)Lcom/baidu/mobstat/am$g;
    .registers 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_f

    invoke-static {}, Lcom/baidu/mobstat/am$g;->b()Lcom/baidu/mobstat/am$g;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, v7, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v9, 0x0

    :try_start_16
    invoke-static {v0, v8, v9}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result v0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_1b

    goto :goto_1d

    :catch_1b
    move-exception v0

    const/4 v0, -0x1

    :goto_1d
    if-gez v0, :cond_24

    invoke-static {}, Lcom/baidu/mobstat/am$g;->b()Lcom/baidu/mobstat/am$g;

    move-result-object v0

    return-object v0

    :cond_24
    new-instance v10, Lcom/baidu/mobstat/ap$f;

    invoke-direct {v10}, Lcom/baidu/mobstat/ap$f;-><init>()V

    new-instance v11, Lcom/baidu/mobstat/ap$c;

    invoke-direct {v11, v7}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;)V

    new-instance v12, Lcom/baidu/mobstat/ap$d;

    invoke-direct {v12}, Lcom/baidu/mobstat/ap$d;-><init>()V

    new-instance v13, Lcom/baidu/mobstat/ap$d;

    invoke-direct {v13}, Lcom/baidu/mobstat/ap$d;-><init>()V

    const/4 v1, 0x0

    :goto_39
    const/16 v2, 0x10

    if-ge v1, v2, :cond_51

    invoke-static {v1}, Lcom/baidu/mobstat/ap$a;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    invoke-direct {v7, v8, v2, v0}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Lcom/baidu/mobstat/ap$a;I)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v12, v2}, Lcom/baidu/mobstat/ap$d;->a(Lcom/baidu/mobstat/ap$a;)V

    goto :goto_4e

    :cond_4b
    invoke-virtual {v13, v2}, Lcom/baidu/mobstat/ap$d;->a(Lcom/baidu/mobstat/ap$a;)V

    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_51
    const/4 v14, 0x0

    :goto_52
    const/16 v15, 0x20

    if-ge v14, v15, :cond_83

    invoke-virtual {v12}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v14

    move v5, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    if-nez v1, :cond_76

    invoke-virtual {v13}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v14

    move v5, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    :cond_76
    if-nez v1, :cond_7d

    invoke-static {}, Lcom/baidu/mobstat/am$g;->b()Lcom/baidu/mobstat/am$g;

    move-result-object v0

    return-object v0

    :cond_7d
    invoke-virtual {v11, v1}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_52

    :cond_83
    invoke-virtual {v11}, Lcom/baidu/mobstat/ap$c;->b()[B

    move-result-object v11

    const-string v1, "0"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aget-byte v1, v1, v9

    const-string v2, "O"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v9

    const-string v3, "V"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aget-byte v3, v3, v9

    const/4 v14, 0x3

    new-array v6, v14, [B

    aput-byte v1, v6, v9

    const/4 v5, 0x1

    aput-byte v2, v6, v5

    const/4 v1, 0x2

    aput-byte v3, v6, v1

    const/4 v4, 0x0

    :goto_ab
    const/16 v16, 0x0

    if-ge v4, v14, :cond_103

    aget-byte v3, v6, v4

    invoke-static {v3, v9}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    const/16 v17, 0x20

    move-object/from16 v1, p0

    move-object/from16 p2, v2

    move-object/from16 v2, p1

    move v14, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move-object/from16 v4, p2

    const/4 v15, 0x1

    move v5, v0

    move-object/from16 v19, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-static {v14, v15}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v14

    const/16 v3, 0x21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v14

    move v5, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILcom/baidu/mobstat/ap$a;ILcom/baidu/mobstat/ap$f;)Z

    move-result v1

    if-eqz v1, :cond_fa

    new-instance v1, Lcom/baidu/mobstat/ap$c;

    invoke-direct {v1, v7}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;)V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    invoke-virtual {v1, v14}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    invoke-virtual {v1}, Lcom/baidu/mobstat/ap$c;->b()[B

    move-result-object v1

    aget-byte v1, v1, v9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_106

    :cond_fa
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v6, v19

    const/4 v5, 0x1

    const/4 v14, 0x3

    const/16 v15, 0x20

    goto :goto_ab

    :cond_103
    const/4 v15, 0x1

    move-object/from16 v1, v16

    :goto_106
    const/16 v14, 0x22

    if-nez v1, :cond_155

    new-instance v6, Lcom/baidu/mobstat/ap$c;

    invoke-direct {v6, v7}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;)V

    const/16 v5, 0x20

    :goto_111
    if-ge v5, v14, :cond_147

    invoke-virtual {v12}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v5

    move/from16 v18, v5

    move v5, v0

    move-object v14, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    if-nez v1, :cond_137

    invoke-virtual {v13}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v18

    move v5, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    :cond_137
    if-nez v1, :cond_13e

    invoke-static {}, Lcom/baidu/mobstat/am$g;->b()Lcom/baidu/mobstat/am$g;

    move-result-object v0

    return-object v0

    :cond_13e
    invoke-virtual {v14, v1}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v5, v18, 0x1

    move-object v6, v14

    const/16 v14, 0x22

    goto :goto_111

    :cond_147
    move-object v14, v6

    invoke-virtual {v14}, Lcom/baidu/mobstat/ap$c;->b()[B

    move-result-object v1

    aget-byte v1, v1, v9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    move-object v14, v1

    const/4 v5, 0x1

    goto :goto_157

    :cond_155
    move-object v14, v1

    const/4 v5, 0x0

    :goto_157
    if-eqz v5, :cond_1a0

    new-instance v6, Lcom/baidu/mobstat/ap$c;

    invoke-direct {v6, v7}, Lcom/baidu/mobstat/ap$c;-><init>(Lcom/baidu/mobstat/ap;)V

    const/16 v5, 0x22

    :goto_160
    const/16 v1, 0x5e

    if-ge v5, v1, :cond_193

    invoke-virtual {v12}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v5

    move/from16 v17, v5

    move v5, v0

    move-object v9, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    if-nez v1, :cond_188

    invoke-virtual {v13}, Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move v5, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;ILjava/util/List;ILcom/baidu/mobstat/ap$f;)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    :cond_188
    if-nez v1, :cond_18b

    goto :goto_194

    :cond_18b
    invoke-virtual {v9, v1}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v5, v17, 0x1

    move-object v6, v9

    const/4 v9, 0x0

    goto :goto_160

    :cond_193
    move-object v9, v6

    :goto_194
    invoke-virtual {v9}, Lcom/baidu/mobstat/ap$c;->a()I

    move-result v1

    if-lez v1, :cond_1a0

    invoke-virtual {v9}, Lcom/baidu/mobstat/ap$c;->b()[B

    move-result-object v1

    move-object v4, v1

    goto :goto_1a2

    :cond_1a0
    move-object/from16 v4, v16

    :goto_1a2
    invoke-direct {v7, v8, v0}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1bb

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v1, v0}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1b8

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v2

    :cond_1b8
    move-object v6, v2

    const/4 v5, 0x1

    goto :goto_1bd

    :cond_1bb
    move-object v6, v2

    const/4 v5, 0x0

    :goto_1bd
    new-instance v0, Lcom/baidu/mobstat/ap$e;

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    move-object v1, v0

    move-object v2, v11

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ap$e;-><init>([BB[BZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/mobstat/ap$e;->a()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/am$g;->a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$g;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/mobstat/am$c;)V
    .registers 2

    iget-object p1, p0, Lcom/baidu/mobstat/ap;->a:Lcom/baidu/mobstat/am$a;

    iget-object p1, p1, Lcom/baidu/mobstat/am$a;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/baidu/mobstat/ap;->d:Landroid/content/Context;

    return-void
.end method
