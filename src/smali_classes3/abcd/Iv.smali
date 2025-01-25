.class public Labcd/Iv;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/Iv;->j6:Ljava/util/Map;

    return-void
.end method

.method public static j6(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 8

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const-string v1, "BACKBONE_INTENT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p4, :cond_1b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1b

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_1f

    :cond_1b
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_1f
    sget-object p1, Labcd/Iv;->j6:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private static j6(ILandroid/app/Notification;)Lcom/appfour/backbone/api/objects/UserNotification;
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3f

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_35

    :goto_2d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_35
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3a

    goto :goto_2d

    :cond_3a
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_17

    goto :goto_2d

    :cond_3f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4a

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object p1

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    :goto_4b
    new-instance v1, Lcom/appfour/backbone/api/objects/UserNotification;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/appfour/backbone/api/objects/UserNotification;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method private static j6(Landroid/app/Activity;I)Lcom/appfour/backbone/api/objects/UserNotificationAction;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Labcd/Iv;->j6(I)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    const/4 p1, 0x0

    move-object v3, v0

    move-object v4, v3

    :goto_1a
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-virtual {v2}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v5, v6, :cond_38

    :goto_34
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextNull()V

    goto :goto_1a

    :cond_38
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    :cond_3d
    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-virtual {v2}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v5

    long-to-int p1, v5

    goto :goto_1a

    :cond_4b
    const-string v6, "group"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {v2}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v5, v6, :cond_5c

    goto :goto_34

    :cond_5c
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_61
    const-string v6, "extras"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    :goto_6c
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    :cond_7e
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    goto :goto_1a

    :cond_82
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1a

    :cond_86
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    new-instance v2, Lcom/appfour/backbone/api/objects/UserNotification;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v2, v5, p1, v3, v1}, Lcom/appfour/backbone/api/objects/UserNotification;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    new-instance p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    invoke-direct {p1, v2, p0, v4}, Lcom/appfour/backbone/api/objects/UserNotificationAction;-><init>(Lcom/appfour/backbone/api/objects/UserNotification;Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_97} :catch_98

    return-object p1

    :catch_98
    move-exception p0

    return-object v0
.end method

.method private static j6()Ljava/io/File;
    .registers 2

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notifications"

    invoke-static {v0, v1}, Labcd/uw;->j6(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static j6(I)Ljava/io/File;
    .registers 4

    invoke-static {}, Labcd/Iv;->j6()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private static j6(Ljava/lang/Integer;)V
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Labcd/Iv;->j6(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static j6(Ljava/lang/Integer;Lcom/appfour/backbone/api/objects/UserNotification;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Labcd/Iv;->j6(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance p0, Landroid/util/JsonWriter;

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "name"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string p2, "id"

    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotification;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string p2, "group"

    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotification;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string p2, "extras"

    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserNotification;->getExtras()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_54

    :cond_74
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_7f

    :catch_7e
    move-exception p0

    :goto_7f
    return-void
.end method

.method public static j6(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 7

    invoke-static {p1, p2}, Labcd/Iv;->j6(ILandroid/app/Notification;)Lcom/appfour/backbone/api/objects/UserNotification;

    move-result-object p0

    iget-object p1, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_1f

    sget-object v0, Labcd/Iv;->j6:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    const-string v0, "__CONTENT"

    invoke-static {p1, p0, v0}, Labcd/Iv;->j6(Ljava/lang/Integer;Lcom/appfour/backbone/api/objects/UserNotification;Ljava/lang/String;)V

    :cond_1f
    iget-object p1, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_3a

    sget-object v0, Labcd/Iv;->j6:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3a

    const-string v0, "__DELETE"

    invoke-static {p1, p0, v0}, Labcd/Iv;->j6(Ljava/lang/Integer;Lcom/appfour/backbone/api/objects/UserNotification;Ljava/lang/String;)V

    :cond_3a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_6e

    iget-object p1, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p1, :cond_6e

    array-length p2, p1

    const/4 v0, 0x0

    :goto_46
    if-ge v0, p2, :cond_6e

    aget-object v1, p1, v0

    sget-object v2, Labcd/Iv;->j6:Ljava/util/Map;

    iget-object v3, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v2, :cond_6b

    iget-object v1, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_64

    const/4 v1, 0x0

    goto :goto_68

    :cond_64
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_68
    invoke-static {v3, p0, v1}, Labcd/Iv;->j6(Ljava/lang/Integer;Lcom/appfour/backbone/api/objects/UserNotification;Ljava/lang/String;)V

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_6e
    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserNotification;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "BACKBONE_INTENT"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Labcd/Iv;->j6(Landroid/app/Activity;I)Lcom/appfour/backbone/api/objects/UserNotificationAction;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Labcd/Iv;->j6(Ljava/lang/Integer;)V

    if-eqz p0, :cond_25

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)V

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method
