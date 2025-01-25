.class public abstract Lorg/apache/commons/lang3/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final NO_CLASS_NAME_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private static final serialVersionUID:J = -0x23ea08d00c05296cL


# instance fields
.field private arrayContentDetail:Z

.field private arrayEnd:Ljava/lang/String;

.field private arraySeparator:Ljava/lang/String;

.field private arrayStart:Ljava/lang/String;

.field private contentEnd:Ljava/lang/String;

.field private contentStart:Ljava/lang/String;

.field private defaultFullDetail:Z

.field private fieldNameValueSeparator:Ljava/lang/String;

.field private fieldSeparator:Ljava/lang/String;

.field private fieldSeparatorAtEnd:Z

.field private fieldSeparatorAtStart:Z

.field private nullText:Ljava/lang/String;

.field private sizeEndText:Ljava/lang/String;

.field private sizeStartText:Ljava/lang/String;

.field private summaryObjectEndText:Ljava/lang/String;

.field private summaryObjectStartText:Ljava/lang/String;

.field private useClassName:Z

.field private useFieldNames:Z

.field private useIdentityHashCode:Z

.field private useShortClassName:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 98
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 109
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 121
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 131
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 143
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->NO_CLASS_NAME_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 162
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 170
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    .line 261
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    .line 271
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 276
    const-string v0, "["

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 281
    const-string v0, "]"

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 286
    const-string v0, "="

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 301
    const-string v0, ","

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 306
    const-string v0, "{"

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 311
    const-string v0, ","

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 316
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    .line 321
    const-string v0, "}"

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 327
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    .line 332
    const-string v0, "<null>"

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 337
    const-string v0, "<size="

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 342
    const-string v0, ">"

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 347
    const-string v0, "<"

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 352
    const-string v0, ">"

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 360
    return-void
.end method

.method static getRegistry()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 191
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .registers 2

    .line 206
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static register(Ljava/lang/Object;)V
    .registers 3

    .line 220
    if-eqz p0, :cond_1a

    .line 221
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 222
    if-nez v0, :cond_12

    .line 223
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 225
    :cond_12
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1a
    return-void
.end method

.method static unregister(Ljava/lang/Object;)V
    .registers 2

    .line 242
    if-eqz p0, :cond_16

    .line 243
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_16

    .line 245
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 247
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 251
    :cond_16
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .registers 4

    .line 751
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 753
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .registers 4

    .line 779
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 781
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .registers 6

    .line 807
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 809
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .registers 4

    .line 835
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 837
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 4

    .line 695
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 697
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .registers 6

    .line 667
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 669
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6

    .line 460
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 462
    if-nez p3, :cond_c

    .line 463
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 469
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 470
    return-void

    .line 466
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .registers 4

    .line 723
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 725
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 4

    .line 863
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 865
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .registers 6

    .line 1175
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1177
    if-nez p3, :cond_c

    .line 1178
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1187
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1188
    return-void

    .line 1180
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1181
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_8

    .line 1184
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .registers 6

    .line 1236
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1238
    if-nez p3, :cond_c

    .line 1239
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1248
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1249
    return-void

    .line 1241
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1242
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_8

    .line 1245
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .registers 6

    .line 1297
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1299
    if-nez p3, :cond_c

    .line 1300
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1309
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1310
    return-void

    .line 1302
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1303
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_8

    .line 1306
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .registers 6

    .line 1358
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1360
    if-nez p3, :cond_c

    .line 1361
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1370
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1371
    return-void

    .line 1363
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1364
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_8

    .line 1367
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .registers 6

    .line 1053
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1055
    if-nez p3, :cond_c

    .line 1056
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1065
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1066
    return-void

    .line 1058
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1059
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_8

    .line 1062
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .registers 6

    .line 992
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 994
    if-nez p3, :cond_c

    .line 995
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1004
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1005
    return-void

    .line 997
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 998
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_8

    .line 1001
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6

    .line 891
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 893
    if-nez p3, :cond_c

    .line 894
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 903
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 904
    return-void

    .line 896
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 897
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 900
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .registers 6

    .line 1114
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1116
    if-nez p3, :cond_c

    .line 1117
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1126
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1119
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1120
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_8

    .line 1123
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .registers 6

    .line 1419
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1421
    if-nez p3, :cond_c

    .line 1422
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1431
    :goto_8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1432
    return-void

    .line 1424
    :cond_c
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1425
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_8

    .line 1428
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_8
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4

    .line 1476
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_18

    if-eqz p2, :cond_18

    .line 1477
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1478
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_19

    .line 1479
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1484
    :cond_18
    :goto_18
    return-void

    .line 1481
    :cond_19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18
