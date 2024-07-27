.class public Lcom/s1243808733/aide/completion/translate/Translate;
.super Ljava/lang/Object;
.source "Translate.java"


# static fields
.field private static final STATUS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final STATUS_TRANSLATEING:I = 0x1

.field static final STATUS_TRANSLATE_FINISH:I = 0x2


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000000(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/aide/completion/translate/Translate;->dr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$L1000001()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$S1000001(Ljava/util/Map;)V
    .registers 1

    sput-object p0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    return-void
.end method

.method private static dr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    .line 18
    :try_start_0
    sget-object v0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 30
    :goto_1
    invoke-static {v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->update(Lcom/s1243808733/aide/completion/translate/TranslateTable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setTranslation(Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static youdaoTranslate(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/completion/translate/Translate$100000000;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->start()V

    goto :goto_0
.end method
