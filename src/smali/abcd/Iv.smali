.class public Labcd/Iv;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/Iv;->j6:Ljava/util/Map;

    return-void
.end method

.method public static j6(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    const-string v0, "BACKBONE_INTENT"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p4, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    sget-object v2, Labcd/Iv;->j6:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private static j6(ILandroid/app/Notification;)Lcom/appfour/backbone/api/objects/UserNotification;
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_3

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Lcom/appfour/backbone/api/objects/UserNotification;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/appfour/backbone/api/objects/UserNotification;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    return-object v2

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static j6(Landroid/app/Activity;I)Lcom/appfour/backbone/api/objects/UserNotificationAction;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Labcd/Iv;->j6(I)Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    const/4 v3, 0x0

    move-object v0, v1

    move-object v2, v1

    :goto_0
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v6, v7, :cond_1

    :cond_0
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextNull()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v6

    long-to-int v3, v6

    goto :goto_0

    :cond_3
    const-string v7, "group"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v7, "extras"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    :goto_2
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_7
    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V

    new-instance v5, Lcom/appfour/backbone/api/objects/UserNotification;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, v6, v3, v0, v4}, Lcom/appfour/backbone/api/objects/UserNotification;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    invoke-direct {v0, v5, p0, v2}, Lcom/appfour/backbone/api/objects/UserNotificationAction;-><init>(Lcom/appfour/backbone/api/objects/UserNotification;Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static j6()Ljava/io/File;
    .locals 2

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notifications"

    invoke-static {v0, v1}, Labcd/uw;->j6(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static j6(I)Ljava/io/File;
    .locals 3

    invoke-static {}, Labcd/Iv;->j6()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static j6(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Labcd/Iv;->j6(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static j6(Ljava/lang/Integer;Lcom/appfour/backbone/api/objects/UserNotification;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Labcd/Iv;->j6(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v4, Landroid/util/JsonWriter;

    invoke-direct {v4, v3}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v2, "name"

    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v2, "id"

    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotification;->getId()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "group"

    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v2, "extras"

    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotification;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static j6(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 7

    invoke-static {p1, p2}, Labcd/Iv;->j6(ILandroid/app/Notification;)Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object v3

    iget-object v0, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    sget-object v1, Labcd/Iv;->j6:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, "__CONTENT"

    invoke-static {v0, v3, v1}, Labcd/Iv;->j6(Ljava/lang/Integer;Lcom/appfour/backbone/api/objects/UserNotification;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    sget-object v1, Labcd/Iv;->j6:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "__DELETE"

    invoke-static {v0, v3, v1}, Labcd/Iv;->j6(Ljava/lang/Integer;Lcom/appfour/backbone/api/objects/UserNotification;Ljava/lang/String;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    iget-object v4, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v1, v4, v2

    sget-object v6, Labcd/Iv;->j6:Ljava/util/Map;

    iget-object v0, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    iget-object v1, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v3, v1}, Labcd/Iv;->j6(Ljava/lang/Integer;Lcom/appfour/backbone/api/objects/UserNotification;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {v3}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BACKBONE_INTENT"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Labcd/Iv;->j6(Landroid/app/Activity;I)Lcom/appfour/backbone/api/objects/UserNotificationAction;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Labcd/Iv;->j6(Ljava/lang/Integer;)V

    if-eqz v1, :cond_0

    invoke-static {v1}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