.end method

.method protected appendContentEnd(Ljava/lang/StringBuffer;)V
    .registers 3

    .line 1515
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1516
    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .registers 3

    .line 1506
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1507
    return-void
.end method

.method protected appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 601
    invoke-static {p1, p3}, Lorg/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 602
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .registers 4

    .line 765
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 766
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .registers 4

    .line 793
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 794
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .registers 6

    .line 821
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 822
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .registers 4

    .line 849
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 850
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 4

    .line 709
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 710
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    .line 937
    if-lez p3, :cond_7

    .line 938
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 940
    :cond_7
    if-nez p4, :cond_d

    .line 941
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 945
    :goto_c
    return-void

    .line 943
    :cond_d
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_c
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .registers 6

    .line 681
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 682
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 614
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 615
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .line 626
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 627
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .line 638
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 639
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .registers 4

    .line 737
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 738
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 4

    .line 877
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 878
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .registers 6

    .line 1200
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1201
    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1202
    if-lez v0, :cond_10

    .line 1203
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1205
    :cond_10
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1207
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1208
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .registers 6

    .line 1261
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1262
    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1263
    if-lez v0, :cond_10

    .line 1264
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1266
    :cond_10
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 1262
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1268
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1269
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .registers 8

    .line 1322
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1323
    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1324
    if-lez v0, :cond_10

    .line 1325
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1327
    :cond_10
    aget-wide v2, p3, v0

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 1323
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1329
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1330
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .registers 6

    .line 1383
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1384
    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1385
    if-lez v0, :cond_10

    .line 1386
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1388
    :cond_10
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1390
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1391
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .registers 6

    .line 1078
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1080
    if-lez v0, :cond_10

    .line 1081
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1083
    :cond_10
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1085
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1086
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .registers 8

    .line 1017
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1018
    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1019
    if-lez v0, :cond_10

    .line 1020
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1022
    :cond_10
    aget-wide v2, p3, v0

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1024
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1025
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 918
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_11

    .line 920
    aget-object v1, p3, v0

    .line 921
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 923
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .registers 6

    .line 1139
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1140
    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1141
    if-lez v0, :cond_10

    .line 1142
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1144
    :cond_10
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 1140
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1146
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1147
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .registers 6

    .line 1444
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1445
    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1446
    if-lez v0, :cond_10

    .line 1447
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1449
    :cond_10
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 1445
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1451
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1452
    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4

    .line 427
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_7

    .line 428
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 430
    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    .line 431
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3

    .line 1559
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 1560
    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .registers 3

    .line 1536
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1537
    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4

    .line 1546
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    .line 1547
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1548
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1550
    :cond_e
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4

    .line 1493
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p2, :cond_1b

    .line 1494
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1495
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1496
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1498
    :cond_1b
    return-void
.end method

