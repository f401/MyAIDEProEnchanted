.class Lcom/baidu/mobstat/p;
.super Lcom/baidu/mobstat/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 18
    const-string v0, "app_list3"

    const-string v1, "Create table if not exists app_list3(_id Integer primary key AUTOINCREMENT,time VARCHAR(50),content TEXT);"

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/i;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 91
    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 95
    :cond_f
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 96
    const-string v2, "time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 97
    const-string v3, "content"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 99
    :goto_21
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 100
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 101
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 104
    new-instance v8, Lcom/baidu/mobstat/i;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/baidu/mobstat/i;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3c
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5

    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string p1, "content"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/p;->a(Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(II)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/i;",
            ">;"
        }
    .end annotation

    .line 34
    const-string v0, "time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/mobstat/p;->a(Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/p;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_f

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_f
    return-object p2
.end method

.method public b(J)Z
    .registers 3

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/p;->a(J)Z

    move-result p1

    return p1
.end method
