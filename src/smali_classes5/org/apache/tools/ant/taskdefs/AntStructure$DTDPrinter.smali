.class Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;
.super Ljava/lang/Object;
.source "AntStructure.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/AntStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DTDPrinter"
.end annotation


# static fields
.field private static final BOOLEAN:Ljava/lang/String; = "%boolean;"

.field private static final TASKS:Ljava/lang/String; = "%tasks;"

.field private static final TYPES:Ljava/lang/String; = "%types;"


# instance fields
.field private final visited:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->visited:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/AntStructure$1;)V
    .registers 2

    .line 161
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;-><init>()V

    return-void
.end method

.method public static final areNmtokens([Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 391
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_11

    aget-object v3, p0, v1

    .line 392
    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->isNmtoken(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 396
    :goto_d
    return v0

    .line 391
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 396
    :cond_11
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static final isNmtoken(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 371
    :goto_6
    if-ge v1, v2, :cond_26

    .line 372
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 374
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_23

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_23

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_23

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_23

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_23

    .line 379
    :goto_22
    return v0

    .line 371
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 379
    :cond_26
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private printHead(Ljava/io/PrintWriter;Ljava/util/Set;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 189
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string v0, "<!ENTITY % boolean \"(true|false|on|off|yes|no)\">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 193
    const-string v1, " | "

    const-string v2, "<!ENTITY % tasks \""

    const-string v3, "\">"

    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 192
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 196
    const-string v1, " | "

    const-string v2, "<!ENTITY % types \""

    const-string v3, "\">"

    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 195
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 200
    const-string v0, "<!ELEMENT project (target | extension-point | "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    const-string v0, "%tasks;"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    const-string v0, "%types;"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    const-string v0, ")*>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const-string v0, "<!ATTLIST project"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    const-string v0, "          name    CDATA #IMPLIED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    const-string v0, "          default CDATA #IMPLIED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    const-string v0, "          basedir CDATA #IMPLIED>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private printTargetAttrs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 233
    const-string v0, "<!ATTLIST "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    const-string v0, "          id                      ID    #IMPLIED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string v0, "          name                    CDATA #REQUIRED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string v0, "          if                      CDATA #IMPLIED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v0, "          unless                  CDATA #IMPLIED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const-string v0, "          depends                 CDATA #IMPLIED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v0, "          extensionOf             CDATA #IMPLIED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    const-string v0, "          onMissingExtensionPoint CDATA #IMPLIED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const-string v0, "          description             CDATA #IMPLIED>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    return-void
.end method


# virtual methods
.method public printElementDecl(Ljava/io/PrintWriter;Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->visited:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 362
    :cond_a
    :goto_a
    return-void

    .line 256
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->visited:Ljava/util/Hashtable;

    const-string v1, ""

    invoke-virtual {v0, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :try_start_12
    invoke-static {p2, p4}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f7

    move-result-object v1

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<!ELEMENT "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    const-class v0, Lorg/apache/tools/ant/types/Reference;

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 273
    const-string v0, "EMPTY>%n<!ATTLIST %s%n          id ID #IMPLIED%n          refid IDREF #IMPLIED>%n"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p3, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a

    .line 280
    :cond_3f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-virtual {v1}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsCharacters()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 282
    const-string v0, "#PCDATA"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_4f
    const-class v0, Lorg/apache/tools/ant/TaskContainer;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 286
    const-string v0, "%tasks;"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_5c
    invoke-virtual {v1}, Lorg/apache/tools/ant/IntrospectionHelper;->getNestedElements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    const-string v0, " | "

    const-string v4, "("

    const-string v5, ")"

    invoke-static {v0, v4, v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 294
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 295
    const-string v0, "EMPTY"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_7c
    :goto_7c
    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    const-string v0, "<!ATTLIST %s%n          id ID #IMPLIED"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p3, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v1}, Lorg/apache/tools/ant/IntrospectionHelper;->getAttributes()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a2
    :goto_a2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a2

    .line 313
    const-string v6, "%n          %s "

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getAttributeType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 315
    const-class v6, Ljava/lang/Boolean;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d

    :cond_d7
    const-string v0, "%boolean;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :goto_e1
    const-string v0, "#IMPLIED"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 297
    :cond_e7
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_106

    const-string v0, "#PCDATA"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 299
    :cond_106
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7c

    .line 317
    :cond_10d
    const-class v6, Lorg/apache/tools/ant/types/Reference;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_11b

    .line 318
    const-string v0, "IDREF "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e1

    .line 319
    :cond_11b
    const-class v6, Lorg/apache/tools/ant/types/EnumeratedAttribute;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_16b

    .line 321
    :try_start_123
    const-class v6, Lorg/apache/tools/ant/types/EnumeratedAttribute;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_128
    .catch Ljava/lang/InstantiationException; {:try_start_123 .. :try_end_128} :catch_1fa
    .catch Ljava/lang/IllegalAccessException; {:try_start_123 .. :try_end_128} :catch_1fd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_123 .. :try_end_128} :catch_200
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_123 .. :try_end_128} :catch_203

    move-result-object v0

    const/4 v6, 0x0

    :try_start_12a
    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/EnumeratedAttribute;

    .line 323
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;->getValues()[Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_148

    array-length v6, v0

    if-eqz v6, :cond_148

    .line 325
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->areNmtokens([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_155

    .line 326
    :cond_148
    const-string v0, "CDATA "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_14d
    .catch Ljava/lang/InstantiationException; {:try_start_12a .. :try_end_14d} :catch_14e
    .catch Ljava/lang/IllegalAccessException; {:try_start_12a .. :try_end_14d} :catch_169
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12a .. :try_end_14d} :catch_206
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12a .. :try_end_14d} :catch_209

    goto :goto_e1

    .line 330
    :catch_14e
    move-exception v0

    .line 332
    :goto_14f
    const-string v0, "CDATA "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e1

    .line 328
    :cond_155
    :try_start_155
    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_167
    .catch Ljava/lang/InstantiationException; {:try_start_155 .. :try_end_167} :catch_14e
    .catch Ljava/lang/IllegalAccessException; {:try_start_155 .. :try_end_167} :catch_169
    .catch Ljava/lang/NoSuchMethodException; {:try_start_155 .. :try_end_167} :catch_206
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_155 .. :try_end_167} :catch_209

    goto/16 :goto_e1

    .line 330
    :catch_169
    move-exception v0

    goto :goto_14f

    .line 334
    :cond_16b
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1b2

    .line 336
    :try_start_173
    const-string v6, "values"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 338
    array-length v6, v0

    if-nez v6, :cond_198

    .line 339
    const-string v0, "CDATA "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_18e} :catch_190

    goto/16 :goto_e1

    .line 344
    :catch_190
    move-exception v0

    .line 345
    const-string v0, "CDATA "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e1

    .line 341
    :cond_198
    :try_start_198
    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v6, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter$$ExternalSyntheticLambda0;

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 342
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_1b0} :catch_190

    goto/16 :goto_e1

    .line 348
    :cond_1b2
    const-string v0, "CDATA "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e1

    .line 352
    :cond_1b9
    const-string v0, ">%n"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 355
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1cb
    :goto_1cb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    const-string v3, "#PCDATA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1cb

    .line 357
    const-string v3, "%tasks;"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1cb

    .line 358
    const-string v3, "%types;"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1cb

    .line 359
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getElementType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v0, v3}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->printElementDecl(Ljava/io/PrintWriter;Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1cb

    .line 261
    :catchall_1f7
    move-exception v0

    goto/16 :goto_a

    .line 330
    :catch_1fa
    move-exception v0

    goto/16 :goto_14f

    :catch_1fd
    move-exception v0

    goto/16 :goto_14f

    :catch_200
    move-exception v0

    goto/16 :goto_14f

    :catch_203
    move-exception v0

    goto/16 :goto_14f

    :catch_206
    move-exception v0

    goto/16 :goto_14f

    :catch_209
    move-exception v0

    goto/16 :goto_14f
.end method

.method public printHead(Ljava/io/PrintWriter;Lorg/apache/tools/ant/Project;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .line 177
    invoke-virtual {p3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->printHead(Ljava/io/PrintWriter;Ljava/util/Set;Ljava/util/Set;)V

    .line 178
    return-void
.end method

.method public printTail(Ljava/io/PrintWriter;)V
    .registers 3

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->visited:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 172
    return-void
.end method

.method public printTargetDecl(Ljava/io/PrintWriter;)V
    .registers 3

    .line 217
    const-string v0, "<!ELEMENT target ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string v0, "%tasks;"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string v0, "%types;"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    const-string v0, ")*>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    const-string v0, "target"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->printTargetAttrs(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 224
    const-string v0, "<!ELEMENT extension-point EMPTY>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    const-string v0, "extension-point"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->printTargetAttrs(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 227
    return-void
.end method
