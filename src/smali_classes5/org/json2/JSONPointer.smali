.class public Lorg/json2/JSONPointer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/json2/JSONPointer$Builder;
    }
.end annotation


# static fields
.field private static final ENCODING:Ljava/lang/String; = "utf-8"


# instance fields
.field private final refTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_81

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/json2/JSONPointer;->refTokens:Ljava/util/List;

    :goto_19
    return-void

    :cond_1a
    const-string v0, "#/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_27
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_2c} :catch_4f

    move-result-object v0

    :goto_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/json2/JSONPointer;->refTokens:Ljava/util/List;

    const/4 v1, -0x1

    :cond_35
    add-int/lit8 v2, v1, 0x1

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v2, v1, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_64

    :cond_45
    iget-object v2, p0, Lorg/json2/JSONPointer;->refTokens:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4c
    if-gez v1, :cond_35

    goto :goto_19

    :catch_4f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_56
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_64
    if-ltz v1, :cond_74

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_6a
    iget-object v3, p0, Lorg/json2/JSONPointer;->refTokens:Ljava/util/List;

    invoke-static {v2}, Lorg/json2/JSONPointer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_74
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6a

    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a JSON pointer should start with \'/\' or \'#/\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pointer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/json2/JSONPointer;->refTokens:Ljava/util/List;

    return-void
.end method

.method public static builder()Lorg/json2/JSONPointer$Builder;
    .registers 1

    new-instance v0, Lorg/json2/JSONPointer$Builder;

    invoke-direct {v0}, Lorg/json2/JSONPointer$Builder;-><init>()V

    return-object v0
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "~"

    const-string v1, "~0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "~1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readByIndexToken(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONPointerException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    check-cast p0, Lorg/json2/JSONArray;

    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_b} :catch_2b

    move-result v1

    if-ge v0, v1, :cond_3c

    :try_start_e
    invoke-virtual {p0, v0}, Lorg/json2/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_11
    .catch Lorg/json2/JSONException; {:try_start_e .. :try_end_11} :catch_13
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_2b

    move-result-object v0

    return-object v0

    :catch_13
    move-exception v1

    :try_start_14
    new-instance v2, Lorg/json2/JSONPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading value at index position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/json2/JSONPointerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    new-instance v1, Lorg/json2/JSONPointerException;

    const-string v2, "%s is not an array index"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/json2/JSONPointerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3c
    :try_start_3c
    new-instance v0, Lorg/json2/JSONPointerException;

    const-string v1, "index %s is out of bounds - the array has %d elements"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json2/JSONPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_59} :catch_2b
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "~1"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "~0"

    const-string v2, "~"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public queryFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONPointerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/json2/JSONPointer;->refTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p1

    :cond_9
    iget-object v0, p0, Lorg/json2/JSONPointer;->refTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, p1

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    instance-of v3, v1, Lorg/json2/JSONObject;

    if-eqz v3, :cond_2b

    check-cast v1, Lorg/json2/JSONObject;

    invoke-static {v0}, Lorg/json2/JSONPointer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_2b
    instance-of v3, v1, Lorg/json2/JSONArray;

    if-eqz v3, :cond_34

    invoke-static {v1, v0}, Lorg/json2/JSONPointer;->readByIndexToken(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_34
    new-instance v2, Lorg/json2/JSONPointerException;

    const-string v3, "value [%s] is not an array or object therefore its key %s cannot be resolved"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json2/JSONPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_49
    move-object p1, v1

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/json2/JSONPointer;->refTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/json2/JSONPointer;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURIFragment()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/json2/JSONPointer;->refTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_d

    :catch_28
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_32} :catch_28

    move-result-object v0

    return-object v0
.end method
