.class final Lcom/blankj/utilcode/util/LogUtils$LogFormatter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogFormatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static array2String(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_b

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p0, [Z

    if-eqz v0, :cond_16

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_16
    instance-of v0, p0, [B

    if-eqz v0, :cond_21

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_21
    instance-of v0, p0, [C

    if-eqz v0, :cond_2c

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2c
    instance-of v0, p0, [D

    if-eqz v0, :cond_37

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_37
    instance-of v0, p0, [F

    if-eqz v0, :cond_42

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_42
    instance-of v0, p0, [I

    if-eqz v0, :cond_4d

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_4d
    instance-of v0, p0, [J

    if-eqz v0, :cond_58

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_58
    instance-of v0, p0, [S

    if-eqz v0, :cond_63

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array has incompatible type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static bundle2String(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "Bundle {}"

    :goto_10
    return-object v0

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bundle { "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v0, v1, Landroid/os/Bundle;

    if-eqz v0, :cond_52

    if-ne v1, p0, :cond_4a

    const-string v0, "(this Bundle)"

    :goto_37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v0, " }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_4a
    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->bundle2String(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_52
    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->access$1500(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_5a
    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d
.end method

.method private static clipData2String(Landroid/content/ClipData;Ljava/lang/StringBuilder;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "ClipData.Item {}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    return-void

    :cond_d
    const-string v1, "ClipData.Item { "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    const-string v0, "H:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_26
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3a

    const-string v0, "T:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_3a
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_4e
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_66

    const-string v1, "I:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->intent2String(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_66
    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c
.end method

.method private static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_19

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_1a

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    :cond_19
    :goto_19
    return-object p0

    :cond_1a
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_29

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_29
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_2c} :catch_32

    move-result v2

    if-eqz v2, :cond_19

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_19
.end method

.method private static formatXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    const-string v3, "indent"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "{http://xml.apache.org/xslt}indent-amount"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_51

    move-result-object p0

    :goto_50
    return-object p0

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method

.method private static intent2String(Landroid/content/Intent;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x1

    const/16 v5, 0x20

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Intent { "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    const-string v4, "act="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1f
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_53

    if-nez v0, :cond_2a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2a
    const-string v0, "cat=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v2, :cond_46

    const/16 v2, 0x2c

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_33

    :cond_4b
    move v0, v2

    goto :goto_1f

    :cond_4d
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_53
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_67

    if-nez v0, :cond_5e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5e
    const-string v0, "dat="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_67
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7b

    if-nez v0, :cond_72

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_72
    const-string v0, "typ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_7b
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    if-eqz v2, :cond_93

    if-nez v0, :cond_86

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_86
    const-string v0, "flg=0x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_93
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a7

    if-nez v0, :cond_9e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9e
    const-string v0, "pkg="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_a7
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_bf

    if-nez v0, :cond_b2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b2
    const-string v0, "cmp="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_bf
    invoke-virtual {p0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_d7

    if-nez v0, :cond_ca

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ca
    const-string v0, "bnds="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_d7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_ec

    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_ec

    if-nez v0, :cond_e8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e8
    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->clipData2String(Landroid/content/ClipData;Ljava/lang/StringBuilder;)V

    move v0, v1

    :cond_ec
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_139

    if-nez v0, :cond_f7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f7
    const-string v0, "extras={"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->bundle2String(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_12a

    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_12a

    if-nez v1, :cond_119

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_119
    const-string v1, "sel={"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, p0, :cond_134

    const-string v0, "(this Intent)"

    :goto_122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12a
    const-string v0, " }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_134
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->intent2String(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_122

    :cond_139
    move v1, v0

    goto :goto_108
.end method

.method private static object2Json(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getGson4LogUtils()Lutilcode/com/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lutilcode/com/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_16

    move-result-object v0

    goto :goto_c

    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method static object2String(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->object2String(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static object2String(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->array2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1a
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_25

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->bundle2String(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_25
    instance-of v0, p0, Landroid/content/Intent;

    if-eqz v0, :cond_30

    check-cast p0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->intent2String(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_30
    const/16 v0, 0x20

    if-ne p1, v0, :cond_39

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->object2Json(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_39
    const/16 v0, 0x30

    if-ne p1, v0, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->formatXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
