.class public Lcom/s1243808733/aide/completion/translate/Translate;
.super Ljava/lang/Object;
.source "Translate.java"


# static fields
.field private static final STATUS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final STATUS_TRANSLATEING:I = 0x1

.field static final STATUS_TRANSLATE_FINISH:I = 0x2


# direct methods
.method static bridge synthetic -$$Nest$sfgetSTATUS()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/aide/completion/translate/Translate;->dr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 18
    :try_start_0
    sget-object v0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 20
    invoke-virtual {p0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_34

    :cond_13
    if-eqz p1, :cond_2b

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_2b

    .line 27
    :cond_24
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setTranslation(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    goto :goto_2f

    .line 24
    :cond_2b
    :goto_2b
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 30
    :goto_2f
    invoke-static {p0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->update(Lcom/s1243808733/aide/completion/translate/TranslateTable;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception p0

    :cond_34
    :goto_34
    return-void
.end method

.method public static youdaoTranslate(Ljava/lang/String;)V
    .registers 3

    .line 41
    sget-object v0, Lcom/s1243808733/aide/completion/translate/Translate;->STATUS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 42
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    return-void

    .line 46
    :cond_16
    new-instance v0, Lcom/s1243808733/aide/completion/translate/Translate$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/completion/translate/Translate$1;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/Translate$1;->start()V

    return-void
.end method