.method protected appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 7

    .line 492
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    instance-of v1, p3, Ljava/lang/Number;

    if-nez v1, :cond_16

    instance-of v1, p3, Ljava/lang/Boolean;

    if-nez v1, :cond_16

    instance-of v1, p3, Ljava/lang/Character;

    if-nez v1, :cond_16

    .line 494
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    :goto_15
    return-void

    .line 498
    :cond_16
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 501
    :try_start_19
    instance-of v1, p3, Ljava/util/Collection;

    if-eqz v1, :cond_3b

    .line 502
    if-eqz p4, :cond_2a

    .line 503
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_36

    .line 584
    :goto_26
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    goto :goto_15

    .line 505
    :cond_2a
    :try_start_2a
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_36

    goto :goto_26

    .line 584
    :catchall_36
    move-exception v1

    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 585
    throw v1

    .line 508
    :cond_3b
    :try_start_3b
    instance-of v1, p3, Ljava/util/Map;

    if-eqz v1, :cond_55

    .line 509
    if-eqz p4, :cond_49

    .line 510
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_26

    .line 512
    :cond_49
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_26

    .line 515
    :cond_55
    instance-of v1, p3, [J

    if-eqz v1, :cond_6b

    .line 516
    if-eqz p4, :cond_63

    .line 517
    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_26

    .line 519
    :cond_63
    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_26

    .line 522
    :cond_6b
    instance-of v1, p3, [I

    if-eqz v1, :cond_81

    .line 523
    if-eqz p4, :cond_79

    .line 524
    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_26

    .line 526
    :cond_79
    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_26

    .line 529
    :cond_81
    instance-of v1, p3, [S

    if-eqz v1, :cond_97

    .line 530
    if-eqz p4, :cond_8f

    .line 531
    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_26

    .line 533
    :cond_8f
    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_26

    .line 536
    :cond_97
    instance-of v1, p3, [B

    if-eqz v1, :cond_ae

    .line 537
    if-eqz p4, :cond_a5

    .line 538
    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_26

    .line 540
    :cond_a5
    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_26

    .line 543
    :cond_ae
    instance-of v1, p3, [C

    if-eqz v1, :cond_c6

    .line 544
    if-eqz p4, :cond_bd

    .line 545
    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_26

    .line 547
    :cond_bd
    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_26

    .line 550
    :cond_c6
    instance-of v1, p3, [D

    if-eqz v1, :cond_de

    .line 551
    if-eqz p4, :cond_d5

    .line 552
    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_26

    .line 554
    :cond_d5
    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_26

    .line 557
    :cond_de
    instance-of v1, p3, [F

    if-eqz v1, :cond_f6

    .line 558
    if-eqz p4, :cond_ed

    .line 559
    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_26

    .line 561
    :cond_ed
    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_26

    .line 564
    :cond_f6
    instance-of v1, p3, [Z

    if-eqz v1, :cond_10e

    .line 565
    if-eqz p4, :cond_105

    .line 566
    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_26

    .line 568
    :cond_105
    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_26

    .line 571
    :cond_10e
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 572
    if-eqz p4, :cond_123

    .line 573
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_26

    .line 575
    :cond_123
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_26

    .line 578
    :cond_12c
    if-eqz p4, :cond_133

    .line 579
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_26

    .line 581
    :cond_133
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_136
    .catchall {:try_start_3b .. :try_end_136} :catchall_36

    goto/16 :goto_26
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4

    .line 1527
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1528
    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4

    .line 409
    if-eqz p2, :cond_12

    .line 410
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 412
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 413
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v0, :cond_12

    .line 414
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 417
    :cond_12
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 651
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .registers 5

    .line 1220
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1221
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .registers 5

    .line 1281
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1282
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .registers 5

    .line 1342
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1343
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .registers 5

    .line 1403
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1404
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .registers 5

    .line 1098
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1099
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .registers 5

    .line 1037
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1038
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 976
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 977
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .registers 5

    .line 1159
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1160
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .registers 5

    .line 1464
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1465
    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 5

    .line 1578
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1579
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1580
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1581
    return-void
.end method

.method public appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3

    .line 375
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 6

    .line 389
    if-eqz p2, :cond_28

    .line 390
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 392
    if-eq v0, v1, :cond_28

    if-ltz v0, :cond_28

    if-ltz v1, :cond_28

    .line 393
    iget-boolean v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v2, :cond_22

    .line 394
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 396
    :cond_22
    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 400
    :cond_28
    return-void
.end method

.method protected getArrayEnd()Ljava/lang/String;
    .registers 2

    .line 1778
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getArraySeparator()Ljava/lang/String;
    .registers 2

    .line 1804
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getArrayStart()Ljava/lang/String;
    .registers 2

    .line 1752
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentEnd()Ljava/lang/String;
    .registers 2

    .line 1856
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStart()Ljava/lang/String;
    .registers 2

    .line 1830
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldNameValueSeparator()Ljava/lang/String;
    .registers 2

    .line 1882
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldSeparator()Ljava/lang/String;
    .registers 2

    .line 1908
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getNullText()Ljava/lang/String;
    .registers 2

    .line 1982
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1614
    invoke-static {p1}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeEndText()Ljava/lang/String;
    .registers 2

    .line 2043
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSizeStartText()Ljava/lang/String;
    .registers 2

    .line 2011
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectEndText()Ljava/lang/String;
    .registers 2

    .line 2107
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectStartText()Ljava/lang/String;
    .registers 2

    .line 2075
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected isArrayContentDetail()Z
    .registers 2

    .line 1732
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    return v0
.end method

.method protected isDefaultFullDetail()Z
    .registers 2

    .line 1711
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return v0
.end method

.method protected isFieldSeparatorAtEnd()Z
    .registers 2

    .line 1960
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return v0
.end method

.method protected isFieldSeparatorAtStart()Z
    .registers 2

    .line 1936
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return v0
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .registers 3

    .line 1598
    if-nez p1, :cond_5

    .line 1599
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    .line 1601
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4
.end method

.method protected isUseClassName()Z
    .registers 2

    .line 1628
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    return v0
.end method

.method protected isUseFieldNames()Z
    .registers 2

    .line 1690
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    return v0
.end method

.method protected isUseIdentityHashCode()Z
    .registers 2

    .line 1670
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected isUseShortClassName()Z
    .registers 2

    .line 1649
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 957
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 958
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 959
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_16

    .line 960
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 961
    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 963
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 964
    return-void
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .registers 4

    .line 441
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 442
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 444
    :cond_16
    return-void
.end method

.method protected setArrayContentDetail(Z)V
    .registers 2

    .line 1741
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    .line 1742
    return-void
.end method

.method protected setArrayEnd(Ljava/lang/String;)V
    .registers 2

    .line 1790
    if-nez p1, :cond_4

    .line 1791
    const-string p1, ""

    .line 1793
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 1794
    return-void
.end method

.method protected setArraySeparator(Ljava/lang/String;)V
    .registers 2

    .line 1816
    if-nez p1, :cond_4

    .line 1817
    const-string p1, ""

    .line 1819
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 1820
    return-void
.end method

.method protected setArrayStart(Ljava/lang/String;)V
    .registers 2

    .line 1764
    if-nez p1, :cond_4

    .line 1765
    const-string p1, ""

    .line 1767
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 1768
    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .registers 2

    .line 1868
    if-nez p1, :cond_4

    .line 1869
    const-string p1, ""

    .line 1871
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 1872
    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .registers 2

    .line 1842
    if-nez p1, :cond_4

    .line 1843
    const-string p1, ""

    .line 1845
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 1846
    return-void
.end method

.method protected setDefaultFullDetail(Z)V
    .registers 2

    .line 1721
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    .line 1722
    return-void
.end method

.method protected setFieldNameValueSeparator(Ljava/lang/String;)V
    .registers 2

    .line 1894
    if-nez p1, :cond_4

    .line 1895
    const-string p1, ""

    .line 1897
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 1898
    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .registers 2

    .line 1920
    if-nez p1, :cond_4

    .line 1921
    const-string p1, ""

    .line 1923
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 1924
    return-void
.end method

.method protected setFieldSeparatorAtEnd(Z)V
    .registers 2

    .line 1971
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 1972
    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .registers 2

    .line 1947
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 1948
    return-void
.end method

.method protected setNullText(Ljava/lang/String;)V
    .registers 2

    .line 1994
    if-nez p1, :cond_4

    .line 1995
    const-string p1, ""

    .line 1997
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 1998
    return-void
.end method

.method protected setSizeEndText(Ljava/lang/String;)V
    .registers 2

    .line 2058
    if-nez p1, :cond_4

    .line 2059
    const-string p1, ""

    .line 2061
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 2062
    return-void
.end method

.method protected setSizeStartText(Ljava/lang/String;)V
    .registers 2

    .line 2026
    if-nez p1, :cond_4

    .line 2027
    const-string p1, ""

    .line 2029
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 2030
    return-void
.end method

.method protected setSummaryObjectEndText(Ljava/lang/String;)V
    .registers 2

    .line 2122
    if-nez p1, :cond_4

    .line 2123
    const-string p1, ""

    .line 2125
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 2126
    return-void
.end method

.method protected setSummaryObjectStartText(Ljava/lang/String;)V
    .registers 2

    .line 2090
    if-nez p1, :cond_4

    .line 2091
    const-string p1, ""

    .line 2093
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 2094
    return-void
.end method

.method protected setUseClassName(Z)V
    .registers 2

    .line 1637
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    .line 1638
    return-void
.end method

.method protected setUseFieldNames(Z)V
    .registers 2

    .line 1699
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    .line 1700
    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .registers 2

    .line 1679
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 1680
    return-void
.end method

.method protected setUseShortClassName(Z)V
    .registers 2

    .line 1659
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    .line 1660
    return-void
.end method
